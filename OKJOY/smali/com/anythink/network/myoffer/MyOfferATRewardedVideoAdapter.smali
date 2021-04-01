.class public Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/myoffer/e/c/a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 66
    new-instance v0, Lcom/anythink/myoffer/e/c/a;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/e/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    .line 67
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    new-instance v1, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/c/a;->a(Lcom/anythink/myoffer/e/c/b;)V

    .line 130
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 203
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    const-string v0, "UA_5.5.6"

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
    .line 140
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 143
    :cond_14
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 144
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 146
    :cond_28
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 147
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 149
    :cond_3c
    const-string v0, "isDefaultOffer"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 150
    const-string v0, "isDefaultOffer"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->e:Z

    .line 153
    :cond_52
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 154
    :cond_62
    const/4 v0, 0x0

    .line 157
    :goto_63
    return v0

    .line 156
    :cond_64
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_63
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/e/c/a;->b()Z

    move-result v0

    .line 192
    :goto_a
    return v0

    :cond_b
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
    .line 39
    iput-object p4, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 41
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 42
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    .line 44
    :cond_16
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 45
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->b:Ljava/lang/String;

    .line 47
    :cond_2a
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 48
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    .line 52
    :cond_3e
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 53
    :cond_4e
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    if-eqz v0, :cond_61

    .line 54
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "my_oid\u3001topon_placement can not be null!"

    .line 55
    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 54
    invoke-interface {v0, p0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 63
    :cond_61
    :goto_61
    return-void

    .line 60
    :cond_62
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/e/c/a;->a()V

    goto :goto_61
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 185
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 180
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 7

    .prologue
    .line 162
    invoke-static {p1}, Lcom/anythink/core/b/g/c;->d(Landroid/content/Context;)I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 164
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 165
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_26

    .line 167
    invoke-virtual {v2}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v3

    .line 168
    const-string v4, "extra_request_id"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v2, v2, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 170
    const-string v3, "extra_scenario"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_26
    const-string v2, "extra_orientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d:Lcom/anythink/myoffer/e/c/a;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/c/a;->a(Ljava/util/Map;)V

    .line 175
    :cond_34
    return-void
.end method
