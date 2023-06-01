.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    return-object p0
.end method


# virtual methods
.method public onCompleted(Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    if-eqz p1, :cond_1f

    const-string v1, "orderId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v1

    const-string v2, "create_order"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    if-nez v0, :cond_34

    const-string p1, "SsjjFNOrderListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_34
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onCompleted(Landroid/os/Bundle;)V

    return-void

    :cond_40
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/i;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/i;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V
    .registers 6

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, "create_order"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    if-nez v0, :cond_1d

    const-string p1, "SsjjFNOrderListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    return-void

    :cond_29
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/j;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/j;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
