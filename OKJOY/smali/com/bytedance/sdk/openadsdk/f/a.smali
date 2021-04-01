.class public Lcom/bytedance/sdk/openadsdk/f/a;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/f/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/f/a;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    if-nez v0, :cond_13

    .line 44
    const-class v1, Lcom/bytedance/sdk/openadsdk/f/a;

    monitor-enter v1

    .line 45
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    if-nez v0, :cond_12

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    .line 48
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 50
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/f/a;

    return-object v0

    .line 48
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/a;->b(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/f/a;Lcom/bytedance/sdk/openadsdk/f/a/d;)Z
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 177
    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v1

    .line 181
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;I)I

    move-result v2

    .line 182
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_15

    and-int/lit8 v2, v2, 0x1

    if-eq v2, p2, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 183
    :cond_16
    if-eqz v0, :cond_1d

    .line 184
    add-int/lit8 v2, p2, 0x2

    .line 185
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;I)V

    .line 187
    :cond_1d
    return v0
.end method

.method private b(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/c;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_c

    .line 301
    :cond_a
    const/4 v0, 0x0

    .line 337
    :goto_b
    return-object v0

    .line 303
    :cond_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 304
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 306
    :try_start_16
    const-string v0, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v0, "network_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 309
    const-string v0, "cid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v0, "platform"

    const-string v3, "Android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v0, "app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v0, "device_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    .line 314
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 315
    if-eqz v0, :cond_81

    .line 316
    const-string v4, "longitude"

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 317
    const-string v4, "latitude"

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v6, v0

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 319
    :cond_81
    const-string v0, "location"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8f
    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    .line 322
    if-eqz v0, :cond_8f

    .line 323
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8f

    .line 335
    :catch_a5
    move-exception v0

    :goto_a6
    move-object v0, v1

    .line 337
    goto/16 :goto_b

    .line 326
    :cond_a9
    const-string v0, "pages"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    if-eqz p3, :cond_d1

    .line 328
    const-string v0, "extra_info"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v0, "extra_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "back extra info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_d1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->i(Ljava/lang/String;)[B

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "StatsLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "html content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_fe} :catch_a5

    goto :goto_a6
.end method

.method private o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z
    .registers 3

    .prologue
    .line 54
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    :goto_6
    return-void

    .line 62
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    goto :goto_6
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)V
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/c;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_b

    .line 296
    :cond_a
    :goto_a
    return-void

    .line 284
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    goto :goto_a
.end method

.method public a(Z[Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 256
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 259
    :try_start_6
    const-string v3, "if_sd"

    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    if-eqz p2, :cond_3a

    array-length v1, p2

    if-lez v1, :cond_3a

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    array-length v3, p2

    :goto_19
    if-ge v0, v3, :cond_31

    aget-object v4, p2, v0

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    move v1, v0

    .line 259
    goto :goto_b

    .line 267
    :cond_31
    const-string v0, "permission"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3a} :catch_5f

    .line 272
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    const-string v1, "download_permission"

    .line 273
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 275
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    .line 278
    return-void

    .line 269
    :catch_5f
    move-exception v0

    goto :goto_3a
.end method

.method public b()V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v3

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v2

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v4

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v5

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v6

    .line 73
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :try_start_43
    const-string v8, "access_fine_location"

    if-eqz v2, :cond_84

    move v2, v0

    :goto_48
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v8, "applist"

    if-eqz v3, :cond_86

    move v2, v0

    :goto_50
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v3, "external_storage"

    if-eqz v4, :cond_88

    move v2, v0

    :goto_58
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v3, "wifi_state"

    if-eqz v5, :cond_8a

    move v2, v0

    :goto_60
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v2, "phone_state"

    if-eqz v6, :cond_8c

    :goto_67
    invoke-virtual {v7, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_6a} :catch_8e

    .line 83
    :goto_6a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    const-string v2, "sdk_permission"

    .line 84
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 85
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    .line 88
    return-void

    :cond_84
    move v2, v1

    .line 75
    goto :goto_48

    :cond_86
    move v2, v1

    .line 76
    goto :goto_50

    :cond_88
    move v2, v1

    .line 77
    goto :goto_58

    :cond_8a
    move v2, v1

    .line 78
    goto :goto_60

    :cond_8c
    move v0, v1

    .line 79
    goto :goto_67

    .line 80
    :catch_8e
    move-exception v0

    goto :goto_6a
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    :goto_6
    return-void

    .line 95
    :cond_7
    const-string v0, "outer_call"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    :goto_6
    return-void

    .line 107
    :cond_7
    const-string v0, "outer_call_send"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    :goto_6
    return-void

    .line 119
    :cond_7
    const-string v0, "outer_call_no_rsp"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    :goto_6
    return-void

    .line 130
    :cond_7
    const-string v0, "load_ad_duration_no_ad"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    goto :goto_6
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    :goto_6
    return-void

    .line 141
    :cond_7
    const-string v0, "load_creative_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method

.method public g(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    :goto_6
    return-void

    .line 153
    :cond_7
    const-string v0, "load_timeout"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method

.method public h(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    :goto_6
    return-void

    .line 164
    :cond_7
    const-string v0, "express_ad_render"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    goto :goto_6
.end method

.method public i(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 193
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/a;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    .line 204
    :cond_13
    return-void
.end method

.method public j(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/a$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/a;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    .line 219
    :cond_13
    return-void
.end method

.method public k(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 223
    const-string v0, "load_icon_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    .line 226
    :cond_12
    return-void
.end method

.method public l(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    :goto_6
    return-void

    .line 232
    :cond_7
    const-string v0, "show_backup_endcard"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    goto :goto_6
.end method

.method public m(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    .line 241
    :cond_d
    return-void
.end method

.method public n(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 6
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->o(Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    :goto_6
    return-void

    .line 248
    :cond_7
    const-string v0, "splash_creative_check"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(J)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 252
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    goto :goto_6
.end method
