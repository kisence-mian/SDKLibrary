.class Lcom/kwad/sdk/crash/report/request/b$1;
.super Lcom/kwad/sdk/core/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/report/request/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/i<",
        "Lcom/kwad/sdk/crash/report/request/a;",
        "Lcom/kwad/sdk/crash/report/request/CrashReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/kwad/sdk/crash/report/request/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/crash/report/request/b;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/crash/report/request/b$1;->b:Lcom/kwad/sdk/crash/report/request/b;

    iput-object p2, p0, Lcom/kwad/sdk/crash/report/request/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/kwad/sdk/crash/report/request/CrashReportResult;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/kwad/sdk/crash/report/request/CrashReportResult;

    invoke-direct {p1}, Lcom/kwad/sdk/crash/report/request/CrashReportResult;-><init>()V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/crash/report/request/CrashReportResult;->parseJson(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected a()Lcom/kwad/sdk/crash/report/request/a;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/crash/report/request/a;

    iget-object v1, p0, Lcom/kwad/sdk/crash/report/request/b$1;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/crash/report/request/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/kwad/sdk/core/network/BaseResultData;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/crash/report/request/b$1;->a(Ljava/lang/String;)Lcom/kwad/sdk/crash/report/request/CrashReportResult;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b()Lcom/kwad/sdk/core/network/g;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/crash/report/request/b$1;->a()Lcom/kwad/sdk/crash/report/request/a;

    move-result-object v0

    return-object v0
.end method
