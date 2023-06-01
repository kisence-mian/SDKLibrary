.class Lcom/ssjj/fnsdk/core/listener/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/f;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/f;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;->onCompleted()V

    return-void
.end method
