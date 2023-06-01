.class Lcom/ssjj/fnsdk/core/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/u;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelForceUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    :cond_7
    return-void
.end method

.method public onCancelNormalUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    :cond_7
    return-void
.end method

.method public onCheckVersionFailure()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    :cond_7
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onForceUpdateLoading()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    :cond_7
    return-void
.end method

.method public onNetWorkError()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNetWorkError()V

    :cond_7
    return-void
.end method

.method public onNormalUpdateLoading()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    :cond_7
    return-void
.end method

.method public onNotNewVersion()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    :cond_7
    return-void
.end method

.method public onNotSDCard()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/u;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    :cond_7
    return-void
.end method
