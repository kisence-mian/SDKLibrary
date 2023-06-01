.class Lcom/ssjj/fnsdk/core/listener/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/i;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/i;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/i;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/i;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onCompleted(Landroid/os/Bundle;)V

    return-void
.end method
