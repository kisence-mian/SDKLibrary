.class public Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/myoffer/e/b/a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 64
    new-instance v0, Lcom/anythink/myoffer/e/b/a;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/e/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    .line 65
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    new-instance v1, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/b/a;->a(Lcom/anythink/myoffer/e/b/b;)V

    .line 124
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
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
    .line 134
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    .line 137
    :cond_14
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 138
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 140
    :cond_28
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 141
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    .line 143
    :cond_3c
    const-string v0, "isDefaultOffer"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 144
    const-string v0, "isDefaultOffer"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    .line 147
    :cond_52
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 148
    :cond_62
    const/4 v0, 0x0

    .line 152
    :goto_63
    return v0

    .line 151
    :cond_64
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x1

    goto :goto_63
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/e/b/a;->b()Z

    move-result v0

    .line 188
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
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
    .line 37
    iput-object p4, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 39
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 40
    const-string v0, "my_oid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    .line 42
    :cond_16
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    const-string v0, "myoffer_setting"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/lang/String;

    .line 45
    :cond_2a
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 46
    const-string v0, "topon_placement"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    .line 50
    :cond_3e
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 51
    :cond_4e
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_61

    .line 52
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "my_oid\u3001topon_placement can not be null!"

    .line 53
    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 52
    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 61
    :cond_61
    :goto_61
    return-void

    .line 58
    :cond_62
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/e/b/a;->a()V

    goto :goto_61
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 181
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 158
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 159
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 161
    invoke-static {p1}, Lcom/anythink/core/b/g/c;->d(Landroid/content/Context;)I

    move-result v2

    .line 162
    if-eqz v1, :cond_26

    .line 163
    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v4, "extra_request_id"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v1, v1, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 166
    const-string v3, "extra_scenario"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_26
    const-string v1, "extra_orientation"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/myoffer/e/b/a;

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/e/b/a;->a(Ljava/util/Map;)V

    .line 171
    :cond_34
    return-void
.end method
