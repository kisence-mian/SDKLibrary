.class public Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

.field b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

.field c:Lcom/anythink/network/mintegral/MintegralRewardedVideoSetting;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 22
    const-class v0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->g:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    .line 29
    const-string v0, "{}"

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 36
    new-instance v0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)V

    .line 123
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 124
    new-instance v1, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    .line 125
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;->setRewardVideoListener(Lcom/mintegral/msdk/out/RewardVideoListener;)V

    .line 130
    :goto_1f
    return-void

    .line 127
    :cond_20
    new-instance v1, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    .line 128
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->setRewardVideoListener(Lcom/mintegral/msdk/out/RewardVideoListener;)V

    goto :goto_1f
.end method

.method static synthetic a(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;)Z
    .registers 5
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p2, :cond_2b

    .line 194
    const-string v0, "appid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "appkey"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "unitid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 195
    const-string v0, "unitid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a(Landroid/content/Context;)V

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;->isReady()Z

    move-result v0

    .line 247
    :goto_a
    return v0

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    if-eqz v0, :cond_16

    .line 245
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->isBidReady()Z

    move-result v0

    goto :goto_a

    .line 247
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
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
    .line 134
    iput-object p4, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 135
    if-nez p1, :cond_18

    .line 136
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "activity is null."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 189
    :cond_17
    :goto_17
    return-void

    .line 141
    :cond_18
    if-eqz p3, :cond_22

    instance-of v0, p3, Lcom/anythink/network/mintegral/MintegralRewardedVideoSetting;

    if-eqz v0, :cond_22

    .line 142
    check-cast p3, Lcom/anythink/network/mintegral/MintegralRewardedVideoSetting;

    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->c:Lcom/anythink/network/mintegral/MintegralRewardedVideoSetting;

    .line 146
    :cond_22
    if-nez p2, :cond_38

    .line 147
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_17

    .line 148
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_17

    .line 153
    :cond_38
    const-string v0, "appid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    const-string v1, "appkey"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    const-string v2, "unitid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 158
    :cond_66
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "mintegral appid, appkey or unitid is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_17

    .line 165
    :cond_7a
    const-string v0, "payload"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 166
    const-string v0, "payload"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->e:Ljava/lang/String;

    .line 169
    :cond_8e
    const-string v0, "tp_info"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 170
    const-string v0, "tp_info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->f:Ljava/lang/String;

    .line 173
    :cond_a2
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;)V

    goto/16 :goto_17
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 236
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 231
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    const-string v1, "1"

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    if-eqz v0, :cond_1a

    .line 257
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    const-string v1, "1"

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->showFromBid(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1a
    return-void
.end method

.method public startLoad()V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    if-eqz v0, :cond_16

    .line 209
    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_30

    .line 212
    :goto_11
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/MTGRewardVideoHandler;->load()V

    .line 215
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    if-eqz v0, :cond_2d

    .line 217
    :try_start_1a
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/out/CustomInfoManager;->setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_26} :catch_2e

    .line 220
    :goto_26
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->loadFromBid(Ljava/lang/String;)V

    .line 222
    :cond_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_26

    :catch_30
    move-exception v0

    goto :goto_11
.end method
