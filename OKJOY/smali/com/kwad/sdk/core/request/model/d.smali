.class public Lcom/kwad/sdk/core/request/model/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/request/model/d;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/request/model/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/model/d;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForAdLocation()Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/kwad/sdk/export/proxy/AdLocationProxy;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/request/model/d;->a:D

    invoke-interface {v1}, Lcom/kwad/sdk/export/proxy/AdLocationProxy;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/request/model/d;->b:D

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/c;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/request/model/d;->a:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/request/model/d;->b:D

    goto :goto_17
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v2, p0, Lcom/kwad/sdk/core/request/model/d;->a:D

    const-string v1, "latitude"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    iget-wide v2, p0, Lcom/kwad/sdk/core/request/model/d;->b:D

    const-string v1, "longitude"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    return-object v0
.end method
