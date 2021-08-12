.class public Lcom/kwad/sdk/api/SdkConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/SdkConfig$Builder;
    }
.end annotation


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field public appKey:Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field public appName:Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field public appWebKey:Ljava/lang/String;
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field private canReadICCID:Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field private canReadMacAddress:Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field private canReadNearbyWifiList:Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field public enableDebug:Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field

.field public showNotification:Z
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/api/SdkConfig$Builder;)V
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->enableDebug:Z
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$000(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->enableDebug:Z

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appId:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$100(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$200(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/SdkConfig;->appName:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$300(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/SdkConfig;->appKey:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appWebKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$400(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/api/SdkConfig;->appWebKey:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$500(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->showNotification:Z

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$600(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadMacAddress:Z

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$700(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadNearbyWifiList:Z

    # getter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z
    invoke-static {p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$800(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadICCID:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/api/SdkConfig$Builder;Lcom/kwad/sdk/api/SdkConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/api/SdkConfig;-><init>(Lcom/kwad/sdk/api/SdkConfig$Builder;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/api/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/SdkConfig$Builder;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "enableDebug"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->enableDebug:Z
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$002(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z

    const-string p0, "appId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appId:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$102(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "appName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appName:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$202(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "appKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appKey:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$302(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "appWebKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->appWebKey:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$402(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "showNotification"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$502(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z

    const-string p0, "canReadMacAddress"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$602(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z

    const-string p0, "canReadNearbyWifiList"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$702(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z

    const-string p0, "canReadICCID"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    # setter for: Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z
    invoke-static {v0, p0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->access$802(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_60
    invoke-virtual {v0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->build()Lcom/kwad/sdk/api/SdkConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canReadICCID()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadICCID:Z

    return v0
.end method

.method public canReadMacAddress()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadMacAddress:Z

    return v0
.end method

.method public canReadNearbyWifiList()Z
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iget-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadNearbyWifiList:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "enableDebug"

    iget-boolean v2, p0, Lcom/kwad/sdk/api/SdkConfig;->enableDebug:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appName"

    iget-object v2, p0, Lcom/kwad/sdk/api/SdkConfig;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/kwad/sdk/api/SdkConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appWebKey"

    iget-object v2, p0, Lcom/kwad/sdk/api/SdkConfig;->appWebKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "showNotification"

    iget-boolean v2, p0, Lcom/kwad/sdk/api/SdkConfig;->showNotification:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "canReadMacAddress"

    iget-boolean v2, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadMacAddress:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "canReadNearbyWifiList"

    iget-boolean v2, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadNearbyWifiList:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "canReadICCID"

    iget-boolean v2, p0, Lcom/kwad/sdk/api/SdkConfig;->canReadICCID:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
