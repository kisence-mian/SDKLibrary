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

    .prologue
    .line 22
    const-class v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATConst;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 3

    .prologue
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

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p4, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 30
    const-string v0, ""

    .line 31
    const-string v1, ""

    .line 32
    if-nez p2, :cond_1c

    .line 33
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_1b

    .line 34
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "service params is empty."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 64
    :cond_1b
    :goto_1b
    return-void

    .line 38
    :cond_1c
    const-string v2, "app_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 39
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_2e
    const-string v2, "app_key"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 42
    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_40
    const-string v2, "placement_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 45
    const-string v2, "placement_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 48
    :cond_54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 49
    :cond_68
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_1b

    .line 50
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "app_id\u3001app_key\u3001placement_id could not be null."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b

    .line 57
    :cond_7c
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V

    goto :goto_1b
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 90
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 85
    return-void
.end method

.method public onVideoAdClicked(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 149
    :cond_9
    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz v0, :cond_14

    .line 155
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 156
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 158
    :cond_f
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 161
    :cond_14
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onVideoAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_24

    .line 170
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

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
    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 173
    :cond_24
    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 118
    :cond_9
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 141
    :cond_9
    return-void
.end method

.method public onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz v0, :cond_24

    .line 182
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    sget-object v1, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
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

    .line 182
    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 185
    :cond_24
    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 134
    :cond_9
    return-void
.end method

.method public onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 123
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 71
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->a(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V

    .line 73
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b:Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 80
    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method
