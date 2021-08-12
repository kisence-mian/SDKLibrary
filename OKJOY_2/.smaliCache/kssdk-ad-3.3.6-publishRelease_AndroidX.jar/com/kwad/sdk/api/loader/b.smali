.class Lcom/kwad/sdk/api/loader/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1f

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1f

    array-length v0, p0

    if-lez v0, :cond_1f

    array-length v0, p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_1f

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1f
    :goto_1f
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x2000

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

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/kwad/sdk/api/loader/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0, p2}, Lcom/kwad/sdk/api/loader/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    invoke-static {p0, p2}, Lcom/kwad/sdk/api/loader/g;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/kwad/sdk/api/loader/g;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/kwad/sdk/api/loader/g;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_18
    invoke-static {p1, v1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/api/loader/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, v2, p2}, Lcom/kwad/sdk/api/loader/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kwad/sdk/api/loader/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/api/loader/j;->c()Lcom/kwad/sdk/api/core/IKsAdSDK;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_2c

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0

    :catch_2c
    move-exception p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/File;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/kwad/sdk/api/loader/s;->a()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "lib/arm64-v8a/"

    goto :goto_b

    :cond_9
    const-string p0, "lib/armeabi-v7a/"

    :goto_b
    const/4 v0, 0x0

    :try_start_c
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_5f

    :try_start_11
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_15

    :cond_28
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/kwad/sdk/api/loader/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_5c

    goto :goto_15

    :cond_56
    :try_start_56
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception p0

    :goto_5b
    return-void

    :catchall_5c
    move-exception p0

    move-object v0, v1

    goto :goto_60

    :catchall_5f
    move-exception p0

    :goto_60
    if-eqz v0, :cond_67

    :try_start_62
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception p1

    :cond_67
    :goto_67
    throw p0
.end method

.method private static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_12

    if-eqz p0, :cond_a

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception p0

    :cond_a
    :goto_a
    if-eqz p1, :cond_11

    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception p0

    :cond_11
    :goto_11
    return-void

    :catchall_12
    move-exception v0

    if-eqz p0, :cond_1a

    :try_start_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception p0

    :cond_1a
    :goto_1a
    if-eqz p1, :cond_21

    :try_start_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception p0

    :cond_21
    :goto_21
    throw v0
.end method
