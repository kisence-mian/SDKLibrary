.class Lcom/kwad/sdk/b/c/e$a;
.super Lcom/kwad/sdk/b/e/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->j(Lcom/kwad/sdk/b/c/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/c/e;->a(Lcom/kwad/sdk/b/c/e;Z)Z

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->a(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->h()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->b(Lcom/kwad/sdk/b/c/e;)V

    :goto_20
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->i()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->h(Lcom/kwad/sdk/b/c/e;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->i(Lcom/kwad/sdk/b/c/e;)V

    :cond_39
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/b/c/e;->a(Lcom/kwad/sdk/b/c/e;Z)Z

    return-void

    :cond_40
    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$a;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->g(Lcom/kwad/sdk/b/c/e;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_20
.end method
