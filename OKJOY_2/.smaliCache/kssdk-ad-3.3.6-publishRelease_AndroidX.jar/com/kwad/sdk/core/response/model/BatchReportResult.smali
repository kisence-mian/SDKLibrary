.class public Lcom/kwad/sdk/core/response/model/BatchReportResult;
.super Lcom/kwad/sdk/core/network/BaseResultData;

# interfaces
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field private interval:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/BaseResultData;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/BatchReportResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/BatchReportResult;->interval:J

    return-wide v0
.end method

.method public getResult()J
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/response/model/BatchReportResult;->result:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v0, "egid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/b/e;->a(Ljava/lang/String;)V

    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/BatchReportResult;->interval:J

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/core/network/BaseResultData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/BatchReportResult;->interval:J

    const-string v3, "interval"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-object v0
.end method
