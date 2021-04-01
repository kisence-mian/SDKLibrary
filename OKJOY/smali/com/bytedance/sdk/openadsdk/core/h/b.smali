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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    .line 77
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/h/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    .line 96
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    .line 98
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 267
    .line 268
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1c

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_1c

    .line 271
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 273
    const/4 v0, 0x2

    .line 278
    :cond_1c
    :goto_1c
    return v0

    .line 275
    :cond_1d
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/b$a;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    return-object v0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/b;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    if-nez v0, :cond_13

    .line 86
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/h/b;

    monitor-enter v1

    .line 87
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    if-nez v0, :cond_12

    .line 88
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    .line 90
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 92
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/b;->a:Lcom/bytedance/sdk/openadsdk/core/h/b;

    return-object v0

    .line 90
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .registers 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 440
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 442
    const/4 v2, -0x1

    .line 443
    :try_start_7
    const-string v0, ""

    .line 446
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15a

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_1b
    if-gez v1, :cond_2c

    .line 451
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 452
    const/4 v1, 0x4

    .line 453
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_2c
    if-gez v1, :cond_156

    .line 457
    const/4 v1, 0x3

    .line 458
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 461
    :goto_37
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 463
    const-string v6, "package_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_40

    .line 529
    :catch_56
    move-exception v0

    .line 532
    :cond_57
    :goto_57
    return-object v3

    .line 466
    :cond_58
    const-string v0, "app_list"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v0, "app_info"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 469
    const-string v0, "device_id"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v0, "did"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v0, "device_platform"

    const-string v1, "android"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v0, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v0, "app_list_type"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string v0, "sdk_version"

    const-string v1, "2.9.5.3"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v0, "device_id_type"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    if-eqz p2, :cond_fd

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 481
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 482
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 483
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ca
    :goto_ca
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d9} :catch_56

    move-result v5

    if-nez v5, :cond_ca

    .line 486
    :try_start_dc
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 487
    if-eqz v5, :cond_ef

    .line 488
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_e9} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e9} :catch_56

    goto :goto_ca

    .line 492
    :catch_ea
    move-exception v5

    .line 494
    :try_start_eb
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_56

    goto :goto_ca

    .line 490
    :cond_ef
    :try_start_ef
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f2} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_56

    goto :goto_ca

    .line 499
    :cond_f3
    :try_start_f3
    const-string v0, "have_applist"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v0, "no_applist"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    :cond_fd
    if-eqz p3, :cond_57

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 505
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 506
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 507
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_113
    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_122} :catch_56

    move-result v5

    if-nez v5, :cond_113

    .line 510
    :try_start_125
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 511
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 513
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    .line 514
    if-eqz v5, :cond_146

    .line 515
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_140} :catch_141
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_140} :catch_56

    goto :goto_113

    .line 519
    :catch_141
    move-exception v5

    .line 521
    :try_start_142
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_145} :catch_56

    goto :goto_113

    .line 517
    :cond_146
    :try_start_146
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_149} :catch_141
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_56

    goto :goto_113

    .line 526
    :cond_14a
    :try_start_14a
    const-string v0, "scheme_success_list"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v0, "scheme_fail_list"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_154} :catch_56

    goto/16 :goto_57

    :cond_156
    move v2, v1

    move-object v1, v0

    goto/16 :goto_37

    :cond_15a
    move v1, v2

    goto/16 :goto_1b
.end method

.method private a(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 377
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 378
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 379
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 381
    const-string v0, "ApplistHelper"

    const-string v1, "real upload error1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_2b
    return-void

    .line 385
    :cond_2c
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;)Z

    move-result v0

    .line 386
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->N()Ljava/util/List;

    move-result-object v2

    .line 387
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->O()Ljava/util/List;

    move-result-object v3

    .line 389
    if-nez v0, :cond_5f

    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_4a
    if-eqz v3, :cond_52

    .line 390
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 391
    :cond_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    const-string v0, "ApplistHelper"

    const-string v1, "real upload error2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 395
    :cond_5f
    if-eqz v0, :cond_ac

    move-object v0, p1

    :goto_62
    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 400
    const-string v3, "ApplistHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_b2

    move v0, v1

    :goto_7a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v3, 0x1

    const-string v4, "/api/ad/union/sdk/upload/app_info/"

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/h/b$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/b;ZLjava/util/List;)V

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 430
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/b/f;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    .line 431
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_2b

    .line 395
    :cond_ac
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_62

    .line 400
    :cond_b2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_7a
