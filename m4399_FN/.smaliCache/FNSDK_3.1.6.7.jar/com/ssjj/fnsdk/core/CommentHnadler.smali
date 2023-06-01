.class public Lcom/ssjj/fnsdk/core/CommentHnadler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanComment(Ljava/io/File;Ljava/io/File;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_15
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1d

    goto :goto_39

    :cond_1d
    int-to-long v8, v7

    add-long/2addr v5, v8

    const/4 v8, 0x0

    cmp-long v9, p2, v3

    if-eqz v9, :cond_40

    sub-long v9, v0, p2

    cmp-long v11, v5, v9

    if-lez v11, :cond_40

    sub-long/2addr v5, v9

    long-to-int p2, v5

    sub-int/2addr v7, p2

    const/4 p2, 0x2

    sub-int/2addr v7, p2

    invoke-virtual {p0, p1, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->short2Byte(S)[B

    move-result-object p1

    invoke-virtual {p0, p1, v8, p2}, Ljava/io/OutputStream;->write([BII)V

    :goto_39
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_40
    invoke-virtual {p0, p1, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15
.end method

.method public static getCommentLength(Ljava/io/File;)J
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1c
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_17
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v2

    :catchall_14
    move-exception p0

    move-object v0, v1

    goto :goto_26

    :catch_17
    move-exception p0

    move-object v0, v1

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto :goto_26

    :catch_1c
    move-exception p0

    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1a

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :goto_26
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static getCommentLength(Ljava/nio/channels/FileChannel;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5a

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    int-to-long v6, v5

    cmp-long v8, v6, v2

    if-gtz v8, :cond_52

    sub-long v6, v0, v6

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x6054b50

    if-ne v8, v9, :cond_4f

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const-wide/16 v9, 0x14

    add-long/2addr v6, v9

    invoke-virtual {p0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    if-ne v6, v5, :cond_4f

    int-to-long v0, v6

    return-wide v0

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_52
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ZIP End of Central Directory (EOCD) record not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "APK too small for ZIP End of Central Directory (EOCD) record"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readComment(Ljava/io/File;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2f

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2c

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_1a

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1a
    long-to-int p0, v2

    :try_start_1b
    new-array p0, p0, [B

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_2c
    move-exception p0

    move-object v0, v1

    goto :goto_30

    :catchall_2f
    move-exception p0

    :goto_30
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static updateComment(Ljava/io/File;[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rw"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_83

    array-length v1, p1

    int-to-long v7, v1

    cmp-long v1, v3, v7

    if-lez v1, :cond_83

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Old cl is longer than new one, delete old comment"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "temp_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_5d
    invoke-static {p0, v8, v3, v4}, Lcom/ssjj/fnsdk/core/CommentHnadler;->cleanComment(Ljava/io/File;Ljava/io/File;J)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-virtual {v8, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-wide v3, v5

    goto :goto_84

    :cond_73
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Rename apk file fail"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Delete apk file fail!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_83
    .catchall {:try_start_8 .. :try_end_83} :catchall_9f

    :cond_83
    move-object v1, v2

    :goto_84
    :try_start_84
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v2, 0x2

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->short2Byte(S)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_9b
    .catchall {:try_start_84 .. :try_end_9b} :catchall_a2

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_9f
    move-exception p0

    move-object v1, v2

    goto :goto_a3

    :catchall_a2
    move-exception p0

    :goto_a3
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
