.class public Lcom/ssjj/fnsdk/lib/impl/s;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method


# virtual methods
.method public pay(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 7

    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    const-string p1, "param is null"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;-><init>()V

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    const-string v1, "productName"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    const-string v1, "productDesc"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    const-string v1, "productCount"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rate"

    invoke-virtual {p1, v2, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    const-string v1, "productId"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    const-string v1, "coinName"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->coinName:Ljava/lang/String;

    const-string v1, "callbackInfo"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    const-string v1, "serverId"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    const-string v1, "roleName"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleName:Ljava/lang/String;

    const-string v1, "roleId"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleId:Ljava/lang/String;

    const-string v1, "level"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    if-nez v1, :cond_91

    const-string v1, "roleLevel"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    :cond_91
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/lib/impl/t;

    invoke-direct {v3, p0, p2, p1}, Lcom/ssjj/fnsdk/lib/impl/t;-><init>(Lcom/ssjj/fnsdk/lib/impl/s;Lcom/ssjj/fnsdk/lib/sdk/FNBack;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    return-void
.end method
