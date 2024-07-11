.class public Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/basead/g/g;

.field c:Lcom/anythink/core/common/d/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 88
    new-instance v0, Lcom/anythink/basead/g/g;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/anythink/basead/g/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    .line 89
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {v0, p1}, Lcom/anythink/basead/g/g;->a(Lcom/anythink/basead/f/a;)V

    .line 117
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 80
    invoke-virtual {v0}, Lcom/anythink/basead/g/g;->b()V

    .line 81
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    .line 84
    :cond_a
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/d/i;

    .line 85
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "UA_5.7.8"

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/anythink/basead/g/g;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
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

    .line 33
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 34
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    .line 37
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 38
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/d/i;

    .line 41
    :cond_22
    nop

    .line 1088
    new-instance p2, Lcom/anythink/basead/g/g;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    invoke-direct {p2, p1, p3, v0}, Lcom/anythink/basead/g/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    .line 1089
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/g/g;->a(Lcom/anythink/basead/f/a;)V

    .line 43
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/g/g;->a(Lcom/anythink/basead/f/c;)V

    .line 63
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    .line 72
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/g/g;

    if-eqz p1, :cond_7

    .line 73
    invoke-virtual {p1, p2}, Lcom/anythink/basead/g/g;->a(Landroid/view/ViewGroup;)V

    .line 75
    :cond_7
    return-void
.end method
