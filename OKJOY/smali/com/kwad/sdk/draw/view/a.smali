.class public abstract Lcom/kwad/sdk/draw/view/a;
.super Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;
.source ""

# interfaces
.implements Lcom/kwad/sdk/e/q$a;


# instance fields
.field private b:Landroid/view/View;

.field private final c:Lcom/kwad/sdk/e/q;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/e/q;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/e/q;-><init>(Lcom/kwad/sdk/e/q$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/a;->c:Lcom/kwad/sdk/e/q;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/view/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p0, p0, Lcom/kwad/sdk/draw/view/a;->b:Landroid/view/View;

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "BasePvView"

    const-string v1, "onViewAttached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->c:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/a;->g()V

    :cond_19
    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "BasePvView"

    const-string v1, "onViewDetached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->c:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/a;->h()V

    :cond_19
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->b:Landroid/view/View;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/a;->j()V

    :goto_12
    iget-object v0, p0, Lcom/kwad/sdk/draw/view/a;->c:Lcom/kwad/sdk/e/q;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/kwad/sdk/draw/view/a;->i()V

    goto :goto_12
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "BasePvView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/a;->k()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "BasePvView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/a;->l()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    const-string v0, "BasePvView"

    const-string v1, "onFinishTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/a;->k()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    const-string v0, "BasePvView"

    const-string v1, "onStartTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/draw/view/a;->l()V

    return-void
.end method
