.class Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e$5;)V
    .registers 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 460
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdTimeOver()V

    .line 469
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->z()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 471
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c(Z)V

    .line 474
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_52

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->b()V

    .line 477
    :cond_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e$5;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/e$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->l()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_5d} :catch_5e

    .line 482
    :cond_5d
    :goto_5d
    return-void

    .line 479
    :catch_5e
    move-exception v0

    goto :goto_5d
.end method
