.class public interface abstract Lcom/kwad/sdk/api/core/IKsAdSDK;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    value = "com.kwad.sdk.KsAdSDKImpl"
.end annotation


# virtual methods
.method public abstract deleteCache()V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getAdManager()Lcom/kwad/sdk/api/KsLoadManager;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getApiVersion()Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getApiVersionCode()I
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getAppId()Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getAppInfo()Lorg/json/JSONObject;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getDeviceInfo()Lorg/json/JSONObject;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getDid()Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getNetworkInfo()Lorg/json/JSONObject;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getSDKType()I
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract getSDKVersionCode()I
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract isDebugLogEnable()Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/api/proxy/IComponentProxy;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract reportBatchEvent(ILjava/util/Map;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApiVersion(Ljava/lang/String;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract setApiVersionCode(I)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract setAppTag(Ljava/lang/String;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract setIsExternal(Z)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method

.method public abstract unInit()V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicApi;
    .end annotation
.end method
