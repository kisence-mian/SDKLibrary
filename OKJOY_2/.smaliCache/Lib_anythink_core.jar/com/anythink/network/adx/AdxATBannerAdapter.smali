.class public Lcom/anythink/network/adx/AdxATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Lcom/anythink/core/common/d/i;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/basead/e/a;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 83
    nop

    .line 84
    nop

    .line 86
    const-string v0, "close_button"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 87
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_19

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1a

    .line 93
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const-string v1, "size"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 94
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_2d

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 101
    :cond_2d
    const-string v1, "320x50"

    :goto_2f
    const-string v2, "basead_params"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->a:Lcom/anythink/core/common/d/i;

    .line 102
    new-instance p2, Lcom/anythink/basead/e/a;

    sget v2, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->a:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/e/a;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    .line 103
    new-instance p1, Lcom/anythink/basead/e/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/e/c$a;-><init>()V

    .line 104
    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/c$a;->c(I)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v1}, Lcom/anythink/basead/e/c$a;->a(Ljava/lang/String;)Lcom/anythink/basead/e/c$a;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/anythink/basead/e/c$a;->a()Lcom/anythink/basead/e/c;

    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/e/c;)V

    .line 109
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    new-instance p2, Lcom/anythink/network/adx/AdxATBannerAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATBannerAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/a;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/e/a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/adx/AdxATBannerAdapter;)Landroid/view/View;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    if-eqz v1, :cond_11

    .line 151
    invoke-virtual {v1, v0}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/a;)V

    .line 152
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    invoke-virtual {v1}, Lcom/anythink/basead/e/a;->b()V

    .line 153
    iput-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    .line 155
    :cond_11
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

    if-nez v0, :cond_16

    .line 37
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/anythink/basead/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    invoke-virtual {v0}, Lcom/anythink/basead/e/a;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

    .line 41
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->b:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->d:Landroid/view/View;

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

    .line 174
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 169
    const-string v0, "Adx"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->a:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 164
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

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 144
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

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 52
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter;->c:Lcom/anythink/basead/e/a;

    new-instance p2, Lcom/anythink/network/adx/AdxATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATBannerAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/e/a;->a(Lcom/anythink/basead/f/c;)V

    .line 80
    return-void
.end method
