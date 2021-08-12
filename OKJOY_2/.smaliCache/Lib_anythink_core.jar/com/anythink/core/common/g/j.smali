.class public final Lcom/anythink/core/common/g/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 7

    .line 22
    nop

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_18

    .line 26
    :try_start_8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_15

    .line 29
    invoke-static {v0}, Lcom/anythink/core/common/g/j;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_17

    .line 31
    if-eqz v0, :cond_16

    .line 32
    return-object v0

    .line 28
    :cond_15
    move-object v0, v1

    .line 36
    :cond_16
    goto :goto_19

    .line 35
    :catchall_17
    move-exception v0

    .line 39
    :cond_18
    move-object v0, v1

    :goto_19
    if-nez v0, :cond_60

    invoke-static {p0}, Lcom/anythink/core/common/g/j;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/anythink/core/common/g/j;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1085
    invoke-static {}, Lcom/anythink/core/common/g/j;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x1e00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    const/4 v2, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    .line 43
    :goto_5b
    if-nez v2, :cond_5e

    .line 44
    goto :goto_61

    .line 43
    :cond_5e
    move-object v1, v0

    goto :goto_61

    .line 47
    :cond_60
    move-object v1, v0

    :goto_61
    if-nez v1, :cond_74

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    :cond_74
    return-object v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 56
    nop

    .line 57
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 61
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    goto :goto_2f

    .line 61
    :cond_2e
    const/4 p0, 0x0

    .line 65
    :goto_2f
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 114
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()Z
    .registers 4

    .line 85
    invoke-static {}, Lcom/anythink/core/common/g/j;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static b()J
    .registers 6

    .line 1110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2e

    .line 95
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 96
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 98
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_29
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_24} :catch_27

    int-to-long v0, v0

    .line 99
    mul-long/2addr v0, v4

    return-wide v0

    .line 103
    :catch_27
    move-exception v0

    goto :goto_2e

    .line 101
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    return-wide v1

    .line 106
    :cond_2e
    :goto_2e
    return-wide v1
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .line 69
    nop

    .line 70
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 71
    return v0

    .line 74
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_18

    .line 77
    if-nez p0, :cond_17

    const/4 p0, 0x1

    move v0, p0

    .line 80
    :cond_17
    goto :goto_1c

    .line 79
    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_1c
    return v0
.end method

.method private static c()Z
    .registers 2

    .line 110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
