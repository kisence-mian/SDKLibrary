.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    return-object p0
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-2"

    const/4 v2, 0x0

    const-string v3, "pay"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    if-nez v0, :cond_16

    const-string v0, "SsjjFNPayListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onCancel()V

    return-void

    :cond_22
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/m;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/m;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, "pay"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    if-nez v0, :cond_19

    const-string p1, "SsjjFNPayListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onFailed(Ljava/lang/String;)V

    return-void

    :cond_25
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/l;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/l;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartPay(Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    const-string v2, "price"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    const-string v3, "productId"

    invoke-virtual {v0, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    const-string v4, "productName"

    invoke-virtual {v0, v4, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    const-string v5, "productDesc"

    invoke-virtual {v0, v5, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    const-string v6, "productCount"

    invoke-virtual {v0, v6, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    const-string v7, "callbackInfo"

    invoke-virtual {v0, v7, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_37
    iget-object v8, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleId"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleName"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleLevel"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serverId"

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    move-exception p1

    :goto_7a
    const-string p1, "eventData"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object p1

    const-string v1, "start_pay"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public onSucceed()V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    const-string v3, "pay"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    if-nez v0, :cond_16

    const-string v0, "SsjjFNPayListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onSucceed()V

    return-void

    :cond_22
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/k;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/k;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
