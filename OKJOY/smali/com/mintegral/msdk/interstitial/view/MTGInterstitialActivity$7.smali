.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 330
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "load page timeOut"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->f(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 332
    const-string v0, "MTGInterstitialActivity"

    const-string v1, "mLoadTimeTask \u5df2\u7ecf\u6253\u5f00\u975emtg\u7684\u9875\u9762\u4e86 return "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_16
    :goto_16
    return-void

    .line 335
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->g(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Z

    .line 337
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 338
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->b(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/interstitial/c/a$c;

    move-result-object v0

    const-string v1, "load page timeout"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a$c;->a(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 340
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 342
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->release()V

    .line 344
    :cond_55
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$7;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->hideLoading()V

    goto :goto_16
.end method
