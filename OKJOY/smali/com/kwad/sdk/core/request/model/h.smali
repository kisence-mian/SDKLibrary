.class public Lcom/kwad/sdk/core/request/model/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/request/model/h;
    .registers 3

    new-instance v1, Lcom/kwad/sdk/core/request/model/h;

    invoke-direct {v1}, Lcom/kwad/sdk/core/request/model/h;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getRequestExtentParamsProxy()Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;->getExtentParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v2, "user_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/kwad/sdk/core/request/model/h;->a:Ljava/lang/String;

    :cond_1b
    return-object v1
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/request/model/h;->a:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
