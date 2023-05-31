.class Lcom/bytedance/sdk/openadsdk/component/splash/e$3;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->d()V
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
    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 216
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 219
    :cond_23
    const/4 v0, 0x4

    if-eq p2, v0, :cond_69

    const/4 v0, -0x1

    if-eq p2, v0, :cond_69

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_64

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;)V

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_splash_mute"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 226
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setVoiceViewImageResource(I)V

    .line 227
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x1

    :goto_61
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Z)Z

    .line 231
    :cond_64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I

    .line 233
    :cond_69
    return-void

    :cond_6a
    move v0, v1

    .line 227
    goto :goto_61
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 238
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 242
    const-string v0, "splash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 246
    :cond_29
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 250
    if-eqz p1, :cond_b

    cmpg-float v0, p2, v1

    if-lez v0, :cond_b

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_c

    .line 261
    :cond_b
    :goto_b
    return-void

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->g(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->c(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/TsView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->h(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/TsView;->setExpressView(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->f(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 260
    :cond_38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$3;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b
.end method
