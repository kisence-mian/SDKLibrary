.class final Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/sigmob/SigmobATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    .line 71
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->loadInterstitial(Ljava/lang/String;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V

    .line 72
    return-void
.end method
