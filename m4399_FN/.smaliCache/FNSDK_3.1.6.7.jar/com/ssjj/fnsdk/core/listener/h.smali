.class Lcom/ssjj/fnsdk/core/listener/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/h;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/h;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onFailed(Ljava/lang/String;)V

    return-void
.end method
