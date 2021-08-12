.class public Lcom/kwad/sdk/core/g/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/g/a/d;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/g/a/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/g/a/d;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForAdLocation()Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/kwad/sdk/export/proxy/AdLocationProxy;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/g/a/d;->a:D

    invoke-interface {v1}, Lcom/kwad/sdk/export/proxy/AdLocationProxy;->getLongitude()D

    move-result-wide v1

    :goto_19
    iput-wide v1, v0, Lcom/kwad/sdk/core/g/a/d;->b:D

    goto :goto_35

    :cond_1c
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/utils/k;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/kwad/sdk/core/g/a/d;->a:D

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    goto :goto_19

    :cond_35
    :goto_35
    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/g/a/d;->a:D

    const-string v3, "latitude"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/g/a/d;->b:D

    const-string v3, "longitude"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    return-object v0
.end method
