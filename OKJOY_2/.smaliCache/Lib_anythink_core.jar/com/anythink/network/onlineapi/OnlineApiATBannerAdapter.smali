.class public Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Lcom/anythink/core/common/d/i;

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/anythink/basead/e/a;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 82
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
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b:Ljava/lang/String;

    .line 84
    nop

    .line 85
    const/4 v0, 0x0

    .line 87
    const-string v1, "close_button"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 88
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2d

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    :cond_2d
    const-string v1, "size"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 95
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_40

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 102
    :cond_40
    const-string v1, "320x50"

    :goto_42
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 103
    new-instance p2, Lcom/anythink/basead/e/a;

    sget v2, Lcom/anythink/basead/e/b$a;->b:I

    iget-object v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/e/a;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    .line 104
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 105
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->c(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->a(Ljava/lang/String;)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 104
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/e/c;)V

    .line 110
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/a;)V

    .line 140
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/basead/e/a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Landroid/view/View;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    .line 152
    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    if-eqz v1, :cond_11

    .line 153
    invoke-virtual {v1, v0}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/a;)V

    .line 154
    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    invoke-virtual {v1}, Lcom/anythink/basead/e/a;->b()V

    .line 155
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    .line 157
    :cond_11
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/basead/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 39
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    invoke-virtual {v0}, Lcom/anythink/basead/e/a;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    .line 42
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object v0
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

    .line 176
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 171
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 166
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

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 145
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

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 51
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/e/a;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/c;)V

    .line 78
    return-void
.end method
