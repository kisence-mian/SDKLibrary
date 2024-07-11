.class public Lcom/anythink/network/onlineapi/OnlineApiATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Lcom/anythink/basead/e/e;

.field b:Lcom/anythink/core/common/d/i;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
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

    .line 59
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
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c:Ljava/lang/String;

    .line 60
    const-string v0, "basead_params"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 61
    new-instance p2, Lcom/anythink/basead/e/e;

    sget v0, Lcom/anythink/basead/e/b$a;->b:I

    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v0, v1}, Lcom/anythink/basead/e/e;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/e/e;

    .line 62
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/e/e;

    if-eqz v0, :cond_7

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/e/e;

    .line 86
    :cond_7
    return-void
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .registers 2

    .line 78
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 90
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 101
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

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 68
    const/4 p1, 0x1

    return p1
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

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/e/e;

    new-instance p3, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/e/e;->a(Lcom/anythink/basead/f/d;)V

    .line 56
    return-void
.end method
