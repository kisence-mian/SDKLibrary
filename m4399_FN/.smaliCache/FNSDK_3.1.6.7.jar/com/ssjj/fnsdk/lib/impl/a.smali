.class public Lcom/ssjj/fnsdk/lib/impl/a;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method


# virtual methods
.method public getCfgKey(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    const/4 p1, -0x1

    const-string v1, "param is null"

    invoke-interface {p2, p1, v1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-object v0

    :cond_c
    const-string v1, "pluginId"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isCache"

    invoke-virtual {p1, v4, v3}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCfgKeyCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_34
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCfgKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3c
    if-eqz p2, :cond_44

    const/4 v1, 0x1

    const-string v2, "succ"

    invoke-interface {p2, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_44
    return-object p1
.end method

.method public isCfgKeyForce(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_c

    if-eqz p2, :cond_b

    const/4 p1, -0x1

    const-string v1, "param is null"

    invoke-interface {p2, p1, v1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_b
    return-object v0

    :cond_c
    const-string v1, "pluginId"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isCache"

    invoke-virtual {p1, v3, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_33

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->isCfgKeyCacheForce(Ljava/lang/String;)Z

    move-result v1

    goto :goto_40

    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->isCfgKeyForce(Ljava/lang/String;)Z

    move-result v1

    :goto_40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_50

    const/4 v1, 0x1

    const-string v2, "succ"

    invoke-interface {p2, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_50
    return-object p1
.end method
