.class public Lcom/pgl/a/b/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libso"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pgl/a/b/b;->a(Ljava/lang/String;)Z

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 10

    const-string v0, "/"

    const-string v1, "lib/"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v3, v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_ce

    :try_start_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v4, 0x0

    if-nez p0, :cond_94

    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/16 v5, 0x2d

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-lez p0, :cond_52

    goto :goto_58

    :cond_52
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_58
    invoke-virtual {v5, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_93

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Library entry not found:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_89
    .catchall {:try_start_16 .. :try_end_89} :catchall_cb

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    :goto_8f
    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    return-object p0

    :cond_93
    move-object p0, p1

    :cond_94
    :try_start_94
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_cb

    :try_start_9b
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_c6

    const/16 v0, 0x4000

    :try_start_a2
    new-array v0, v0, [B

    :goto_a4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_ae

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a4

    :cond_ae
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1ed

    invoke-static {p2, v0}, Lcom/pgl/a/b/b;->a(Ljava/lang/String;I)V
    :try_end_b7
    .catchall {:try_start_a2 .. :try_end_b7} :catchall_c1

    invoke-static {p1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_c1
    move-exception p2

    move-object v2, p1

    move-object p1, p0

    move-object p0, p2

    goto :goto_d1

    :catchall_c6
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_d1

    :catchall_cb
    move-exception p0

    move-object p1, v2

    goto :goto_d1

    :catchall_ce
    move-exception p0

    move-object p1, v2

    move-object v3, p1

    :goto_d1
    :try_start_d1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_dc

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    goto :goto_8f

    :catchall_dc
    move-exception p0

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/pgl/a/b/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_46

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    monitor-exit v0

    return v2

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v3, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_17} :catch_1b
    .catchall {:try_start_f .. :try_end_17} :catchall_18

    goto :goto_41

    :catchall_18
    move-exception p0

    monitor-exit v0

    return v1

    :catch_1b
    move-exception v3

    :try_start_1c
    invoke-static {p0, p1}, Lcom/pgl/a/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_46

    if-nez v3, :cond_24

    monitor-exit v0

    return v1

    :cond_24
    :try_start_24
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2d
    invoke-static {p0, p1, v3}, Lcom/pgl/a/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_46

    if-eqz p0, :cond_35

    monitor-exit v0

    return v1

    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object p0, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_43

    :goto_41
    monitor-exit v0

    return v2

    :catchall_43
    move-exception p0

    monitor-exit v0

    return v1

    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/pgl/a/b/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
