.class public Lcom/tapsdk/moment/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static final ERR_MSG_STREAM_NULL:Ljava/lang/String; = "Stream must not be null."


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 27
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "length":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_11

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 30
    :cond_11
    return-void
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 37
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v3, 0x800

    .line 41
    .local v3, "bufferSize":I
    const/16 v4, 0x800

    new-array v4, v4, [C

    .line 43
    .local v4, "buffer":[C
    :goto_19
    invoke-virtual {v1, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    move v6, v5

    .local v6, "n":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_26

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 46
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_31

    .line 48
    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v1}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    return-object v5

    .line 48
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "bufferSize":I
    .end local v4    # "buffer":[C
    .end local v6    # "n":I
    :catchall_31
    move-exception v2

    invoke-static {v0}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 49
    invoke-static {v1}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 50
    throw v2
.end method
