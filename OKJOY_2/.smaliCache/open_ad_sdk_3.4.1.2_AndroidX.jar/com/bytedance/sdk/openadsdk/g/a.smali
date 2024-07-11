.class public Lcom/bytedance/sdk/openadsdk/g/a;
.super Ljava/lang/Object;
.source "StatsLogManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/g/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/a;
    .registers 2

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    if-nez v0, :cond_17

    .line 47
    const-class v0, Lcom/bytedance/sdk/openadsdk/g/a;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/g/a;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    if-nez v1, :cond_12

    .line 49
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/g/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/g/a;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    .line 51
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 53
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a;->a:Lcom/bytedance/sdk/openadsdk/g/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a;->b(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a;Lcom/bytedance/sdk/openadsdk/g/a/c;)Z
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a;Ljava/lang/String;I)Z
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 8

    .line 239
    nop

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;I)I

    move-result v2

    .line 244
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    and-int/2addr v2, v4

    if-eq v2, p2, :cond_17

    :cond_16
    move v1, v4

    .line 245
    :cond_17
    if-eqz v1, :cond_1e

    .line 246
    add-int/lit8 p2, p2, 0x2

    .line 247
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;I)V

    .line 249
    :cond_1e
    return v1
.end method

.method private b(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/d;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lorg/json/JSONObject;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 373
    const-string v0, "extra_info"

    if-eqz p1, :cond_fb

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_fb

    if-nez p2, :cond_e

    goto/16 :goto_fb

    .line 376
    :cond_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 377
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 379
    :try_start_18
    const-string v3, "log_extra"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v3, "network_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 382
    const-string v3, "cid"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string p2, "platform"

    const-string v3, "Android"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string p2, "app"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string p2, "device_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object p2

    .line 387
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 388
    if-eqz p2, :cond_83

    .line 389
    const-string v4, "longitude"

    iget v5, p2, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 390
    const-string v4, "latitude"

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    float-to-double v5, p2

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 392
    :cond_83
    const-string p2, "location"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/d;

    .line 395
    if-eqz v3, :cond_a6

    .line 396
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 398
    :cond_a6
    goto :goto_91

    .line 399
    :cond_a7
    const-string p1, "pages"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    if-eqz p3, :cond_cb

    .line 401
    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "back extra info:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_cb
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->i(Ljava/lang/String;)[B

    move-result-object p1

    .line 405
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string p2, "content"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string p2, "StatsLogManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "html content:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_f8} :catch_f9

    .line 409
    goto :goto_fa

    .line 408
    :catch_f9
    move-exception p1

    .line 410
    :goto_fa
    return-object v1

    .line 374
    :cond_fb
    :goto_fb
    const/4 p1, 0x0

    return-object p1
.end method

.method private o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z
    .registers 2

    .line 57
    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 6

    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string v1, "page_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    const-string v1, "delegate_on_create"

    .line 144
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 146
    const-string v1, "StatsLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delegate_on_create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    .line 149
    goto :goto_49

    .line 148
    :catchall_48
    move-exception p1

    .line 150
    :goto_49
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 62
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    return-void

    .line 65
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 66
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    :try_start_5
    const-string v1, "playable_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 74
    goto :goto_c

    .line 73
    :catchall_b
    move-exception p1

    .line 76
    :goto_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 77
    const-string v1, "click_playable_test_tool"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_5
    const-string v1, "playable_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string p1, "error_code"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string p1, "error_message"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 104
    goto :goto_16

    .line 103
    :catchall_15
    move-exception p1

    .line 106
    :goto_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 107
    const-string p2, "use_playable_test_tool_error"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    if-nez p2, :cond_9

    goto :goto_22

    .line 419
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 421
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 422
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 423
    return-void

    .line 417
    :cond_22
    :goto_22
    return-void
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/d;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 354
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15

    if-nez p2, :cond_b

    goto :goto_15

    .line 357
    :cond_b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/g/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 369
    return-void

    .line 355
    :cond_15
    :goto_15
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 7

    .line 343
    if-nez p1, :cond_3

    .line 344
    return-void

    .line 346
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 347
    const-string v1, "app_env"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 350
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 351
    return-void
.end method

.method public a(Z[Ljava/lang/String;)V
    .registers 8

    .line 318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 321
    :try_start_5
    const-string v1, "if_sd"

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    move p1, v2

    :goto_d
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    if-eqz p2, :cond_3a

    array-length p1, p2

    if-lez p1, :cond_3a

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    array-length v1, p2

    :goto_1b
    if-ge v2, v1, :cond_31

    aget-object v3, p2, v2

    .line 325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 326
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 329
    :cond_31
    const-string p2, "permission"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    .line 332
    :cond_3a
    goto :goto_3c

    .line 331
    :catchall_3b
    move-exception p1

    .line 334
    :goto_3c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 335
    const-string p2, "download_permission"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 337
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 339
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 340
    return-void
.end method

.method public b()V
    .registers 10

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v1

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v2

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v3

    .line 118
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v4

    .line 120
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const/4 v6, 0x0

    :try_start_42
    const-string v7, "access_fine_location"

    const/4 v8, 0x1

    if-eqz v1, :cond_49

    move v1, v8

    goto :goto_4a

    :cond_49
    move v1, v6

    :goto_4a
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v1, "applist"

    if-eqz v0, :cond_53

    move v0, v8

    goto :goto_54

    :cond_53
    move v0, v6

    :goto_54
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v0, "external_storage"

    if-eqz v2, :cond_5d

    move v1, v8

    goto :goto_5e

    :cond_5d
    move v1, v6

    :goto_5e
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v0, "wifi_state"

    if-eqz v3, :cond_67

    move v1, v8

    goto :goto_68

    :cond_67
    move v1, v6

    :goto_68
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v0, "phone_state"

    if-eqz v4, :cond_70

    goto :goto_71

    :cond_70
    move v8, v6

    :goto_71
    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_74
    .catchall {:try_start_42 .. :try_end_74} :catchall_75

    .line 128
    goto :goto_76

    .line 127
    :catchall_75
    move-exception v0

    .line 130
    :goto_76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 131
    const-string v1, "sdk_permission"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 132
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v1

    invoke-interface {v1, v0, v6}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 135
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 153
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    return-void

    .line 157
    :cond_7
    const-string v0, "outer_call"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 162
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    :try_start_5
    const-string v1, "playable_url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    .line 88
    goto :goto_c

    .line 87
    :catchall_b
    move-exception p1

    .line 90
    :goto_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 91
    const-string v1, "close_playable_test_tool"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 95
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 165
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    return-void

    .line 169
    :cond_7
    const-string v0, "outer_call_send"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 174
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 177
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    return-void

    .line 181
    :cond_7
    const-string v0, "outer_call_no_rsp"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 186
    return-void
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 189
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    return-void

    .line 192
    :cond_7
    const-string v0, "load_ad_duration_no_ad"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 196
    return-void
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 199
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    return-void

    .line 203
    :cond_7
    const-string v0, "load_creative_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 207
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 208
    return-void
.end method

.method public g(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 211
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    return-void

    .line 215
    :cond_7
    const-string v0, "load_timeout"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 219
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 220
    return-void
.end method

.method public h(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 223
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    const-string v0, "express_ad_render"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 228
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 229
    return-void
.end method

.method public i(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 255
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 266
    :cond_f
    return-void
.end method

.method public j(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 269
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 270
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 281
    :cond_f
    return-void
.end method

.method public k(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 284
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 285
    const-string v0, "load_icon_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 288
    :cond_12
    return-void
.end method

.method public l(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 291
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    return-void

    .line 294
    :cond_7
    const-string v0, "show_backup_endcard"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 296
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 297
    return-void
.end method

.method public m(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 300
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 303
    :cond_d
    return-void
.end method

.method public n(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 6

    .line 306
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->o(Lcom/bytedance/sdk/openadsdk/g/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    return-void

    .line 310
    :cond_7
    const-string v0, "splash_creative_check"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(J)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 314
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 315
    return-void
.end method
