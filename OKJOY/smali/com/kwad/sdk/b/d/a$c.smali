.class Lcom/kwad/sdk/b/d/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/a$c;->a:Lcom/kwad/sdk/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/kwad/sdk/b/d/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$c;->a:Lcom/kwad/sdk/b/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/a;->c(Lcom/kwad/sdk/b/d/a;Z)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$c;->a:Lcom/kwad/sdk/b/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/a;->c(Lcom/kwad/sdk/b/d/a;Z)Z

    return-void
.end method
