.class Lcom/ssjj/fnsdk/core/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/r;->a:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelForceUpdate()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onCancelForceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    return-void
.end method

.method public onCancelNormalUpdate()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onCancelNormalUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    return-void
.end method

.method public onCheckVersionFailure()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onCheckVersionFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fnsdk: onException\uff0c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fnsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    return-void
.end method

.method public onForceUpdateLoading()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onForceUpdateLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    return-void
.end method

.method public onNetWorkError()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onNetWorkError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNetWorkError()V

    return-void
.end method

.method public onNormalUpdateLoading()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onNormalUpdateLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    return-void
.end method

.method public onNotNewVersion()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onNotNewVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    return-void
.end method

.method public onNotSDCard()V
    .registers 3

    const-string v0, "fnsdk"

    const-string v1, "fnsdk: onNotSDCard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/r;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    return-void
.end method
