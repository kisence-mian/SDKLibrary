.class Lcom/ssjj/fnsdk/core/listener/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/n;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/listener/n;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/n;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/n;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    return-void
.end method
