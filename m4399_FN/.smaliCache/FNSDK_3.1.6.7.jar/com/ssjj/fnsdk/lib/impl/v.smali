.class public Lcom/ssjj/fnsdk/lib/impl/v;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->login(Landroid/app/Activity;)V

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    const-string v1, "succ"

    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_13
    return-void
.end method

.method public logout(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logout(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "logout"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_26

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, -0x1

    :goto_1c
    if-eqz v0, :cond_21

    const-string v0, "succ"

    goto :goto_23

    :cond_21
    const-string v0, "not support"

    :goto_23
    invoke-interface {p2, v1, v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_26
    return-void
.end method

.method public setCallbackLoginState(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    if-nez p2, :cond_b

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/w;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/w;-><init>(Lcom/ssjj/fnsdk/lib/impl/v;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    :goto_13
    return-void
.end method

.method public setOauthData(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 4

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "oauthData"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_1a

    const-string v0, "oauth"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public switchUser(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->switchUser(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "switchUser"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz p2, :cond_26

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, -0x1

    :goto_1c
    if-eqz v0, :cond_21

    const-string v0, "succ"

    goto :goto_23

    :cond_21
    const-string v0, "not support"

    :goto_23
    invoke-interface {p2, v1, v0, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_26
    return-void
.end method
