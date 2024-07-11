.class public Lcom/bytedance/tea/crash/g/n;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .registers 6

    .line 140
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 141
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_14

    .line 142
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    .line 144
    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 145
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_20

    int-to-long v3, p0

    .line 146
    mul-long/2addr v3, v1

    return-wide v3

    .line 147
    :catchall_20
    move-exception p0

    .line 148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_5
    const-string v1, "inner_app_used"

    invoke-static {p0}, Lcom/bytedance/tea/crash/g/n;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    const-string v1, "inner_free"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    const-string v1, "inner_total"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "sdcard_app_used"

    invoke-static {p0}, Lcom/bytedance/tea/crash/g/n;->c(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    const-string p0, "sdcard_free"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->d()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string p0, "sdcard_total"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->e()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 52
    goto :goto_3d

    .line 51
    :catch_3c
    move-exception p0

    .line 53
    :goto_3d
    return-object v0
.end method

.method public static a()Z
    .registers 2

    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()J
    .registers 2

    .line 67
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->b(Ljava/io/File;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 68
    :catch_9
    move-exception v0

    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)J
    .registers 3

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 60
    :catch_d
    move-exception p0

    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static b(Ljava/io/File;)J
    .registers 6

    .line 154
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_14

    .line 156
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 159
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_20

    int-to-long v3, p0

    .line 160
    mul-long/2addr v3, v1

    return-wide v3

    .line 161
    :catchall_20
    move-exception p0

    .line 162
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static c()J
    .registers 2

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->a(Ljava/io/File;)J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-wide v0

    .line 76
    :catch_9
    move-exception v0

    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)J
    .registers 3

    .line 83
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 85
    if-eqz p0, :cond_16

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    return-wide v0

    .line 90
    :cond_16
    goto :goto_18

    .line 89
    :catch_17
    move-exception p0

    .line 91
    :goto_18
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Ljava/io/File;)J
    .registers 7

    .line 167
    nop

    .line 168
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 169
    const-wide/16 v0, 0x0

    if-nez p0, :cond_a

    .line 170
    return-wide v0

    .line 172
    :cond_a
    array-length v2, p0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_24

    aget-object v4, p0, v3

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 174
    invoke-static {v4}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_21

    .line 176
    :cond_1c
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 172
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 179
    :cond_24
    return-wide v0
.end method

.method private static d()J
    .registers 2

    .line 102
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return-wide v0

    .line 107
    :cond_f
    goto :goto_11

    .line 106
    :catch_10
    move-exception v0

    .line 108
    :goto_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static e()J
    .registers 2

    .line 119
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return-wide v0

    .line 124
    :cond_f
    goto :goto_11

    .line 123
    :catch_10
    move-exception v0

    .line 125
    :goto_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method
