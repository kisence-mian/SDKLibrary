.class Lcom/ssjj/fnsdk/lib/impl/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/h;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/h;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/n;->a:Lcom/ssjj/fnsdk/lib/impl/h;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelForceUpdate()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_c

    const-string v1, "cancel force update"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_c
    return-void
.end method

.method public onCancelNormalUpdate()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "cancel normal update"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onCheckVersionFailure()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "check update fail"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_18
    return-void
.end method

.method public onForceUpdateLoading()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "start force update"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onNetWorkError()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "net error"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onNormalUpdateLoading()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "start normal update"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onNotNewVersion()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "no update"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method

.method public onNotSDCard()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/n;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    if-eqz v0, :cond_b

    const-string v1, "no sdcard"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-void
.end method