.end method

.method private a(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 322
    :cond_a
    const-string v0, "ApplistHelper"

    const-string v1, "is app change true1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 370
    :goto_12
    return v0

    .line 326
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 331
    const-string v0, "ApplistHelper"

    const-string v1, "is app change true2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 332
    goto :goto_12

    .line 336
    :cond_35
    :try_start_35
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v5, v0, :cond_a0

    .line 339
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 340
    :goto_4a
    if-ge v0, v5, :cond_56

    .line 341
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 343
    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->f:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v3

    .line 345
    :goto_5c
    if-ge v4, v5, :cond_b5

    .line 346
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 347
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 349
    const-string v7, "package_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    const-string v8, "last_update_time"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    if-eqz v7, :cond_92

    if-eqz v0, :cond_92

    const-string v8, "package_name"

    .line 352
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    const-string v7, "last_update_time"

    .line 353
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 355
    :cond_92
    const-string v0, "ApplistHelper"

    const-string v1, "is app change true3"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 356
    goto/16 :goto_12

    .line 345
    :cond_9c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5c

    .line 361
    :cond_a0
    const-string v0, "ApplistHelper"

    const-string v1, "is app change true4"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_a7} :catch_aa

    move v0, v2

    .line 362
    goto/16 :goto_12

    .line 364
    :catch_aa
    move-exception v0

    .line 366
    const-string v1, "ApplistHelper"

    const-string v3, "is app change error: "

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 367
    goto/16 :goto_12

    .line 369
    :cond_b5
    const-string v0, "ApplistHelper"

    const-string v1, "is app change false"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 370
    goto/16 :goto_12
.end method

