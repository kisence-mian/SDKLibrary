.class public Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

# interfaces
.implements Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATConst;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 3

    .prologue
    .line 102
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p4, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 29
    const-string v0, ""

    .line 30
    const-string v1, ""

    .line 31
    if-nez p2, :cond_1c

    .line 32
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1b

    .line 33
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "service params is empty."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 74
    :cond_1b
    :goto_1b
    return-void

    .line 37
    :cond_1c
    const-string v2, "app_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 38
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_2e
    const-string v2, "app_key"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 41
    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_40
    const-string v2, "placement_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 44
    const-string v2, "placement_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    .line 47
    :cond_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 48
    :cond_68
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1b

    .line 49
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "app_id\u3001app_key\u3001placement_id could not be null."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b

    .line 55
    :cond_7c
    if-nez p1, :cond_92

    .line 56
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1b

    .line 57
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "context = null."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b

    .line 60
    :cond_92
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_ab

    .line 61
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_1b

    .line 62
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "context must be activity."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto/16 :goto_1b

    .line 67
    :cond_ab
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;-><init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V

    goto/16 :goto_1b
.end method

.method public onFullScreenVideoAdClicked(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 156
    :cond_9
    return-void
.end method

.method public onFullScreenVideoAdClosed(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 164
    :cond_9
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_24

    .line 170
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 170
    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 173
    :cond_24
    return-void
.end method

.method public onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 125
    :cond_9
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 149
    :cond_9
    return-void
.end method

.method public onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_24

    .line 178
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    sget-object v1, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 178
    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 181
    :cond_24
    return-void
.end method

.method public onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_e

    .line 139
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 142
    :cond_e
    return-void
.end method

.method public onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    return-void
.end method

.method public onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1e

    .line 81
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V

    .line 83
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 88
    :cond_1e
    :goto_1e
    return-void

    .line 86
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
