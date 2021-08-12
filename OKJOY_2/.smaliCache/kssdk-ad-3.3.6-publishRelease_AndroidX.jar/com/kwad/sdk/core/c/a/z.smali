.class public Lcom/kwad/sdk/core/c/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/z;->a(Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    const-string v2, "h5Url"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Version:Ljava/lang/String;

    const-string v2, "h5Version"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    const-string v1, "h5Checksum"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/z;->a(Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "h5Url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    const-string v0, "h5Version"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Version:Ljava/lang/String;

    const-string v0, "h5Checksum"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Checksum:Ljava/lang/String;

    return-void
.end method
