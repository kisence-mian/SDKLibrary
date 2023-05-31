.class Lcom/kwad/sdk/b/c/e$d;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
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

    iput-object p1, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlayError"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->j(Lcom/kwad/sdk/b/c/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->e(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v1}, Lcom/kwad/sdk/b/c/e;->f(Lcom/kwad/sdk/b/c/e;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_loading_retry_when_disconnected"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->c()V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPreparing"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->i(Lcom/kwad/sdk/b/c/e;)V

    return-void
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->j(Lcom/kwad/sdk/b/c/e;)V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlayCompleted"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->c(Lcom/kwad/sdk/b/c/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v1}, Lcom/kwad/sdk/b/c/e;->n(Lcom/kwad/sdk/b/c/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlaying"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->j(Lcom/kwad/sdk/b/c/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->g(Lcom/kwad/sdk/b/c/e;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->f()V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlayBufferingPlaying"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->d(Lcom/kwad/sdk/b/c/e;)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->g()V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlayBufferingPaused"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->d(Lcom/kwad/sdk/b/c/e;)V

    return-void
.end method

.method public onVideoPlayStart()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;->onVideoPlayStart()V

    const-string v0, "DetailLoadingPresenter"

    const-string v1, "onVideoPlayStart"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->c(Lcom/kwad/sdk/b/c/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v1}, Lcom/kwad/sdk/b/c/e;->n(Lcom/kwad/sdk/b/c/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/e$d;->a:Lcom/kwad/sdk/b/c/e;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/e;->g(Lcom/kwad/sdk/b/c/e;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
