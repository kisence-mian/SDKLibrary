.class Lcom/bytedance/sdk/openadsdk/component/splash/e$5;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a()V

    .line 396
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_38

    .line 408
    :cond_37
    :goto_37
    return-void

    .line 399
    :cond_38
    const/4 v1, 0x0

    .line 401
    :try_start_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_5b

    move-result-object v0

    .line 404
    :goto_49
    if-eqz v0, :cond_37

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_37

    .line 405
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    goto :goto_37

    .line 402
    :catch_5b
    move-exception v0

    move-object v0, v1

    goto :goto_49
.end method

.method public a(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;J)J

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 429
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 430
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->l(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 432
    const-string v1, "splash_show_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 443
    const-string v1, "splash_show_type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_84

    .line 445
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 451
    :cond_84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 452
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->n(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_c0

    .line 456
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e$5;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;)V

    .line 484
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a()V

    .line 488
    :cond_c0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 491
    :cond_e1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->U()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 492
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V

    .line 494
    :cond_f6
    const-string v0, "TTSplashAdImpl"

    const-string v1, "bindViewInteraction \u5f00\u5c4f\u5e7f\u544a\u5c55\u793a"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 435
    :cond_fe
    const-string v1, "splash_show_type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3d

    .line 438
    :cond_10a
    const-string v1, "splash_show_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3d
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 382
    if-eqz p1, :cond_14

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 388
    :cond_13
    :goto_13
    return-void

    .line 385
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->j(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_13
.end method

.method public b()V
    .registers 5

    .prologue
    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/e$5;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    return-void
.end method
