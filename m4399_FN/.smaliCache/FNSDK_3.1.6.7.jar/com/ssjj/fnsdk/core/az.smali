.class Lcom/ssjj/fnsdk/core/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/az;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/az;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/az;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/az;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/az;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/az;->b:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/az;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOrderIdSpecial = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/az;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v0, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onCompleted(Landroid/os/Bundle;)V
    :try_end_31
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_49

    :catch_32
    move-exception v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNException;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/az;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v2

    const v3, 0xf4241

    invoke-direct {v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/az;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;

    invoke-interface {v2, v1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onException(Lcom/ssjj/fnsdk/core/SsjjFNException;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :goto_49
    return-void
.end method
