.class public Lcom/bytedance/sdk/openadsdk/core/h/b;
.super Ljava/lang/Object;
.source "ApplistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/h/b$b;,
        Lcom/bytedance/sdk/openadsdk/core/h/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/h/b;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    .line 78
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 98
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    .line 99
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)I
    .registers 6

    .line 273
    nop

    .line 274
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_22

    .line 277
    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 279
    const/4 v1, 0x2

    goto :goto_22

    .line 281
    :cond_1d
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, p1

    .line 284
    :cond_22
    :goto_22
    return v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/b;
    .registers 2

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    if-nez v0, :cond_17

    .line 87
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/h/b;

    monitor-enter v0

    .line 88
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    if-nez v1, :cond_12

    .line 89
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    .line 91
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 93
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 447
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 449
    const/4 v1, -0x1

    .line 450
    nop

    .line 453
    :try_start_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_1ba

    const/4 v3, 0x1

    const-string v4, ""

    if-nez v2, :cond_20

    .line 454
    nop

    .line 455
    :try_start_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto :goto_21

    .line 453
    :cond_20
    move-object v2, v4

    .line 457
    :goto_21
    if-gez v1, :cond_32

    .line 458
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 459
    const/4 v1, 0x4

    .line 460
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v2

    .line 463
    :cond_32
    if-gez v1, :cond_3b

    .line 464
    const/4 v1, 0x3

    .line 465
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_3b
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 470
    const-string v8, "package_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 471
    goto :goto_44

    .line 473
    :cond_5a
    const-string v6, "app_list"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v5, "app_info"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string p1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 476
    const-string p1, "device_id"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string p1, "did"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string p1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string p1, "device_platform"

    const-string v2, "android"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string p1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string p1, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string p1, "app_list_type"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 483
    const-string p1, "sdk_version"

    const-string v2, "3.4.1.2"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string p1, "device_id_type"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 485
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_bf} :catch_1ba

    const-string v1, "imei"

    if-eqz p1, :cond_c7

    .line 486
    :try_start_c3
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d0

    .line 488
    :cond_c7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    :goto_d0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d8} :catch_1ba

    const-string v1, "oaid"

    if-eqz p1, :cond_e0

    .line 491
    :try_start_dc
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e7

    .line 493
    :cond_e0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    :goto_e7
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ef} :catch_1ba

    const-string v1, "applog_did"

    if-eqz p1, :cond_f7

    .line 496
    :try_start_f3
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_fe

    .line 498
    :cond_f7
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    :goto_fe
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_108} :catch_1ba

    const-string v1, "android_id"

    if-eqz p1, :cond_110

    .line 501
    :try_start_10c
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_119

    .line 503
    :cond_110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    :goto_119
    if-eqz p2, :cond_162

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_162

    .line 507
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 508
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 509
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_158

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 510
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_13f} :catch_1ba

    if-nez v3, :cond_157

    .line 512
    :try_start_141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 513
    if-eqz v3, :cond_14f

    .line 514
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_152

    .line 516
    :cond_14f
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_152
    .catchall {:try_start_141 .. :try_end_152} :catchall_153

    .line 521
    :goto_152
    goto :goto_157

    .line 518
    :catchall_153
    move-exception v3

    .line 520
    :try_start_154
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 523
    :cond_157
    :goto_157
    goto :goto_12f

    .line 525
    :cond_158
    const-string p2, "have_applist"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string p1, "no_applist"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    :cond_162
    if-eqz p3, :cond_1b9

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b9

    .line 531
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 532
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 533
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_178
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1af

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_188} :catch_1ba

    if-nez v2, :cond_1ae

    .line 536
    :try_start_18a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 537
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 540
    if-eqz v2, :cond_1a6

    .line 541
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a9

    .line 543
    :cond_1a6
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a9
    .catchall {:try_start_18a .. :try_end_1a9} :catchall_1aa

    .line 548
    :goto_1a9
    goto :goto_1ae

    .line 545
    :catchall_1aa
    move-exception v2

    .line 547
    :try_start_1ab
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 550
    :cond_1ae
    :goto_1ae
    goto :goto_178

    .line 552
    :cond_1af
    const-string p3, "scheme_success_list"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string p1, "scheme_fail_list"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1b9} :catch_1ba

    .line 557
    :cond_1b9
    goto :goto_1bb

    .line 555
    :catch_1ba
    move-exception p1

    .line 558
    :goto_1bb
    return-object v0
.end method

