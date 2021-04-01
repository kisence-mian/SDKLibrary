.class public Lcom/bytedance/tea/crash/g/n;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .registers 5

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_14

    .line 142
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    .line 148
    :goto_13
    return-wide v0

    .line 144
    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 145
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_20

    move-result v0

    int-to-long v0, v0

    .line 146
    mul-long/2addr v0, v2

    goto :goto_13

    .line 147
    :catch_20
    move-exception v0

    .line 148
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .prologue
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
    const-string v1, "sdcard_free"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 50
    const-string v1, "sdcard_total"

    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 53
    :goto_3b
    return-object v0

    .line 51
    :catch_3c
    move-exception v1

    goto :goto_3b
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 129
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()J
    .registers 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->b(Ljava/io/File;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 69
    :goto_8
    return-wide v0

    .line 68
    :catch_9
    move-exception v0

    .line 69
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method private static b(Landroid/content/Context;)J
    .registers 3

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v0

    .line 62
    :goto_c
    return-wide v0

    .line 60
    :catch_d
    move-exception v0

    .line 62
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public static b(Ljava/io/File;)J
    .registers 5

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_14

    .line 156
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    .line 162
    :goto_13
    return-wide v0

    .line 158
    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 159
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_20

    move-result v0

    int-to-long v0, v0

    .line 160
    mul-long/2addr v0, v2

    goto :goto_13

    .line 161
    :catch_20
    move-exception v0

    .line 162
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method private static c()J
    .registers 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->a(Ljava/io/File;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    .line 77
    :goto_8
    return-wide v0

    .line 76
    :catch_9
    move-exception v0

    .line 77
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method private static c(Landroid/content/Context;)J
    .registers 3

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_17

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-wide v0

    .line 91
    :goto_15
    return-wide v0

    .line 89
    :catch_16
    move-exception v0

    .line 91
    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_15
.end method

.method public static c(Ljava/io/File;)J
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 169
    if-nez v3, :cond_9

    .line 179
    :cond_8
    return-wide v0

    .line 172
    :cond_9
    array-length v4, v3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 174
    invoke-static {v5}, Lcom/bytedance/tea/crash/g/n;->c(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 172
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 176
    :cond_1d
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1a
.end method

.method private static d()J
    .registers 2

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 108
    :goto_e
    return-wide v0

    .line 106
    :catch_f
    move-exception v0

    .line 108
    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method private static e()J
    .registers 2

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/g/n;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 125
    :goto_e
    return-wide v0

    .line 123
    :catch_f
    move-exception v0

    .line 125
    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method
