.class public Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

# interfaces
.implements Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

.field private d:Ljava/lang/String;

.field private e:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    .line 125
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    .line 126
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 119
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 135
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 5

    .line 110
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 111
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    return v2

    .line 113
    :cond_1a
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    return v2
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    nop

    .line 38
    nop

    .line 39
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_15

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 39
    :cond_15
    move-object v0, v2

    .line 42
    :goto_16
    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 43
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 42
    :cond_27
    move-object v1, v2

    .line 45
    :goto_28
    const-string v3, "placement_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 46
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    .line 49
    :cond_3a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_68

    .line 57
    :cond_4f
    :try_start_4f
    const-string v0, "is_use_rewarded_video_as_interstitial"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 59
    goto :goto_5f

    .line 58
    :catch_5e
    move-exception p3

    .line 61
    :goto_5f
    new-instance p3, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;-><init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p0, p3}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 50
    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_73

    .line 51
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    invoke-interface {p1, v2, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_73
    return-void
.end method

.method public onFullScreenVideoAdClicked(Ljava/lang/String;)V
    .registers 2

    .line 176
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz p1, :cond_9

    .line 177
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 179
    :cond_9
    return-void
.end method

.method public onFullScreenVideoAdClosed(Ljava/lang/String;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz p1, :cond_9

    .line 184
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 187
    :cond_9
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onFullScreenVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 192
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p2, :cond_1e

    .line 193
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1e
    return-void
.end method

.method public onFullScreenVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 140
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_c

    .line 141
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 145
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    .line 148
    return-void

    .line 146
    :catchall_1e
    move-exception p1

    .line 149
    return-void
.end method

.method public onFullScreenVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 2

    .line 169
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz p1, :cond_9

    .line 170
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 172
    :cond_9
    return-void
.end method

.method public onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 199
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz p2, :cond_1e

    .line 200
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1e
    return-void
.end method

.method public onFullScreenVideoAdPlayStart(Ljava/lang/String;)V
    .registers 2

    .line 161
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz p1, :cond_e

    .line 162
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 163
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 165
    :cond_e
    return-void
.end method

.method public onFullScreenVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 2

    .line 157
    return-void
.end method

.method public onFullScreenVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 2

    .line 153
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 94
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V

    .line 96
    iget-boolean v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Z

    if-eqz v0, :cond_1f

    .line 97
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    return-void

    .line 99
    :cond_1f
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 105
    :cond_28
    return-void

    .line 104
    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    return-void
.end method
