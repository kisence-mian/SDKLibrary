.class Lcom/ssjj/fnsdk/core/listener/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/g;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/g;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onSucceed()V

    return-void
.end method
