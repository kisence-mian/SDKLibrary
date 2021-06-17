.class public final Lcom/tapjoy/internal/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 64
    nop

    .line 2037
    :try_start_1
    sget-object v0, Lcom/tapjoy/internal/af;->c:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/tapjoy/internal/bb;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_8

    .line 64
    return-object p0

    .line 65
    :catch_8
    move-exception p0

    .line 67
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    nop

    .line 1054
    :try_start_6
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1223
    invoke-static {p0}, Lcom/tapjoy/internal/ka;->a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_18

    .line 43
    nop

    .line 45
    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 43
    return-object p0

    .line 45
    :catchall_18
    move-exception p0

    invoke-static {v0}, Lcom/tapjoy/internal/kb;->a(Ljava/io/Closeable;)V

    .line 46
    throw p0
.end method
