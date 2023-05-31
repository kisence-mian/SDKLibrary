.class public Lcom/kwad/sdk/core/response/model/AdConfigData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/g/a/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
    }
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_INTERVAL:I = 0xe10

.field private static final serialVersionUID:J = -0x6c33ee185307055fL


# instance fields
.field public abConfig:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;

.field public requestInterval:J

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->requestInterval:J

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->abConfig:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->result:I

    const-string v0, "errorMsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->errorMsg:Ljava/lang/String;

    :try_start_13
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "requestInterval"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->requestInterval:J

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->abConfig:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    const-string v2, "abConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->parseJson(Lorg/json/JSONObject;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36

    goto :goto_2

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->result:I

    const-string v2, "result"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->errorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->requestInterval:J

    const-string v1, "requestInterval"

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdConfigData;->abConfig:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    const-string v2, "abConfig"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/c/g/a/b;)V

    return-object v0
.end method
