.class public abstract Lcom/kwad/sdk/core/network/d;
.super Lcom/kwad/sdk/core/network/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected e()V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/kwad/sdk/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-class v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-static {v0}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    const-string v1, "KEY_AD_UNIVERSE"

    invoke-interface {v0, v1}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;->a(Ljava/lang/String;)Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;

    move-result-object v0

    const-string v1, "trace-context"

    if-eqz v0, :cond_47

    :try_start_28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "laneId"

    invoke-virtual {v0}, Lcom/kwad/sdk/plugin/DevelopMangerPlugin$DevelopValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    goto :goto_4c

    :cond_47
    const-string v0, "{\"laneId\":\"ad_test.universe\"}"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method protected f()V
    .registers 3

    const-string v0, "protocolVersion"

    const-string v1, "2.0"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKVersion"

    const-string v1, "3.3.6"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKVersionCode"

    const v1, 0x2e3e48

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkApiVersion"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersionCode()I

    move-result v0

    const-string v1, "sdkApiVersionCode"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;I)V

    sget v0, Lcom/kwad/sdk/d;->a:I

    const-string v1, "sdkType"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/b;->a()Lcom/kwad/sdk/core/g/a/b;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/network/d;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/kwad/sdk/core/g/a/c;->a(Z)Lcom/kwad/sdk/core/g/a/c;

    move-result-object v0

    const-string v1, "deviceInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/h;->a()Lcom/kwad/sdk/core/g/a/h;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/d;->a()Lcom/kwad/sdk/core/g/a/d;

    move-result-object v0

    const-string v1, "geoInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/i;->a()Lcom/kwad/sdk/core/g/a/i;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/k;->a()Lcom/kwad/sdk/core/g/a/k;

    move-result-object v0

    const-string v1, "userInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/f;->a()Lcom/kwad/sdk/core/g/a/f;

    move-result-object v0

    if-eqz v0, :cond_7c

    const-string v1, "localConfig"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    :cond_7c
    return-void
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
