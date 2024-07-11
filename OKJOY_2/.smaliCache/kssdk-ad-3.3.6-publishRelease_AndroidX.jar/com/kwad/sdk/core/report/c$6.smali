.class Lcom/kwad/sdk/core/report/c$6;
.super Lcom/kwad/sdk/core/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/j<",
        "TR;",
        "Lcom/kwad/sdk/core/response/model/BatchReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/report/d;

.field final synthetic b:Lcom/kwad/sdk/core/report/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/d;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$6;->b:Lcom/kwad/sdk/core/report/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$6;->a:Lcom/kwad/sdk/core/report/d;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$6;->b:Lcom/kwad/sdk/core/report/c;

    new-instance p2, Lcom/kwad/sdk/core/report/c$6$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/core/report/c$6$1;-><init>(Lcom/kwad/sdk/core/report/c$6;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/h;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V
    .registers 3

    check-cast p2, Lcom/kwad/sdk/core/response/model/BatchReportResult;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/report/c$6;->a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/response/model/BatchReportResult;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/response/model/BatchReportResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/kwad/sdk/core/response/model/BatchReportResult;",
            ")V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7acb\u5373\u4e0a\u62a5 onSuccess action= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$6;->a:Lcom/kwad/sdk/core/report/d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " result "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/kwad/sdk/core/response/model/BatchReportResult;->getResult()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseBatchReporter"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
