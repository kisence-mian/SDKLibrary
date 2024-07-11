.class public Lcom/kwad/sdk/crash/report/request/a;
.super Lcom/kwad/sdk/core/network/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/crash/report/ReportEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/d;-><init>()V

    const-string v0, "eventList"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/crash/report/request/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
