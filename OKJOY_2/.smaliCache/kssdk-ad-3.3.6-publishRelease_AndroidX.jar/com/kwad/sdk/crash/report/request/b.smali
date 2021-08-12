.class public Lcom/kwad/sdk/crash/report/request/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/crash/report/ReportEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-instance v0, Lcom/kwad/sdk/crash/report/request/b$1;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/crash/report/request/b$1;-><init>(Lcom/kwad/sdk/crash/report/request/b;Ljava/util/List;)V

    new-instance v1, Lcom/kwad/sdk/crash/report/request/b$2;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/crash/report/request/b$2;-><init>(Lcom/kwad/sdk/crash/report/request/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    :cond_15
    return-void
.end method
