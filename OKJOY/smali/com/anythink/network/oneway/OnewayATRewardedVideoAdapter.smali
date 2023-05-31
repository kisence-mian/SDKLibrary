.class public Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

.field private final d:Ljava/lang/String;

.field private e:Lmobi/oneway/export/Ad/OWRewardedAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->d:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATInitManager;->getInstance()Lcom/anythink/network/oneway/OnewayATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/oneway/OnewayATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATConst;->getNetworkVersion()Ljava/lang/String;

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
    .line 117
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "slot_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 118
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 119
    const-string v0, "slot_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    .registers 8
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
    .line 80
    const-string v0, ""

    .line 81
    const-string v1, ""

    .line 83
    const-string v2, "publisher_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 84
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_16
    const-string v2, "slot_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 87
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_28
    iput-object p4, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 92
    :cond_36
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->d:Ljava/lang/String;

    const-string v1, "publishId or placementId is empty, place check once more...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_50

    .line 94
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, " publishId or slotId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 113
    :cond_50
    :goto_50
    return-void

    .line 101
    :cond_51
    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATInitManager;->getInstance()Lcom/anythink/network/oneway/OnewayATInitManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/oneway/OnewayATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;)V

    .line 104
    new-instance v0, Lmobi/oneway/export/Ad/OWRewardedAd;

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-direct {v0, p1, v1, v2}, Lmobi/oneway/export/Ad/OWRewardedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    .line 105
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 106
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->d:Ljava/lang/String;

    const-string v1, "loadRewardVideoAd: ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_50

    .line 108
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    invoke-interface {v0, p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    goto :goto_50

    .line 111
    :cond_80
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->loadAd()V

    goto :goto_50
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 149
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 144
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-virtual {v0, p1}, Lmobi/oneway/export/Ad/OWRewardedAd;->show(Landroid/app/Activity;)V

    .line 135
    :cond_b
    return-void
.end method
