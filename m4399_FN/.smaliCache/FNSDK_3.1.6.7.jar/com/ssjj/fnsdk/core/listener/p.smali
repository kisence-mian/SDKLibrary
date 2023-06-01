.class Lcom/ssjj/fnsdk/core/listener/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/p;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/p;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/p;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginFailed(Ljava/lang/String;)V

    return-void
.end method
