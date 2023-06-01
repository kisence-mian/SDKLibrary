.class public Lcom/ssjj/fnsdk/lib/impl/r;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method


# virtual methods
.method public hideFloatBar(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->hideFloatBar(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method

.method public showBBS(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showBBS(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method

.method public showFloatBar(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showFloatBar(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method

.method public showGameCenter(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showGameCenter(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method

.method public showUserCenter(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->showUserCenter(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method
