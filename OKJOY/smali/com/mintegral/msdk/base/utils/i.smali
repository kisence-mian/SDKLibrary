.class public final Lcom/mintegral/msdk/base/utils/i;
.super Ljava/lang/Object;
.source "CommonSDCardUtil.java"


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field private static c:Z

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 27
    sput-boolean v2, Lcom/mintegral/msdk/base/utils/i;->a:Z

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/utils/i;->b:Ljava/lang/String;

    .line 29
    sput-boolean v2, Lcom/mintegral/msdk/base/utils/i;->c:Z

    .line 31
    sput v1, Lcom/mintegral/msdk/base/utils/i;->d:I

    .line 32
    sput v1, Lcom/mintegral/msdk/base/utils/i;->e:I

    return-void
.end method

.method public static a()I
    .registers 8

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 154
    const-string v0, "freeExternalSize"

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 156
    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2d

    sget v0, Lcom/mintegral/msdk/base/utils/i;->e:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4b

    .line 157
    :cond_2d
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->b()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/i;->e:I

    .line 158
    const-string v0, "freeExternalSize"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_4e

    .line 163
    :cond_4b
    :goto_4b
    sget v0, Lcom/mintegral/msdk/base/utils/i;->e:I

    return v0

    .line 160
    :catch_4e
    move-exception v0

    .line 161
    const-string v1, "CommonSDCardUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 115
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 119
    :cond_2d
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 36
    sget-boolean v0, Lcom/mintegral/msdk/base/utils/i;->c:Z

    if-nez v0, :cond_3a

    .line 38
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/i;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    if-nez v0, :cond_3b

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mintegral/msdk/base/utils/i;->a:Z

    .line 48
    :goto_35
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/i;->b(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_3f

    .line 57
    :goto_38
    sput-boolean v3, Lcom/mintegral/msdk/base/utils/i;->c:Z

    .line 59
    :cond_3a
    return-void

    .line 46
    :cond_3b
    const/4 v0, 0x0

    :try_start_3c
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/i;->a:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_3f

    goto :goto_35

    :catch_3f
    move-exception v0

    .line 51
    :try_start_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/utils/i;->b:Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/i;->b(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_61

    goto :goto_38

    :catch_61
    move-exception v0

    goto :goto_38
.end method

.method public static b()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 173
    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->d()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 175
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 176
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 178
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_21

    move-result v0

    int-to-long v0, v0

    .line 179
    mul-long/2addr v0, v4

    .line 185
    :cond_20
    :goto_20
    return-wide v0

    .line 181
    :catch_21
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/mintegral/msdk/base/common/b/d;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/base/common/b/d;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {v1}, Lcom/mintegral/msdk/base/common/b/e;->a(Lcom/mintegral/msdk/base/common/b/b;)V

    .line 67
    invoke-static {}, Lcom/mintegral/msdk/base/common/b/e;->a()Lcom/mintegral/msdk/base/common/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/b/e;->b()Z

    .line 68
    return-void
.end method

.method public static c()I
    .registers 6

    .prologue
    .line 234
    sget v0, Lcom/mintegral/msdk/base/utils/i;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 236
    :try_start_5
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/mintegral/msdk/base/utils/i;->d:I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1d

    .line 242
    :cond_1a
    :goto_1a
    sget v0, Lcom/mintegral/msdk/base/utils/i;->d:I

    return v0

    .line 237
    :catch_1d
    move-exception v0

    .line 238
    const-string v1, "CommonSDCardUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 71
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_88

    .line 76
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_88

    .line 79
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/i;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_80

    move-result-object v0

    .line 87
    :goto_12
    sget-boolean v2, Lcom/mintegral/msdk/base/utils/i;->a:Z

    if-eqz v2, :cond_6b

    .line 88
    if-nez v0, :cond_5c

    .line 89
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

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/i;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1219
    :cond_5c
    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x1e00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_8a

    const/4 v2, 0x1

    .line 93
    :goto_68
    if-nez v2, :cond_6b

    move-object v0, v1

    .line 98
    :cond_6b
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 99
    :cond_73
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 101
    :cond_7b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :catch_80
    move-exception v0

    .line 82
    const-string v2, "common-exception"

    const-string v3, "hasSDCard is failed"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_88
    move-object v0, v1

    goto :goto_12

    .line 1219
    :cond_8a
    const/4 v2, 0x0

    goto :goto_68
.end method

.method private static d()Z
    .registers 2

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_16

    .line 142
    const/4 v0, 0x1

    .line 147
    :goto_d
    return v0

    .line 145
    :catch_e
    move-exception v0

    const-string v0, ""

    const-string v1, "hasSDCard is failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static e()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 252
    invoke-static {}, Lcom/mintegral/msdk/base/utils/i;->d()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 254
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 255
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 257
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_21

    move-result v0

    int-to-long v0, v0

    .line 258
    mul-long/2addr v0, v4

    .line 265
    :cond_20
    :goto_20
    return-wide v0

    .line 261
    :catch_21
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method
