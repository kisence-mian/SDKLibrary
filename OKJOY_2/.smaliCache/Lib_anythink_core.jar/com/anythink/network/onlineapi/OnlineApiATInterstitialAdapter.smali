.class public Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field a:Lcom/anythink/core/common/d/i;

.field b:Lcom/anythink/basead/e/d;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 142
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->c:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    const/4 v1, -0x1

    .line 147
    const-string v2, "v_m"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 148
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2d

    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    :cond_2d
    const-string v2, "s_c_t"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 155
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_43

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    :cond_43
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 162
    new-instance p2, Lcom/anythink/basead/e/d;

    sget v2, Lcom/anythink/basead/e/b$a;->b:I

    iget-object v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/e/d;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    .line 163
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 164
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->a(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->b(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/e/c;)V

    .line 168
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v0}, Lcom/anythink/basead/e/d;->b()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    .line 176
    :cond_a
    return-void
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 190
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 185
    const-string v0, ""

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4
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

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 137
    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    if-eqz v0, :cond_11

    .line 196
    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->d:Ljava/util/Map;

    .line 197
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    invoke-virtual {v0}, Lcom/anythink/basead/e/d;->c()Z

    move-result v0

    return v0

    .line 199
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
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

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 108
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/f/c;)V

    .line 132
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 5

    .line 38
    invoke-static {p1}, Lcom/anythink/core/common/g/d;->d(Landroid/content/Context;)I

    move-result p1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->mScenario:Ljava/lang/String;

    const-string v2, "extra_scenario"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "extra_orientation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    new-instance v1, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)V

    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/d;->a(Lcom/anythink/basead/f/e;)V

    .line 98
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    if-eqz p1, :cond_2b

    .line 99
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/d;->a(Ljava/util/Map;)V

    .line 101
    :cond_2b
    return-void
.end method
