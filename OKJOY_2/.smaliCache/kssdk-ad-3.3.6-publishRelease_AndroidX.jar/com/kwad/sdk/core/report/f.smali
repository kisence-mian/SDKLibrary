.class public Lcom/kwad/sdk/core/report/f;
.super Lcom/kwad/sdk/core/network/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/report/ReportAction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/d;-><init>()V

    const-string v0, "actionList"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/report/f;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
