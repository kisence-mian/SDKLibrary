.class public Lmobi/oneway/export/h/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/b;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_10

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/b;->a([B)[B

    move-result-object v0

    :try_start_8
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_2a

    return-object v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ASCII is not supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_30

    :try_start_d
    invoke-static {v3, v1}, Lmobi/oneway/export/h/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_34

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    invoke-static {v1}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_21

    :catchall_34
    move-exception v0

    move-object v2, v3

    goto :goto_21
.end method

.method public static a(Ljava/io/File;Ljava/io/File;I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_30

    :try_start_d
    invoke-static {v3, v1, p2}, Lmobi/oneway/export/h/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_34

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    invoke-static {v1}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_21

    :catchall_34
    move-exception v0

    move-object v2, v3

    goto :goto_21
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmobi/oneway/export/h/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 4

    new-instance v0, Lmobi/oneway/export/h/d;

    invoke-direct {v0, p1, p2}, Lmobi/oneway/export/h/d;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {p0, v0}, Lmobi/oneway/export/h/b;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lmobi/oneway/export/h/d;->a()V

    return-void
.end method

.method public static a([B)[B
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmobi/oneway/export/h/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_d
    invoke-static {v1, v2, p1}, Lmobi/oneway/export/h/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1e
    .catchall {:try_start_d .. :try_end_10} :catchall_27

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_1e
    move-exception v0

    :try_start_1f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    new-array v3, v7, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_10

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/b;->b([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ASCII is not supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_10

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/b;->b([B)[B

    move-result-object v0

    :try_start_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_19

    return-object v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ASCII is not supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1f

    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_30

    :try_start_d
    invoke-static {v3, v1}, Lmobi/oneway/export/h/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_34

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v3, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_1f
    move-exception v0

    move-object v1, v2

    :goto_21
    new-array v3, v5, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v2, v1, v4

    invoke-static {v1}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_21

    :catchall_34
    move-exception v0

    move-object v2, v3

    goto :goto_21
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    new-instance v0, Lmobi/oneway/export/h/c;

    invoke-direct {v0, p0}, Lmobi/oneway/export/h/c;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lmobi/oneway/export/h/b;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b([B)[B
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_c
    invoke-static {v1, v2}, Lmobi/oneway/export/h/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_22
    .catchall {:try_start_c .. :try_end_f} :catchall_2b

    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v2, v0, v5

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_22
    move-exception v0

    :try_start_23
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    new-array v1, v6, [Ljava/io/Closeable;

    aput-object v2, v1, v5

    invoke-static {v1}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method private static c(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method
