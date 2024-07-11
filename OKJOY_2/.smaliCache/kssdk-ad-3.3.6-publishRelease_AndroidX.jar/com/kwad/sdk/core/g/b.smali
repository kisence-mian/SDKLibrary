.class public Lcom/kwad/sdk/core/g/b;
.super Lcom/kwad/sdk/core/network/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/d;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    const-string v1, "impInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/g/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/aa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appTag"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
