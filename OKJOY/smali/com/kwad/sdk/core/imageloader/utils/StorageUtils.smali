.class public final Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final INDIVIDUAL_DIR_NAME:Ljava/lang/String; = "ksad-images"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_63
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_4} :catch_67

    move-result-object v1

    :goto_5
    if-eqz p1, :cond_19

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :cond_19
    if-eqz p1, :cond_2d

    :try_start_1b
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_69

    move-result-object v0

    :cond_2d
    :goto_2d
    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_33
    if-nez v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "Can\'t define system cache directory! \'%s\' will be used."

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_62
    return-object v0

    :catch_63
    move-exception v1

    :goto_64
    const-string v1, ""

    goto :goto_5

    :catch_67
    move-exception v1

    goto :goto_64

    :catch_69
    move-exception v1

    goto :goto_2d
.end method

.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_38

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Unable to create external cache directory"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    :try_start_38
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_37

    :catch_43
    move-exception v1

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Can\'t create \".nomedia\" file in application external cache directory"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_37
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const-string v0, "ksad-images"

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_16

    :goto_15
    return-object v0

    :cond_16
    move-object v0, v1

    goto :goto_15
.end method

.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1c
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1e
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    :cond_30
    return-object v0
.end method

.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
