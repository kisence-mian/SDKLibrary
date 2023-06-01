.class Lcom/ssjj/fnsdk/core/listener/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/r;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/r;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLogout()V

    return-void
.end method
