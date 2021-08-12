.class Lcom/kwad/sdk/api/loader/k$g$1;
.super Lcom/kwad/sdk/api/loader/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/loader/k$g;->a(Lcom/kwad/sdk/api/loader/k$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/api/loader/k$a<",
        "Lcom/kwad/sdk/api/loader/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/kwad/sdk/api/loader/k$c;

.field final synthetic c:Lcom/kwad/sdk/api/loader/k$g;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/loader/k$g;Lcom/kwad/sdk/api/loader/k$c;Lcom/kwad/sdk/api/loader/k$c;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/api/loader/k$g$1;->c:Lcom/kwad/sdk/api/loader/k$g;

    iput-object p3, p0, Lcom/kwad/sdk/api/loader/k$g$1;->b:Lcom/kwad/sdk/api/loader/k$c;

    invoke-direct {p0, p2}, Lcom/kwad/sdk/api/loader/k$a;-><init>(Lcom/kwad/sdk/api/loader/k$c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/api/loader/a$a;)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/kwad/sdk/api/loader/a$a;->f:Ljava/io/File;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/kwad/sdk/api/loader/a$a;->f:Ljava/io/File;

    new-instance v1, Lcom/kwad/sdk/api/loader/k$g$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/api/loader/k$g$1$1;-><init>(Lcom/kwad/sdk/api/loader/k$g$1;Lcom/kwad/sdk/api/loader/a$a;)V

    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/api/loader/SecurityChecker;->a(Ljava/io/File;Lcom/kwad/sdk/api/loader/a$a;Lcom/kwad/sdk/api/loader/SecurityChecker$a;)V

    :cond_10
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kwad/sdk/api/loader/a$a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/loader/k$g$1;->a(Lcom/kwad/sdk/api/loader/a$a;)V

    return-void
.end method
