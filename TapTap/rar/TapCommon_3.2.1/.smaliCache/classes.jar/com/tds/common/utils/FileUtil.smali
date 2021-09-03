.class public Lcom/tds/common/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile([BLjava/lang/String;)V
    .registers 5
    .param p0, "fileByte"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "file":Ljava/io/File;
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v2, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 44
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 48
    goto :goto_1d

    .line 46
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    :catch_19
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1d
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 62
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public static returnFileByte(Ljava/lang/String;)[B
    .registers 5
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 25
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method
