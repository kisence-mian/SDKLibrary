.class public Lcom/kwad/sdk/feed/b/i;
.super Lcom/kwad/sdk/c/h/e/a;
.source ""

# interfaces
.implements Lcom/kwad/sdk/e/q$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private o:Landroid/view/View;

.field private final p:Lcom/kwad/sdk/e/q;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V
    .registers 6
    .param p3    # Lcom/kwad/sdk/c/h/e/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/c/h/e/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/c/h/e/d;)V

    new-instance v0, Lcom/kwad/sdk/e/q;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/e/q;-><init>(Lcom/kwad/sdk/e/q$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/i;->p:Lcom/kwad/sdk/e/q;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/feed/b/i;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p0, p0, Lcom/kwad/sdk/feed/b/i;->o:Landroid/view/View;

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onViewAttached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->p:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onViewDetached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->p:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->h()V

    :cond_19
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->o:Landroid/view/View;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->j()V

    :goto_12
    iget-object v0, p0, Lcom/kwad/sdk/feed/b/i;->p:Lcom/kwad/sdk/e/q;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/a;->g()V

    goto :goto_12
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/i;->k()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/i;->l()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onFinishTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/i;->k()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onStartTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/b/i;->l()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method
