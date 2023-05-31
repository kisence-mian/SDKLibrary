.class Lcom/bytedance/sdk/openadsdk/component/splash/b$3;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .registers 3

    .prologue
    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v5, 0x0

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 413
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a98

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v2, v7

    move v3, v8

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 414
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 10

    .prologue
    const/16 v7, 0x3a98

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, -0x3

    .line 419
    if-eqz p1, :cond_10

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 423
    :cond_10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 425
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 426
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 430
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v6, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/f/a/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 432
    :try_start_38
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    const-string v1, "req_id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_48} :catch_b9

    .line 439
    :cond_48
    :goto_48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;J)J

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->h(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 460
    :goto_62
    return-void

    .line 447
    :cond_63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 448
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 449
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 450
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    move v3, v7

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 451
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 454
    :cond_8e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 455
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 456
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 457
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    move v3, v7

    move-object v4, v0

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 458
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u7684\u5e7f\u544a\u89e3\u6790\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 435
    :catch_b9
    move-exception v1

    goto :goto_48
.end method
