.class public Lcom/kwad/sdk/crash/report/ReportEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/report/ReportEvent$UrlPackage;,
        Lcom/kwad/sdk/crash/report/ReportEvent$ExceptionEvent;,
        Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7813abf62930fc22L


# instance fields
.field public clientIncrementId:J

.field public clientTimeStamp:J

.field public sessionId:Ljava/lang/String;

.field public statPackage:Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;

.field public timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "clientTimeStamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->clientTimeStamp:J

    const-string v0, "clientIncrementId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->clientIncrementId:J

    const-string v0, "sessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->statPackage:Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;

    const-string v1, "statPackage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;->parseJson(Lorg/json/JSONObject;)V

    const-string v0, "timeZone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->clientTimeStamp:J

    const-string v3, "clientTimeStamp"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->clientIncrementId:J

    const-string v3, "clientIncrementId"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->sessionId:Ljava/lang/String;

    const-string v2, "sessionId"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->statPackage:Lcom/kwad/sdk/crash/report/ReportEvent$StatPackage;

    const-string v2, "statPackage"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/ReportEvent;->timeZone:Ljava/lang/String;

    const-string v2, "timeZone"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
