.class public Lcom/bytedance/sdk/openadsdk/utils/q;
.super Ljava/lang/Object;
.source "InstallAppUtils.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .registers 4

    .line 195
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 198
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/io/File;JI)J

    move-result-wide v0

    return-wide v0

    .line 196
    :cond_13
    :goto_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static a(Ljava/io/File;JI)J
    .registers 8

    .line 205
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_36

    .line 208
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 209
    add-int/lit8 p3, p3, 0x1

    .line 210
    const/16 v0, 0x32

    if-lt p3, v0, :cond_18

    .line 211
    return-wide p1

    .line 213
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 215
    if-eqz p0, :cond_35

    .line 216
    array-length v0, p0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_35

    aget-object v2, p0, v1

    .line 217
    invoke-static {v2, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/io/File;JI)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 221
    :cond_35
    return-wide p1

    .line 206
    :cond_36
    :goto_36
    return-wide p1
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 144
    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_37

    .line 147
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 149
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 151
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 154
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :cond_37
    :goto_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_36

    .line 51
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->d()Z

    move-result v0

    if-nez v0, :cond_21

    .line 52
    return-object v1

    .line 55
    :cond_21
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 56
    return-object v1

    .line 58
    :cond_28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/q$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/q$1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 65
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 47
    :cond_36
    :goto_36
    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 116
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 117
    const-string v0, "install_app_string"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 9

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 164
    return v1

    .line 166
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 167
    return v1

    .line 169
    :cond_1d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-lt v0, v2, :cond_31

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_31

    .line 171
    return v3

    .line 174
    :cond_31
    :try_start_31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_58

    .line 177
    return v1

    .line 179
    :cond_58
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 181
    if-eqz p0, :cond_71

    .line 182
    iget-wide v6, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6c} :catch_72

    cmp-long p0, v6, v4

    if-gez p0, :cond_71

    .line 184
    return v3

    .line 187
    :cond_71
    return v1

    .line 188
    :catch_72
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    return v3
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 123
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 124
    const-string v0, "install_app_incremental_string"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "apptime"

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    .line 126
    return-void
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4

    .line 77
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 78
    const-string v1, "install_app_incremental_string"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 80
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 81
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    return-object v1

    .line 85
    :cond_1b
    goto :goto_24

    .line 83
    :catchall_1c
    move-exception p0

    .line 84
    const-string v1, "InstallAppUtils"

    const-string v2, "getCacheIncrementalApps error: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_24
    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5

    .line 97
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3a

    .line 101
    :cond_11
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v1

    .line 102
    const-string v2, "install_app_string"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 108
    :cond_32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    .line 111
    goto :goto_43

    .line 99
    :cond_3a
    :goto_3a
    return-void

    .line 109
    :catch_3b
    move-exception p0

    .line 110
    const-string v0, "InstallAppUtils"

    const-string v1, "loadIncrementInstallApps error: "

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :goto_43
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 6

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 130
    const-string v0, "apptime"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 131
    cmp-long p0, v3, v1

    if-eqz p0, :cond_23

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0x2932e00

    cmp-long p0, v0, v2

    if-lez p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    .line 131
    :goto_24
    return p0
.end method
