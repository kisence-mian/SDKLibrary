.class public final Lcom/appsflyer/internal/as;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_28

    .line 53
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling onAppOpenAttribution with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAppOpenAttribution(Ljava/util/Map;)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    .line 57
    return-void

    .line 55
    :catchall_20
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :cond_28
    return-void
.end method

.method static AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .registers 3

    .line 38
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_31

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DDL] Calling onDeepLinking with:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 41
    :try_start_1e
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/deeplink/DeepLinkListener;->onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    .line 44
    return-void

    .line 42
    :catchall_28
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void

    .line 46
    :cond_31
    const-string p0, "[DDL] skipping, no callback registered"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static AFInAppEventType(Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_21

    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DDL] Error occurred: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 16
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    const/4 v0, 0x0

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-static {p0}, Lcom/appsflyer/internal/as;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    return-void

    .line 17
    :cond_21
    invoke-static {p0}, Lcom/appsflyer/internal/as;->valueOf(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static AFInAppEventType(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/appsflyer/internal/f;->AFInAppEventParameterName()Lcom/appsflyer/internal/f;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/f;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz v0, :cond_37

    .line 25
    const/4 v0, 0x0

    :try_start_9
    invoke-static {p0}, Lcom/appsflyer/deeplink/DeepLink;->values(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p0

    .line 1139
    iget-object v1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v2, "is_deferred"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_15} :catch_20
    .catchall {:try_start_9 .. :try_end_15} :catchall_1e

    .line 30
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_1a
    invoke-static {v1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 31
    return-void

    .line 30
    :catchall_1e
    move-exception p0

    goto :goto_2e

    .line 26
    :catch_20
    move-exception p0

    .line 27
    :try_start_21
    const-string v1, "[DDL] Error occurred"

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    sget-object p0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    .line 30
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, p0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto :goto_1a

    :goto_2e
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, v0}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-static {v1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 31
    throw p0

    .line 33
    :cond_37
    invoke-static {p0}, Lcom/appsflyer/internal/as;->AFInAppEventParameterName(Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method private static valueOf(Ljava/lang/String;)V
    .registers 3

    .line 62
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_1f

    .line 64
    :try_start_4
    const-string v0, "Calling onAppOpenAttributionFailure with: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-interface {v0, p0}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_17

    .line 68
    return-void

    .line 66
    :catchall_17
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_1f
    return-void
.end method
