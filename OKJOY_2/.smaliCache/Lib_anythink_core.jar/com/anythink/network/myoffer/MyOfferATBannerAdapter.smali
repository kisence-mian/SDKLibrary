.class public Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/core/common/d/i;

.field private c:Lcom/anythink/basead/g/b;

.field private d:Landroid/view/View;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/basead/g/b;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .line 83
    new-instance v0, Lcom/anythink/basead/g/b;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/g/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    .line 84
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V

    invoke-virtual {v0, p1}, Lcom/anythink/basead/g/b;->a(Lcom/anythink/basead/f/a;)V

    .line 112
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Landroid/view/View;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    if-eqz v1, :cond_11

    .line 136
    invoke-virtual {v1, v0}, Lcom/anythink/basead/g/b;->a(Lcom/anythink/basead/f/a;)V

    .line 137
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    invoke-virtual {v1}, Lcom/anythink/basead/g/b;->c()V

    .line 138
    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    .line 140
    :cond_11
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    if-nez v0, :cond_16

    .line 36
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/basead/g/b;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    invoke-virtual {v0}, Lcom/anythink/basead/g/b;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    .line 40
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 154
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 149
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

    .line 116
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 117
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    .line 120
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 121
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 124
    :cond_22
    const-string p3, "isDefaultOffer"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 125
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Z

    .line 128
    :cond_36
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V

    .line 129
    const/4 p1, 0x1

    return p1
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

    .line 45
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    .line 48
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 49
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 52
    :cond_22
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V

    .line 54
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Lcom/anythink/basead/g/b;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/g/b;->a(Lcom/anythink/basead/f/c;)V

    .line 80
    return-void
.end method
