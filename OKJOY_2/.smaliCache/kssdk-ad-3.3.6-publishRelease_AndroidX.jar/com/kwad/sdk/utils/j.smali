.class public Lcom/kwad/sdk/utils/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/j;->b(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p0, p0

    return p0
.end method

.method public static a(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .registers 7

    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static a(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public static a(Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_28

    return-object v1

    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_28

    return-object v1

    :cond_28
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1a

    if-eqz p0, :cond_16

    :try_start_7
    invoke-static {p1}, Lcom/kwad/sdk/utils/j;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    invoke-static {p0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_13
    move-exception p1

    move-object v0, p0

    goto :goto_1b

    :cond_16
    invoke-static {p0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1a
    move-exception p1

    :goto_1b
    invoke-static {v0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 1

    if-nez p0, :cond_6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 4

    :try_start_0
    invoke-static {p0, p3}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_10

    if-eqz p0, :cond_c

    :try_start_6
    invoke-static {p1, p0, p2}, Lcom/kwad/sdk/utils/j;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception p1

    goto :goto_12

    :cond_c
    :goto_c
    invoke-static {p0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_10
    move-exception p1

    const/4 p0, 0x0

    :goto_12
    invoke-static {p0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .registers 4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lcom/kwad/sdk/utils/j;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3

    if-eqz p1, :cond_f

    if-eqz p0, :cond_f

    invoke-static {p2}, Lcom/kwad/sdk/utils/j;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_f
    return-void
.end method

.method public static b(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 3

    const/16 v0, 0x1000

    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/utils/j;->a(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide p0

    return-wide p0
.end method