.method private b(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v3

    .line 205
    :goto_c
    return-object v0

    .line 139
    :cond_d
    :try_start_d
    const-string v0, "utS\\Ijx.:}oJEviZ;q9Yx;wrpHEDSop\\7hSMzh6Ww}yffH}{<I[VmvQLVf\\G4pp8gdyJdndq7YtZ.lHJft<wemwVu[L|5Sg].Z]Zr3X}{:DwWYWiwl7|iYnxfxpE]ri<3f\\.t;T2}6h7H;.4hE7{x7fKdq[4KsvWYqP4DKE3WQLEx<7HjkQqwUXR}QVW2Wjf"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v0, "cn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v2, "m1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 151
    const-string v0, "pn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    const-string v0, "m2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v2, "f"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 154
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v4

    invoke-static {v6, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_12c

    .line 158
    check-cast v0, Ljava/util/List;

    .line 159
    if-eqz v0, :cond_12c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12c

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_78
    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 161
    instance-of v1, v0, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_78

    .line 162
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 163
    const-string v2, "unknown"

    .line 164
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_8c} :catch_124

    if-eqz v1, :cond_13a

    .line 166
    :try_start_8e
    const-string v1, "getApplicationLabel"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/pm/ApplicationInfo;

    aput-object v9, v4, v8

    invoke-static {v6, v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    aput-object v9, v4, v8

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_137

    .line 170
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_b3} :catch_12f

    move-result-object v1

    :goto_b4
    move-object v4, v1

    .line 176
    :goto_b5
    :try_start_b5
    const-string v2, "unknown"
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b7} :catch_124

    .line 178
    :try_start_b7
    const-string v1, "getApplicationInfo"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-static {v6, v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 181
    if-eqz v1, :cond_135

    .line 182
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_e4} :catch_132

    .line 187
    :goto_e4
    :try_start_e4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 188
    const-string v8, "package_name"

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v8, "first_install_time"

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    const-string v8, "last_update_time"

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v8, "version_name"

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v8, "version_code"

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string v8, "app_name"

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v4, "app_type"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/pm/PackageInfo;)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    const-string v0, "apk_dir"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_122} :catch_124

    goto/16 :goto_78

    .line 202
    :catch_124
    move-exception v0

    .line 203
    const-string v1, "ApplistHelper"

    const-string v2, "get install apps error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12c
    move-object v0, v3

    .line 205
    goto/16 :goto_c

    .line 172
    :catch_12f
    move-exception v1

    move-object v4, v2

    goto :goto_b5

    .line 184
    :catch_132
    move-exception v1

    move-object v1, v2

    goto :goto_e4

    :cond_135
    move-object v1, v2

    goto :goto_e4

    :cond_137
    move-object v1, v2

    goto/16 :goto_b4

    :cond_13a
    move-object v4, v2

    goto/16 :goto_b5
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/h/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    :try_start_6
    const-string v0, "utS\\Ijx.:}oJEviZ;q9Yx;wrpHEDSop\\7hSMzh6Ww}yffH}{<I[VmvQLVf\\G4pp8gdyJdndq7YtZ.lHJft<wemwVu[L|5Sg].Z]Zr3X}{:DwWYWiwl7|iYnxfxpE]ri<3f\\.t;T2}6h7H;.4hE7{x7fKdq[4KsvWYqP4DKE3WQLEx<7HjkQqwUXR}QVW2Wjf"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    const-string v0, "cn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v2, "m1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 225
    const-string v0, "pn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    const-string v0, "m2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v2, "f"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v6

    invoke-static {v5, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_d9

    .line 232
    check-cast v0, Ljava/util/List;

    .line 233
    if-eqz v0, :cond_d9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_71
    :goto_71
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 235
    instance-of v1, v0, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_71

    .line 236
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 237
    const-string v2, "unknown"

    .line 238
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_85} :catch_d1

    if-eqz v1, :cond_ae

    .line 240
    :try_start_87
    const-string v1, "getApplicationLabel"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/pm/ApplicationInfo;

    aput-object v9, v7, v8

    invoke-static {v5, v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 242
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_dc

    .line 244
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_ac} :catch_da

    move-result-object v1

    :goto_ad
    move-object v2, v1

    .line 249
    :cond_ae
    :goto_ae
    :try_start_ae
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Landroid/content/pm/PackageInfo;)I

    move-result v1

    if-eq v1, v10, :cond_71

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_d0} :catch_d1

    goto :goto_71

    .line 257
    :catch_d1
    move-exception v0

    .line 259
    const-string v1, "ApplistHelper"

    const-string v2, "loadApps error2: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    :cond_d9
    return-object v3

    .line 246
    :catch_da
    move-exception v1

    goto :goto_ae

    :cond_dc
    move-object v1, v2

    goto :goto_ad
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->P()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->alist()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->e:Z

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/i;->d()Z

    move-result v0

    if-nez v0, :cond_26

    .line 127
    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v2

    .line 107
    goto :goto_1b

    .line 113
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_23

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    :try_start_33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_23

    .line 121
    :catch_3c
    move-exception v0

    .line 124
    const-string v1, "ApplistHelper"

    const-string v3, "upload sdk applist error: "

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_23
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v0

    .line 284
    if-nez v0, :cond_f

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 313
    :goto_e
    return-void

    .line 289
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->c:Lcom/bytedance/sdk/openadsdk/core/h/b$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b$a;->c()Z

    move-result v0

    .line 290
    if-eqz v0, :cond_51

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 293
    const-string v4, "ApplistHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Ljava/util/List;Z)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_42} :catch_43

    goto :goto_e

    .line 309
    :catch_43
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    const-string v1, "ApplistHelper"

    const-string v2, "upload sdk runnable error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 307
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_57} :catch_43

    goto :goto_e
.end method
