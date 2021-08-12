.class Lcom/kwad/sdk/core/report/c$3;
.super Lcom/kwad/sdk/core/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/c;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/kwad/sdk/core/report/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/c;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/report/c$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/kwad/sdk/core/report/c$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->e(Lcom/kwad/sdk/core/report/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->f(Lcom/kwad/sdk/core/report/c;)V

    :cond_17
    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V
    .registers 3

    check-cast p2, Lcom/kwad/sdk/core/response/model/BatchReportResult;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/report/c$3;->a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/response/model/BatchReportResult;)V

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

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->c(Lcom/kwad/sdk/core/report/c;)Lcom/kwad/sdk/core/report/i;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c$3;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/report/i;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->e(Lcom/kwad/sdk/core/report/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->f(Lcom/kwad/sdk/core/report/c;)V

    :cond_24
    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-virtual {p2}, Lcom/kwad/sdk/core/response/model/BatchReportResult;->getInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/core/report/c;->a(J)V

    iget-object p1, p0, Lcom/kwad/sdk/core/report/c$3;->c:Lcom/kwad/sdk/core/report/c;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/c;->b(Lcom/kwad/sdk/core/report/c;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/core/report/c;->a(Lcom/kwad/sdk/core/report/c;J)V

    return-void
.end method
