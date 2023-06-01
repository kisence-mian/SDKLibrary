.class public Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;
.super Ljava/lang/Object;


# instance fields
.field public callbackInfo:Ljava/lang/String;

.field public coinName:Ljava/lang/String;

.field public gameName:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public payWay:I

.field public price:Ljava/lang/String;

.field public productCount:Ljava/lang/String;

.field public productDesc:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public rate:I

.field public roleId:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->payWay:I

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->payWay:I

    if-eqz p1, :cond_47

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->coinName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->coinName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->gameName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->gameName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    iget v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->payWay:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->payWay:I

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    iget v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    :cond_47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n serverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n price = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n productId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n productCount = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n productName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n productDesc = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n coinName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->coinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n rate = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n callbackInfo = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
