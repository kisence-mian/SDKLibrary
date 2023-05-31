.class final Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 234
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->D(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 246
    const-string v0, "4001"

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->E(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 249
    :cond_1f
    return-void
.end method

.method public final onSuccess()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$3;->b:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->startLoad()V

    .line 241
    return-void
.end method
