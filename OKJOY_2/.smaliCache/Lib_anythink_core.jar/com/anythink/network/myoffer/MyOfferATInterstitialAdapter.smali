.class public Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field a:Lcom/anythink/core/common/d/i;

.field private b:Ljava/lang/String;

.field private c:Lcom/anythink/basead/g/d;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .line 74
    new-instance v0, Lcom/anythink/basead/g/d;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/g/d;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    if-eqz v0, :cond_a

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/f/e;)V

    .line 187
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    .line 189
    :cond_a
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 193
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 180
    const-string v0, "UA_5.7.8"

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 5
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
            ">;)Z"
        }
    .end annotation

    .line 85
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 86
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 88
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 89
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 91
    :cond_22
    const-string p3, "isDefaultOffer"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 92
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Z

    .line 96
    :cond_36
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    .line 97
    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {v0}, Lcom/anythink/basead/g/d;->a()Z

    move-result v0

    return v0

    .line 174
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
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

    .line 42
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 45
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 46
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 49
    :cond_22
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    .line 51
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/f/c;)V

    .line 71
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    .line 102
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 103
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 105
    invoke-static {p1}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    move-result p1

    .line 106
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v2, "extra_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mScenario:Ljava/lang/String;

    const-string v2, "extra_scenario"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "extra_orientation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    new-instance v1, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;

    invoke-direct {v1, p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V

    invoke-virtual {p1, v1}, Lcom/anythink/basead/g/d;->a(Lcom/anythink/basead/f/e;)V

    .line 164
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Lcom/anythink/basead/g/d;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/g/d;->a(Ljava/util/Map;)V

    .line 166
    :cond_38
    return-void
.end method
