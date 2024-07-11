.class public final Lcom/kwai/sodler/lib/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .registers 7

    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const v3, 0x19000

    new-array v3, v3, [B

    :goto_1b
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_27

    invoke-virtual {p0, v3, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1b

    :cond_27
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    :goto_2b
    array-length v1, p0

    if-ge v6, v1, :cond_45

    aget-byte v1, p0, v6

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_49} :catch_4a

    return-object p0

    :catch_4a
    move-exception p0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {p2}, Lcom/kwai/sodler/lib/c/a;->d(Ljava/io/File;)V

    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_4e
    .catchall {:try_start_a .. :try_end_12} :catchall_4b

    :try_start_12
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_46
    .catchall {:try_start_12 .. :try_end_17} :catchall_41

    :try_start_17
    move-object p2, p1

    check-cast p2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_3c
    .catchall {:try_start_17 .. :try_end_23} :catchall_37

    const/16 p1, 0x4000

    :try_start_25
    new-array p1, p1, [B

    invoke-static {p0, v0, p1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_46
    .catchall {:try_start_25 .. :try_end_30} :catchall_41

    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    goto :goto_5b

    :catchall_37
    move-exception p2

    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_5d

    :catch_3c
    move-exception p2

    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_50

    :catchall_41
    move-exception p1

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_5d

    :catch_46
    move-exception p1

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_50

    :catchall_4b
    move-exception p1

    move-object p0, v0

    goto :goto_5d

    :catch_4e
    move-exception p1

    move-object p0, v0

    :goto_50
    :try_start_50
    const-string p2, "plugin.files"

    invoke-static {p2, p1}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5c

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    :goto_5b
    return-void

    :catchall_5c
    move-exception p1

    :goto_5d
    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    throw p1

    :cond_64
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Asset path is empty."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_75

    if-eqz p1, :cond_6d

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->d(Ljava/io/File;)V

    const/4 v0, 0x0

    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_4f
    .catchall {:try_start_e .. :try_end_13} :catchall_4c

    :try_start_13
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_48
    .catchall {:try_start_13 .. :try_end_18} :catchall_44

    :try_start_18
    move-object p1, p0

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_3e
    .catchall {:try_start_18 .. :try_end_24} :catchall_38

    const/16 p0, 0x4000

    :try_start_26
    new-array p0, p0, [B

    invoke-static {v1, v0, p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_31} :catch_48
    .catchall {:try_start_26 .. :try_end_31} :catchall_44

    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    goto :goto_5c

    :catchall_38
    move-exception p1

    move-object v0, v1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_5e

    :catch_3e
    move-exception p1

    move-object v0, v1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_51

    :catchall_44
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_5e

    :catch_48
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_51

    :catchall_4c
    move-exception p0

    move-object p1, v0

    goto :goto_5e

    :catch_4f
    move-exception p0

    move-object p1, v0

    :goto_51
    :try_start_51
    const-string v1, "plugin.files"

    invoke-static {v1, p0}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_5d

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    :goto_5c
    return-void

    :catchall_5d
    move-exception p0

    :goto_5e
    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    throw p0

    :cond_65
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Source file not found."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Dest file is null."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Source file is null."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_f

    :try_start_7
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_1e

    :catchall_d
    move-exception p0

    goto :goto_1e

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1e

    instance-of v0, p0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_1e

    :try_start_19
    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_d

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->c(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeDeleteFile, try to delete path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plugin.files"

    invoke-static {v1, v0}, Lcom/kwai/sodler/lib/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file, try to delete when exit. path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwai/sodler/lib/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    :cond_49
    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static c(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2d

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_10
    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->b(Ljava/io/File;)Z

    goto :goto_2b

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2b

    array-length v2, v1

    :goto_21
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/kwai/sodler/lib/c/a;->c(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public static d(Ljava/io/File;)V
    .registers 3

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1f

    return-void

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Create file fail, file already exists."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File is null."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/io/File;)V
    .registers 4

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-static {p0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    goto :goto_39

    :cond_19
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete existing file, file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :goto_39
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    :cond_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create dir, dir = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Dir is null."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_26

    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_21
    .catchall {:try_start_a .. :try_end_f} :catchall_1c

    :try_start_f
    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_1a
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    return-object p0

    :catchall_17
    move-exception p0

    move-object v0, v1

    goto :goto_1d

    :catch_1a
    move-exception p0

    goto :goto_23

    :catchall_1c
    move-exception p0

    :goto_1d
    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    throw p0

    :catch_21
    move-exception p0

    move-object v1, v0

    :goto_23
    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-object v0
.end method
