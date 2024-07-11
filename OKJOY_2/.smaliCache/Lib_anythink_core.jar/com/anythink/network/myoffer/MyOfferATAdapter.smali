.class public Lcom/anythink/network/myoffer/MyOfferATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Lcom/anythink/basead/g/e;

.field b:Lcom/anythink/core/common/d/i;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .line 70
    new-instance v0, Lcom/anythink/basead/g/e;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/g/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    if-eqz v0, :cond_a

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/e;->a(Lcom/anythink/basead/f/a;)V

    .line 105
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    .line 107
    :cond_a
    return-void
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/anythink/basead/g/e;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 95
    new-instance v0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    invoke-direct {v0, p1, v1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/g/e;)V

    .line 96
    return-object v0

    .line 98
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "UA_5.7.8"

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
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
            ">;)Z"
        }
    .end annotation

    .line 76
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 77
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    .line 79
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 80
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/d/i;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 83
    :cond_22
    const-string p3, "isDefaultOffer"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 84
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    .line 87
    :cond_36
    new-instance p2, Lcom/anythink/basead/g/e;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/anythink/basead/g/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    .line 88
    const/4 p1, 0x1

    return p1
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

    .line 35
    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    .line 38
    :cond_12
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 39
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 42
    :cond_22
    nop

    .line 1070
    new-instance p2, Lcom/anythink/basead/g/e;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/anythink/basead/g/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/g/e;

    new-instance p3, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/g/e;->a(Lcom/anythink/basead/f/c;)V

    .line 67
    return-void
.end method
