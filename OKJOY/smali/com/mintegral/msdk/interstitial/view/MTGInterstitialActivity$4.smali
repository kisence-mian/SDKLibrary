.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;
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
    .line 778
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 781
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 782
    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v3}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v4}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 781
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 783
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    .line 784
    invoke-static {v1}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v2}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v3}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$4;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v4}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 783
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 785
    return-void
.end method
