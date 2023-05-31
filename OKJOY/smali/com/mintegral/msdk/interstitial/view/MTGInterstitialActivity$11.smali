.class final Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;
.super Ljava/lang/Object;
.source "MTGInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->goneWebView()V
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
    .line 453
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 458
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity$11;->a:Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;->h(Lcom/mintegral/msdk/interstitial/view/MTGInterstitialActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setVisibility(I)V

    .line 460
    :cond_13
    return-void
.end method
