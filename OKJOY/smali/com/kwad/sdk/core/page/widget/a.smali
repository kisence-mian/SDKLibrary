.class public Lcom/kwad/sdk/core/page/widget/a;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/kwad/sdk/e/q$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/page/widget/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/kwad/sdk/core/page/widget/a$a;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Lcom/kwad/sdk/e/q;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/e/q;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/e/q;-><init>(Lcom/kwad/sdk/e/q$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    :cond_d
    return-void
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->e:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/widget/a$a;->b()V

    :cond_10
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/widget/a$a;->a()V

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 10

    const-wide/16 v6, 0x1f4

    const/16 v5, 0x3e8

    const/16 v4, 0x1e

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_39

    if-eq v0, v3, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string v0, "EmptyView"

    const-string v1, "handleMsg MSG_SHOWING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    if-nez v0, :cond_e

    invoke-virtual {p0, v2}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    goto :goto_e

    :cond_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/page/widget/a$a;->a(Landroid/view/View;)V

    :cond_33
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    :cond_39
    const-string v0, "EmptyView"

    const-string v1, "handleMsg MSG_CHECKING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iput v5, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e

    :cond_61
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->d()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishTemporaryDetach:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->c()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartTemporaryDetach:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->d()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasWindowFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_22

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/page/widget/a$a;->onWindowFocusChanged(Z)V

    :cond_22
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmptyView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/a;->e:Z

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->a()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->b()V

    goto :goto_b
.end method

.method public setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    return-void
.end method
