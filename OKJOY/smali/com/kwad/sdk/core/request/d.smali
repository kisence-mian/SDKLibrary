.class public Lcom/kwad/sdk/core/request/d;
.super Lcom/kwad/sdk/core/request/c;
.source ""


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/protocol/model/AdScene;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/request/c;-><init>(Lcom/kwad/sdk/protocol/model/AdScene;)V

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .registers 2

    const-string v0, "https://open.e.kuaishou.com/rest/e/v3/open/config"

    return-object v0
.end method
