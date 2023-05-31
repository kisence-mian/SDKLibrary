.class Lcom/bytedance/sdk/openadsdk/component/splash/e$6;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


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
    .line 506
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 513
    :cond_13
    const/4 v0, 0x4

    if-eq p2, v0, :cond_6a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6a

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_65

    .line 517
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;)V

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "tt_splash_mute"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 521
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewImageResource(I)V

    .line 522
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_6b

    move v0, v1

    :goto_59
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z

    .line 523
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->c(Z)V

    .line 526
    :cond_65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I

    .line 530
    :cond_6a
    return-void

    :cond_6b
    move v0, v2

    .line 522
    goto :goto_59
.end method
