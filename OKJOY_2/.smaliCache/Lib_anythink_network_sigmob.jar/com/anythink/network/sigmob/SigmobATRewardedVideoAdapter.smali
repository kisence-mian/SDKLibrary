.class public Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

# interfaces
.implements Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    .line 105
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 114
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 3

    .line 94
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
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

    .line 32
    nop

    .line 33
    nop

    .line 35
    const-string p3, "app_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_15

    .line 36
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_16

    .line 35
    :cond_15
    move-object p3, v1

    .line 38
    :goto_16
    const-string v0, "app_key"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 39
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 38
    :cond_27
    move-object v0, v1

    .line 41
    :goto_28
    const-string v2, "placement_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 42
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 45
    :cond_3a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_58

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_58

    iget-object p3, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4f

    goto :goto_58

    .line 52
    :cond_4f
    new-instance p3, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p0, p3}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 72
    return-void

    .line 46
    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_63

    .line 47
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "app_id\u3001app_key\u3001placement_id could not be null."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_63
    return-void
.end method

.method public onVideoAdClicked(Ljava/lang/String;)V
    .registers 2

    .line 156
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz p1, :cond_9

    .line 157
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 160
    :cond_9
    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 3

    .line 165
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz p2, :cond_14

    .line 166
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 167
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 169
    :cond_f
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 172
    :cond_14
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 180
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p2, :cond_1e

    .line 181
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 183
    :cond_1e
    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 120
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_c

    .line 121
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 125
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    .line 128
    return-void

    .line 126
    :catchall_1e
    move-exception p1

    .line 130
    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 2

    .line 149
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz p1, :cond_9

    .line 150
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 152
    :cond_9
    return-void
.end method

.method public onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    .line 190
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz p2, :cond_1e

    .line 191
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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

    invoke-interface {p2, v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1e
    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 2

    .line 142
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz p1, :cond_9

    .line 143
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 145
    :cond_9
    return-void
.end method

.method public onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 2

    .line 138
    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 2

    .line 134
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .line 78
    if-eqz p1, :cond_1d

    .line 79
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 80
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V

    .line 82
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_1d

    .line 85
    :catch_1b
    move-exception p1

    .line 90
    return-void

    .line 89
    :cond_1d
    :goto_1d
    return-void
.end method
