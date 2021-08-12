.class public Lcom/anythink/network/ks/KSATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:J

.field b:Lcom/kwad/sdk/api/KsRewardVideoAd;

.field c:I

.field d:Z

.field e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 152
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    iget-wide v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a:J

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;

    invoke-direct {v2, p0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V

    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsLoadManager;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 174
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V
    .registers 4

    .line 1152
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    iget-wide v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a:J

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 1153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object v0

    .line 1154
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object v0

    .line 1155
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;

    invoke-direct {v2, p0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;-><init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V

    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsLoadManager;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 25
    return-void
.end method

.method static synthetic n(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v0, :cond_a

    .line 179
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setRewardAdInteractionListener(Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;)V

    .line 180
    iput-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 182
    :cond_a
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 112
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 3

    .line 187
    :try_start_0
    iget-wide v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 189
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 196
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->isAdEnable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
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

    .line 118
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    const-string v1, "position_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_81

    .line 127
    :cond_1d
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a:J

    .line 129
    const-string v0, "orientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 130
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->c:I

    .line 133
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->e:Z

    .line 134
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 135
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->e:Z

    .line 138
    :cond_54
    const-string v0, "KS_RV_SKIP_AFTER_THIRTY_SECOND"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 139
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 140
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_6d

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    goto :goto_6e

    :cond_6d
    const/4 p3, 0x0

    :goto_6e
    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->d:Z

    .line 143
    :cond_70
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/ks/KSATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/ks/KSATInitManager$a;)V

    .line 149
    return-void

    .line 122
    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_8e

    .line 123
    iget-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "kuaishou app_id or position_id is empty."

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_8e
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    if-eqz v0, :cond_3b

    .line 39
    if-eqz p1, :cond_3a

    .line 40
    :try_start_6
    new-instance v1, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsRewardVideoAd;->setRewardAdInteractionListener(Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;)V

    .line 91
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    iget v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 92
    :goto_1b
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->showLandscape(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->d:Z

    .line 93
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->skipThirtySecond(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->e:Z

    .line 94
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-interface {v1, p1, v0}, Lcom/kwad/sdk/api/KsRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    goto :goto_3a

    .line 100
    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    .line 101
    :cond_3a
    :goto_3a
    return-void

    .line 103
    :cond_3b
    :goto_3b
    return-void
.end method
