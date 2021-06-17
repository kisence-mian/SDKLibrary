.class public Lcom/appsflyer/AppsFlyer2dXConversionCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;
.implements Lcom/appsflyer/deeplink/DeepLinkListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    const-string v1, "status"

    const-string v2, "failure"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :cond_19
    goto :goto_2d

    :sswitch_1a
    const-string v1, "onInstallConversionFailure"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p2, 0x0

    goto :goto_2d

    :sswitch_24
    const-string v1, "onAttributionFailure"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p2, 0x1

    :goto_2d
    packed-switch p2, :pswitch_data_4a

    goto :goto_39

    .line 68
    :pswitch_31
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onAttributionFailureNative(Ljava/lang/Object;)V

    goto :goto_39

    .line 65
    :pswitch_35
    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onInstallConversionFailureNative(Ljava/lang/Object;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_3a

    .line 66
    return-void

    .line 74
    :goto_39
    return-void

    .line 73
    :catch_3a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    return-void

    nop

    :sswitch_data_40
    .sparse-switch
        -0x52d9d3b6 -> :sswitch_24
        0x3ea0a838 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onAppOpenAttributionNative(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public native onAppOpenAttributionNative(Ljava/lang/Object;)V
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .registers 3

    .line 47
    const-string v0, "onInstallConversionFailure"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public native onAttributionFailureNative(Ljava/lang/Object;)V
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .registers 3

    .line 37
    const-string v0, "onAttributionFailure"

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onInstallConversionDataLoadedNative(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyer2dXConversionCallback;->onDeepLinkingNative(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 53
    return-void
.end method

.method public native onDeepLinkingNative(Lcom/appsflyer/deeplink/DeepLinkResult;)V
.end method

.method public native onInstallConversionDataLoadedNative(Ljava/lang/Object;)V
.end method

.method public native onInstallConversionFailureNative(Ljava/lang/Object;)V
.end method
