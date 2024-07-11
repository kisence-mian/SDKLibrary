.class public Lcom/kwad/sdk/core/g/a/f;
.super Lcom/kwad/sdk/core/response/a/a;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/g/a/f;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->a()Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lcom/kwad/sdk/core/g/a/f;

    invoke-direct {v1}, Lcom/kwad/sdk/core/g/a/f;-><init>()V

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Url:Ljava/lang/String;

    iput-object v2, v1, Lcom/kwad/sdk/core/g/a/f;->b:Ljava/lang/String;

    :cond_13
    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Version:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/SdkConfigData$TemplateConfig;->h5Version:Ljava/lang/String;

    iput-object v0, v1, Lcom/kwad/sdk/core/g/a/f;->a:Ljava/lang/String;

    :cond_1b
    iget-object v0, v1, Lcom/kwad/sdk/core/g/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/kwad/sdk/core/g/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_24

    :cond_23
    return-object v1

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method