.method private a(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplistHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 384
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 385
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 386
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 387
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 388
    const-string p1, "real upload error1"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void

    .line 392
    :cond_2c
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;)Z

    move-result v0

    .line 393
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->A()Ljava/util/List;

    move-result-object v3

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->C()Ljava/util/List;

    move-result-object v4

    .line 396
    if-nez v0, :cond_5d

    if-eqz v3, :cond_4a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_4a
    if-eqz v4, :cond_52

    .line 397
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 398
    :cond_52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    const-string p1, "real upload error2"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 402
    :cond_5d
    if-eqz v0, :cond_61

    move-object v0, p1

    goto :goto_66

    :cond_61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_66
    invoke-direct {p0, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_7d

    move v4, v2

    goto :goto_81

    :cond_7d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v3, 0x1

    const-string v4, "/api/ad/union/sdk/upload/app_info/"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/h/b$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;ZLjava/util/List;)V

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 437
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/adnet/b/f;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 438
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 439
    return-void
.end method

.method private a(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)Z"
        }
    .end annotation

    .line 328
    const-string v0, "last_update_time"

    const-string v1, "package_name"

    const/4 v2, 0x0

    const-string v3, "ApplistHelper"

    if-eqz p1, :cond_a5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_a5

    .line 333
    :cond_11
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 335
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_31

    .line 338
    const-string p1, "is app change true2"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return v6

    .line 343
    :cond_31
    :try_start_31
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_98

    .line 346
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 347
    move v8, v2

    :goto_46
    if-ge v8, v4, :cond_52

    .line 348
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 350
    :cond_52
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 352
    move v5, v2

    :goto_58
    if-ge v5, v4, :cond_90

    .line 353
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 354
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 356
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 357
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    if-eqz v10, :cond_8a

    if-eqz v8, :cond_8a

    .line 359
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 360
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_87

    goto :goto_8a

    .line 352
    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 362
    :cond_8a
    :goto_8a
    const-string p1, "is app change true3"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_31 .. :try_end_8f} :catchall_9e

    .line 363
    return v6

    .line 366
    :cond_90
    nop

    .line 375
    nop

    .line 376
    const-string p1, "is app change false"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return v2

    .line 368
    :cond_98
    :try_start_98
    const-string p1, "is app change true4"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_9e

    .line 369
    return v6

    .line 371
    :catchall_9e
    move-exception p1

    .line 373
    const-string v0, "is app change error: "

    invoke-static {v3, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    return v6

    .line 329
    :cond_a5
    :goto_a5
    const-string p1, "is app change true1"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return v2
.end method

.method private b(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    if-eqz p1, :cond_126

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    if-nez v1, :cond_d

    goto/16 :goto_126

    .line 145
    :cond_d
    :try_start_d
    const-string v1, "utS\\Ijx.:}oJEviZ;q9Yx;wrpHEDSop\\7hSMzh6Ww}yffH}{<I[VmvQLVf\\G4pp8gdyJdndq7YtZ.lHJft<wemwVu[L|5Sg].Z]Zr3X}{:DwWYWiwl7|iYnxfxpE]ri<3f\\.t;T2}6h7H;.4hE7{x7fKdq[4KsvWYqP4DKE3WQLEx<7HjkQqwUXR}QVW2Wjf"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v1, "cn"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v3, "m1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 157
    const-string v1, "pn"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v3, "m2"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string v5, "f"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 160
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 161
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_11c

    .line 164
    check-cast v2, Ljava/util/List;

    .line 165
    if-eqz v2, :cond_11c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11c

    .line 166
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    instance-of v6, v3, Landroid/content/pm/PackageInfo;

    if-eqz v6, :cond_11a

    .line 168
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 169
    nop

    .line 170
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_87
    .catchall {:try_start_d .. :try_end_87} :catchall_11d

    const-string v7, "unknown"

    if-eqz v6, :cond_b1

    .line 172
    :try_start_8b
    const-string v6, "getApplicationLabel"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/pm/ApplicationInfo;

    aput-object v9, v8, v4

    invoke-static {v1, v6, v8}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 174
    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    aput-object v9, v8, v4

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ae

    .line 176
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_ad
    .catchall {:try_start_8b .. :try_end_ad} :catchall_b0

    goto :goto_af

    .line 175
    :cond_ae
    move-object v6, v7

    .line 179
    :goto_af
    goto :goto_b2

    .line 178
    :catchall_b0
    move-exception v6

    .line 182
    :cond_b1
    move-object v6, v7

    :goto_b2
    nop

    .line 184
    :try_start_b3
    const-string v8, "getApplicationInfo"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-static {v1, v8, v10}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 186
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 187
    if-eqz v8, :cond_da

    .line 188
    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_da
    .catchall {:try_start_b3 .. :try_end_da} :catchall_db

    .line 191
    :cond_da
    goto :goto_dc

    .line 190
    :catchall_db
    move-exception v8

    .line 193
    :goto_dc
    :try_start_dc
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v9, "package_name"

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v9, "first_install_time"

    iget-wide v10, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    const-string v9, "last_update_time"

    iget-wide v10, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v9, "version_name"

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v9, "version_code"

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v9, "app_name"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v6, "app_type"

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/pm/PackageInfo;)I

    move-result v3

    invoke-virtual {v8, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    const-string v3, "apk_dir"

    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catchall {:try_start_dc .. :try_end_11a} :catchall_11d

    .line 205
    :cond_11a
    goto/16 :goto_74

    .line 210
    :cond_11c
    goto :goto_125

    .line 208
    :catchall_11d
    move-exception p1

    .line 209
    const-string v1, "ApplistHelper"

    const-string v2, "get install apps error: "

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :goto_125
    return-object v0

    .line 141
    :cond_126
    :goto_126
    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    :try_start_5
    const-string v1, "utS\\Ijx.:}oJEviZ;q9Yx;wrpHEDSop\\7hSMzh6Ww}yffH}{<I[VmvQLVf\\G4pp8gdyJdndq7YtZ.lHJft<wemwVu[L|5Sg].Z]Zr3X}{:DwWYWiwl7|iYnxfxpE]ri<3f\\.t;T2}6h7H;.4hE7{x7fKdq[4KsvWYqP4DKE3WQLEx<7HjkQqwUXR}QVW2Wjf"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v1, "cn"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    const-string v3, "m1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 231
    const-string v1, "pn"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v3, "m2"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    const-string v5, "f"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 235
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_c9

    .line 238
    check-cast v2, Ljava/util/List;

    .line 239
    if-eqz v2, :cond_c9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 241
    instance-of v6, v3, Landroid/content/pm/PackageInfo;

    if-eqz v6, :cond_c8

    .line 242
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 243
    const-string v6, "unknown"

    .line 244
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_ca

    if-eqz v7, :cond_a6

    .line 246
    :try_start_82
    const-string v7, "getApplicationLabel"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/content/pm/ApplicationInfo;

    aput-object v9, v8, v4

    invoke-static {v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 248
    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    aput-object v9, v8, v4

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 249
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 250
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_a4
    .catchall {:try_start_82 .. :try_end_a4} :catchall_a5

    .line 253
    :cond_a4
    goto :goto_a6

    .line 252
    :catchall_a5
    move-exception v7

    .line 255
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/pm/PackageInfo;)I

    move-result v7

    if-eq v7, v5, :cond_c8

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_ca

    .line 259
    :cond_c8
    goto :goto_6c

    .line 266
    :cond_c9
    goto :goto_d2

    .line 263
    :catchall_ca
    move-exception p1

    .line 265
    const-string v1, "ApplistHelper"

    const-string v2, "loadApps error2: "

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :goto_d2
    return-object v0
.end method

.method public b()V
    .registers 5

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->d()Z

    move-result v0

    if-nez v0, :cond_26

    .line 112
    return-void

    .line 115
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->r()Z

    move-result v0

    if-eqz v0, :cond_33

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_33

    .line 116
    return-void

    .line 119
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 120
    return-void

    .line 123
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    :try_start_41
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    .line 132
    goto :goto_52

    .line 127
    :catchall_45
    move-exception v0

    .line 130
    const-string v2, "ApplistHelper"

    const-string v3, "upload sdk applist error: "

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    :goto_52
    return-void
.end method

.method public run()V
    .registers 10

    .line 290
    const-string v0, "ApplistHelper"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)Z

    move-result v1

    .line 291
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 293
    return-void

    .line 296
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->c()Z

    move-result v1

    .line 297
    if-eqz v1, :cond_42

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 299
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;Z)V

    .line 313
    goto :goto_47

    .line 314
    :cond_42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_48

    .line 319
    :goto_47
    goto :goto_53

    .line 316
    :catchall_48
    move-exception v1

    .line 317
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    const-string v2, "upload sdk runnable error: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :goto_53
    return-void
.end method
