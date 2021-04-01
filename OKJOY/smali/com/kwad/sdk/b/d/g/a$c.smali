.class Lcom/kwad/sdk/b/d/g/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/d/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "HomeLoadingPresenter"

    const-string v1, " onStartLoading"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->e(Lcom/kwad/sdk/b/d/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->b(Lcom/kwad/sdk/b/d/g/a;)V

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/g/a;->a(Lcom/kwad/sdk/b/d/g/a;Z)Z

    return-void
.end method

.method public a(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFinishLoading  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeLoadingPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->f(Lcom/kwad/sdk/b/d/g/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/g/a;->a(Lcom/kwad/sdk/b/d/g/a;Z)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onError code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeLoadingPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/a;->g(Lcom/kwad/sdk/b/d/g/a;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/a$c;->a:Lcom/kwad/sdk/b/d/g/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/d/g/a;->a(Lcom/kwad/sdk/b/d/g/a;Z)Z

    return-void
.end method
