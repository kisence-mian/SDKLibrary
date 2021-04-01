.class Lcom/kwad/sdk/b/d/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/kwad/sdk/b/d/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/a;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    iput-boolean p2, p0, Lcom/kwad/sdk/b/d/a$b;->a:Z

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
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a$b;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->e()J

    :cond_1c
    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    iget-boolean v1, p0, Lcom/kwad/sdk/b/d/a$b;->a:Z

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/a;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/a;->b(Lcom/kwad/sdk/b/d/a;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/a;->c(Lcom/kwad/sdk/b/d/a;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/a;->b(Lcom/kwad/sdk/b/d/a;)V

    :cond_3f
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/b/d/a;->a(Lcom/kwad/sdk/b/d/a;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a$b;->b:Lcom/kwad/sdk/b/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/a;->b(Lcom/kwad/sdk/b/d/a;Z)Z

    return-void
.end method
