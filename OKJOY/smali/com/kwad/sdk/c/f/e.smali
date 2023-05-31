.class public Lcom/kwad/sdk/c/f/e;
.super Lcom/kwad/sdk/core/request/c;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/request/c;-><init>()V

    const-string v0, "actionList"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .registers 2

    const-string v0, "https://open.e.kuaishou.com/rest/e/v3/open/logBatch"

    return-object v0
.end method
