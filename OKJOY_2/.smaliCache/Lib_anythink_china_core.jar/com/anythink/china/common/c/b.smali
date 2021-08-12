.class public final Lcom/anythink/china/common/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_myoffer_download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    .line 71
    nop

    .line 72
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

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    goto :goto_2f

    .line 76
    :cond_2e
    const/4 p0, 0x0

    .line 80
    :goto_2f
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 6

    .line 32
    invoke-static {}, Lcom/anythink/china/common/c/b;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 33
    return-object v1

    .line 36
    :cond_8
    nop

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2f

    .line 40
    :try_start_f
    invoke-static {}, Lcom/anythink/china/common/c/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_2a

    .line 43
    invoke-static {v0}, Lcom/anythink/china/common/c/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2c

    .line 45
    if-eqz v0, :cond_2b

    .line 46
    :try_start_1f
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/anythink/china/common/c/b;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_28

    move-object v0, v2

    goto :goto_2b

    .line 49
    :catchall_28
    move-exception v2

    goto :goto_30

    .line 42
    :cond_2a
    move-object v0, v1

    .line 50
    :cond_2b
    :goto_2b
    goto :goto_30

    .line 49
    :catchall_2c
    move-exception v0

    move-object v0, v1

    goto :goto_30

    .line 38
    :cond_2f
    move-object v0, v1

    .line 53
    :goto_30
    if-nez v0, :cond_87

    invoke-static {}, Lcom/anythink/china/common/c/b;->g()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 54
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

    sget-object v2, Lcom/anythink/china/common/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/anythink/china/common/c/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/anythink/china/common/c/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1084
    invoke-static {}, Lcom/anythink/china/common/c/b;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x6400000

    cmp-long v2, v2, v4

    if-lez v2, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    :cond_81
    const/4 v2, 0x0

    .line 58
    :goto_82
    if-nez v2, :cond_85

    .line 59
    goto :goto_88

    .line 58
    :cond_85
    move-object v1, v0

    goto :goto_88

    .line 62
    :cond_87
    move-object v1, v0

    :goto_88
    if-nez v1, :cond_b4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/china/common/c/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/anythink/china/common/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    :cond_b4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 137
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_22

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2131
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 131
    invoke-static {p0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Z
    .registers 4

    .line 84
    invoke-static {}, Lcom/anythink/china/common/c/b;->c()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static c()J
    .registers 6

    .line 1155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2e

    .line 94
    :try_start_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 95
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 97
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_29
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_24} :catch_27

    int-to-long v0, v0

    .line 98
    mul-long/2addr v0, v4

    return-wide v0

    .line 102
    :catch_27
    move-exception v0

    goto :goto_2e

    .line 100
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    return-wide v1

    .line 105
    :cond_2e
    :goto_2e
    return-wide v1
.end method

.method private static d()J
    .registers 6

    .line 114
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 115
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 117
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1d
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_18} :catch_1b

    int-to-long v0, v0

    .line 118
    mul-long/2addr v0, v4

    return-wide v0

    .line 122
    :catch_1b
    move-exception v2

    .line 124
    return-wide v0

    .line 120
    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    return-wide v0
.end method

.method private static e()Landroid/content/Context;
    .registers 1

    .line 147
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 149
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method private static f()Z
    .registers 2

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .registers 4

    .line 159
    nop

    .line 160
    invoke-static {}, Lcom/anythink/china/common/c/b;->e()Landroid/content/Context;

    move-result-object v0

    .line 161
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 162
    return v1

    .line 165
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 166
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_1c

    .line 168
    if-nez v0, :cond_1b

    const/4 v0, 0x1

    move v1, v0

    .line 171
    :cond_1b
    goto :goto_20

    .line 170
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :goto_20
    return v1
.end method
