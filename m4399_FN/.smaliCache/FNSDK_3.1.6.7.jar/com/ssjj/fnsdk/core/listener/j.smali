.class Lcom/ssjj/fnsdk/core/listener/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNException;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;Lcom/ssjj/fnsdk/core/SsjjFNException;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/j;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/j;->b:Lcom/ssjj/fnsdk/core/SsjjFNException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/j;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/j;->b:Lcom/ssjj/fnsdk/core/SsjjFNException;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    return-void
.end method
