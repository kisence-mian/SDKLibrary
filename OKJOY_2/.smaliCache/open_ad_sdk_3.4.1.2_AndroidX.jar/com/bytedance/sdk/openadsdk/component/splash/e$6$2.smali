.class Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e$6;)V
    .registers 2

    .line 561
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    .line 565
    return-void
.end method

.method public b()V
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdTimeOver()V

    .line 574
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->A()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c(Z)V

    .line 579
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_52

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b()V

    .line 582
    :cond_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->m()V
    :try_end_5d
    .catchall {:try_start_15 .. :try_end_5d} :catchall_5e

    .line 585
    :cond_5d
    goto :goto_5f

    .line 584
    :catchall_5e
    move-exception v0

    .line 587
    :goto_5f
    return-void
.end method

.method public c()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$6;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->q(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V

    .line 592
    return-void
.end method
