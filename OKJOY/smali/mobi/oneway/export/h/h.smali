.class public Lmobi/oneway/export/h/h;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .registers 6

    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/File;)J
    .registers 3

    invoke-static {p0}, Lmobi/oneway/export/h/h;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->a(J)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_8

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, p2}, Lmobi/oneway/export/h/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_17

    move-result-object v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_17
    move-exception v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/h/h;->h(Ljava/io/File;)[B

    move-result-object v1

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_10
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, p1}, Lmobi/oneway/export/h/q;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_31

    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_16

    :catchall_20
    move-exception v0

    :goto_21
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_29
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_31
    move-exception v0

    move-object v1, v2

    goto :goto_21
.end method

.method public static a()Z
    .registers 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmobi/oneway/export/h/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_29

    :try_start_1b
    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    new-array v2, v0, [Ljava/io/Closeable;

    aput-object v3, v2, v1

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_29
    move-exception v2

    move-object v3, v4

    :goto_2b
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v2

    :catchall_33
    move-exception v2

    goto :goto_2b
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static b(J)J
    .registers 6

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    long-to-double v0, p0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/io/File;)J
    .registers 3

    invoke-static {p0}, Lmobi/oneway/export/h/h;->f(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->a(J)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    move-result-wide v0

    goto :goto_8

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/h/h;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lmobi/oneway/export/h/q;->b(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_27

    move-result-object v0

    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_1d
    move-exception v0

    move-object v1, v2

    :goto_1f
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_27
    move-exception v0

    goto :goto_1f
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/oneway/export/h/h;->a(Ljava/io/File;[B)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmobi/oneway/export/h/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_21
    :goto_21
    move-object v1, v0

    goto :goto_3

    :cond_23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_29
    move-object v0, v1

    goto :goto_21
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmobi/oneway/export/h/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b

    :try_start_9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_27

    :try_start_e
    invoke-static {v3, v1}, Lmobi/oneway/export/h/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2b

    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v3, v0, v5

    aput-object v1, v0, v4

    invoke-static {v0}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    return v4

    :catchall_1b
    move-exception v0

    move-object v1, v2

    :goto_1d
    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    aput-object v1, v3, v4

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_27
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1d

    :catchall_2b
    move-exception v0

    move-object v2, v3

    goto :goto_1d
.end method

.method public static e(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/oneway/export/h/h;->j(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static f(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static g(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lmobi/oneway/export/h/h;->e(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static h(Ljava/io/File;)[B
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2b

    :try_start_11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3a

    :try_start_1a
    invoke-static {v2, v1}, Lmobi/oneway/export/h/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_40

    move-result-object v0

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2b
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_30
    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v3}, Lmobi/oneway/export/h/j;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_3a
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_30

    :catchall_40
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_30
.end method

.method public static i(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/oneway/export/h/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/io/File;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v2

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    move v2, v0

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1d

    :try_start_13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_18

    move-result v2

    goto :goto_4

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_1d
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    :cond_26
    :goto_26
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3b

    array-length v0, v4

    if-nez v0, :cond_49

    :cond_3b
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_26

    move v1, v2

    goto :goto_26

    :cond_49
    array-length v5, v4

    move v0, v1

    move v1, v2

    :goto_4c
    if-ge v1, v5, :cond_64

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5d

    move v0, v2

    :cond_5d
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_60
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_64
    move v1, v0

    goto :goto_26

    :cond_66
    move v2, v1

    goto :goto_4
.end method

.method public static k(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static l(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/oneway/export/h/h;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
