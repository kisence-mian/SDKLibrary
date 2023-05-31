.class public Lcom/pgl/a/b/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "libso"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pgl/a/b/b;->a(Ljava/lang/String;)Z

    goto :goto_9
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v4, v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_f1
    .catchall {:try_start_1 .. :try_end_12} :catchall_d8

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_97

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v5, 0x0

    if-lez v0, :cond_90

    :goto_53
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Library entry not found:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_85} :catch_f5
    .catchall {:try_start_12 .. :try_end_85} :catchall_e5

    move-result-object v0

    invoke-static {v1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    :goto_8f
    return-object v0

    :cond_90
    :try_start_90
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_53

    :cond_97
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_9d} :catch_f5
    .catchall {:try_start_90 .. :try_end_9d} :catchall_e5

    move-result-object v3

    :try_start_9e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a3} :catch_f9
    .catchall {:try_start_9e .. :try_end_a3} :catchall_e8

    const/16 v0, 0x4000

    :try_start_a5
    new-array v0, v0, [B

    :goto_a7
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_c4

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_b1} :catch_b2
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_ea

    goto :goto_a7

    :catch_b2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_b6
    :try_start_b6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ed

    move-result-object v0

    invoke-static {v1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    goto :goto_8f

    :cond_c4
    :try_start_c4
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1ed

    invoke-static {v0, v5}, Lcom/pgl/a/b/b;->a(Ljava/lang/String;I)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_cd} :catch_b2
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_ea

    invoke-static {v2}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    move-object v0, v1

    goto :goto_8f

    :catchall_d8
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_db
    invoke-static {v1}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/pgl/a/b/b;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/pgl/a/b/b;->a(Ljava/util/zip/ZipFile;)V

    throw v0

    :catchall_e5
    move-exception v0

    move-object v3, v1

    goto :goto_db

    :catchall_e8
    move-exception v0

    goto :goto_db

    :catchall_ea
    move-exception v0

    move-object v1, v2

    goto :goto_db

    :catchall_ed
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_db

    :catch_f1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_b6

    :catch_f5
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto :goto_b6

    :catch_f9
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_b6
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/pgl/a/b/e;

    monitor-enter v2

    :try_start_5
    sget-object v3, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_45

    move-result v3

    if-eqz v3, :cond_f

    :goto_d
    monitor-exit v2

    return v0

    :cond_f
    :try_start_f
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v3, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_17} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_17} :catch_42
    .catchall {:try_start_f .. :try_end_17} :catchall_45

    goto :goto_d

    :catch_18
    move-exception v3

    :try_start_19
    invoke-static {p0, p1}, Lcom/pgl/a/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_21

    move v0, v1

    goto :goto_d

    :cond_21
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2a
    invoke-static {p0, p1, v3}, Lcom/pgl/a/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_45

    move-result-object v4

    if-eqz v4, :cond_32

    move v0, v1

    goto :goto_d

    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v3, Lcom/pgl/a/b/e;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    goto :goto_d

    :catch_3f
    move-exception v0

    move v0, v1

    goto :goto_d

    :catch_42
    move-exception v0

    move v0, v1

    goto :goto_d

    :catchall_45
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/pgl/a/b/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
