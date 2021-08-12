.class Lcom/bytedance/sdk/openadsdk/component/splash/b$5;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 3

    .line 481
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 14

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 486
    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_14

    .line 487
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    goto :goto_1a

    .line 489
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    .line 491
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryLoadSplashAdFromNetwork REQUEST_TYPE_REAL_NETWORK onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v3, 0x3a98

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v6, 0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v4, v0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 15

    .line 498
    if-eqz p1, :cond_b

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 502
    :cond_b
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25"

    const-string v2, "SplashAdLoadManager"

    const/4 v3, 0x1

    const-string v4, "splashLoadAd"

    const/4 v5, -0x3

    if-eqz v0, :cond_100

    .line 504
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 505
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v7

    .line 507
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/d/a;

    .line 508
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_52

    .line 509
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/g/a/c;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/g/a/c;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 511
    :try_start_40
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    const-string v6, "req_id"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 513
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/g/a/c;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_51

    .line 515
    goto :goto_52

    .line 514
    :catchall_51
    move-exception v6

    .line 517
    :cond_52
    :goto_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryLoadSplashAdFromNetwork splashAdMeta.isValid() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 520
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const-wide/16 v5, 0x0

    invoke-static {v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;J)J

    .line 523
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->x()I

    move-result v1

    .line 524
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->z()I

    move-result v0

    .line 525
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(I)V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u5f00\u5c4f\u7d20\u6750\u5b58\u50a8\u662f\u5426\u662f\u5185\u90e8\u5b58\u50a8\u8fd8\u662f\u5916\u90e8\u5b58\u50a8 storageFrom "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryLoadSplashAdFromNetwork cacheSort "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-ne v1, v3, :cond_be

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    goto :goto_c9

    .line 531
    :cond_be
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 534
    :goto_c9
    goto :goto_ff

    .line 535
    :cond_ca
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 536
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 537
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v8, 0x2

    const/4 v9, -0x3

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 538
    const-string v0, "tryLoadSplashAdFromNetwork not splashAdMeta.isValid() REQUEST_TYPE_REAL_NETWORK"

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    .line 540
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v7, 0x3a98

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 541
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_ff
    goto :goto_135

    .line 544
    :cond_100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    .line 545
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 546
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 547
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v8, 0x2

    const/4 v9, -0x3

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 548
    const-string v0, "tryLoadSplashAdFromNetwork \u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25 REQUEST_TYPE_REAL_NETWORK"

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v7, 0x3a98

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 550
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_135
    return-void
.end method
