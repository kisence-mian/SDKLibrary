.class public Lcom/anythink/network/adx/AdxATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Lcom/anythink/basead/e/e;

.field b:Lcom/anythink/core/common/d/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 56
    const-string v0, "basead_params"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 57
    new-instance p2, Lcom/anythink/basead/e/e;

    sget v0, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v1, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, v0, v1}, Lcom/anythink/basead/e/e;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/e/e;

    .line 58
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/e/e;

    if-eqz v0, :cond_7

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/e/e;

    .line 77
    :cond_7
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "Adx"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 92
    const-string v0, ""

    return-object v0
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

    .line 31
    nop

    .line 1056
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/i;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/d/i;

    .line 1057
    new-instance p2, Lcom/anythink/basead/e/e;

    sget p3, Lcom/anythink/basead/e/b$a;->a:I

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/d/i;

    invoke-direct {p2, p1, p3, v0}, Lcom/anythink/basead/e/e;-><init>(Landroid/content/Context;ILcom/anythink/core/common/d/i;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/e/e;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/e/e;

    new-instance p3, Lcom/anythink/network/adx/AdxATAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/adx/AdxATAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/e/e;->a(Lcom/anythink/basead/f/d;)V

    .line 53
    return-void
.end method
