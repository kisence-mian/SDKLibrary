.class public Lcom/bytedance/sdk/openadsdk/utils/p;
.super Ljava/lang/Object;
.source "InstallAppUtils.java"


# direct methods
.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    :cond_8
    const/4 v0, 0x0

    .line 149
    :goto_9
    return-object v0

    .line 142
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 144
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2d

    .line 146
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 149
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_7
    return-object v0

    .line 134
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->P()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 60
    :cond_19
    :goto_19
    return-object v0

    .line 46
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 50
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/p;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/p$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/p$1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 60
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/p;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_19
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 112
    const-string v1, "install_app_string"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/p;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 119
    const-string v1, "install_app_incremental_string"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "apptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    .line 121
    return-void
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 73
    const-string v2, "install_app_incremental_string"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 75
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_1c

    .line 81
    :goto_1b
    return-object v0

    .line 78
    :catch_1c
    move-exception v0

    .line 79
    const-string v2, "InstallAppUtils"

    const-string v3, "getCacheIncrementalApps error: "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    move-object v0, v1

    .line 81
    goto :goto_1b
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 107
    :cond_10
    :goto_10
    return-void

    .line 96
    :cond_11
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v1

    .line 97
    const-string v2, "install_app_string"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 103
    :cond_32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_10

    .line 104
    :catch_3a
    move-exception v0

    .line 105
    const-string v1, "InstallAppUtils"

    const-string v2, "loadIncrementInstallApps error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 124
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 125
    const-string v1, "apptime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 126
    cmp-long v2, v0, v2

    if-eqz v2, :cond_21

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    .line 126
    :goto_22
    return v0

    .line 127
    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
