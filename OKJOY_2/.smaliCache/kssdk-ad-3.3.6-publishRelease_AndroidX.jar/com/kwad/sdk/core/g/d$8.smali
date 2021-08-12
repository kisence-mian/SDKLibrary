.class final Lcom/kwad/sdk/core/g/d$8;
.super Lcom/kwad/sdk/core/network/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/a/e;Ljava/util/List;ZLcom/kwad/sdk/core/g/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/j<",
        "Lcom/kwad/sdk/core/g/a;",
        "Lcom/kwad/sdk/core/response/model/AdResultData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/g/d$a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/g/d$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$8;->a:Lcom/kwad/sdk/core/g/d$a;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/g/a;ILjava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$8;->a:Lcom/kwad/sdk/core/g/d$a;

    invoke-interface {p1, p2, p3}, Lcom/kwad/sdk/core/g/d$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/g/a;Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .registers 4

    invoke-virtual {p2}, Lcom/kwad/sdk/core/response/model/AdResultData;->isAdResultDataEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$8;->a:Lcom/kwad/sdk/core/g/d$a;

    sget-object p2, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget p2, p2, Lcom/kwad/sdk/core/network/f;->k:I

    sget-object v0, Lcom/kwad/sdk/core/network/f;->c:Lcom/kwad/sdk/core/network/f;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/f;->l:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/kwad/sdk/core/g/d$a;->a(ILjava/lang/String;)V

    goto :goto_19

    :cond_14
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$8;->a:Lcom/kwad/sdk/core/g/d$a;

    invoke-interface {p1, p2}, Lcom/kwad/sdk/core/g/d$a;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    :goto_19
    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;ILjava/lang/String;)V
    .registers 4

    check-cast p1, Lcom/kwad/sdk/core/g/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/core/g/d$8;->a(Lcom/kwad/sdk/core/g/a;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/network/g;Lcom/kwad/sdk/core/network/BaseResultData;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/g/a;

    check-cast p2, Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/g/d$8;->a(Lcom/kwad/sdk/core/g/a;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    return-void
.end method
