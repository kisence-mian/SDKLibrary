.class public Lcom/kwad/sdk/core/request/h;
.super Lcom/kwad/sdk/core/request/c;
.source ""


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/protocol/model/AdScene;J)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/request/c;-><init>(Lcom/kwad/sdk/protocol/model/AdScene;)V

    const-string v0, "photoId"

    invoke-virtual {p0, v0, p2, p3}, Lcom/kwad/sdk/core/request/k/a;->a(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .registers 2

    const-string v0, "https://open.e.kuaishou.com/rest/e/v3/open/share"

    return-object v0
.end method
