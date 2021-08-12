.class public Lcom/kwad/sdk/collector/AppStatusRules$Strategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/collector/AppStatusRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strategy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x134162919dae3595L


# instance fields
.field private historyGranularity:J

.field private scanInterval:J

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->historyGranularity:J

    return-void
.end method


# virtual methods
.method public getHistoryGranularity()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->historyGranularity:J

    return-wide v0
.end method

.method public getScanInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->scanInterval:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->startTime:J

    return-wide v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->startTime:J

    const-string v0, "scanInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->scanInterval:J

    const-string v0, "historyGranularity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_25

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->historyGranularity:J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method public setScanInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->scanInterval:J

    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->startTime:J

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->startTime:J

    const-string v3, "startTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->scanInterval:J

    const-string v3, "scanInterval"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/collector/AppStatusRules$Strategy;->historyGranularity:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "historyGranularity"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-object v0
.end method
