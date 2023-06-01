.class Lcom/ssjj/fnsdk/core/listener/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/m;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/m;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;->onCancel()V

    return-void
.end method
