.class Lcom/ssjj/fnsdk/core/listener/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/c;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/listener/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/c;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/listener/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;->onCheckBind(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
