.class public Lcom/kwad/sdk/core/page/widget/a;
.super Landroid/view/View;

# interfaces
.implements Lcom/kwad/sdk/utils/ai$a;


# annotations
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

.field private final f:Lcom/kwad/sdk/utils/ai;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/kwad/sdk/utils/ai;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/ai;-><init>(Lcom/kwad/sdk/utils/ai$a;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/page/widget/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/widget/a$a;->a()V

    :cond_10
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/kwad/sdk/core/page/widget/a$a;->b()V

    :cond_10
    return-void
.end method

.method private c()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    :cond_d
    return-void
.end method

.method private d()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->e:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const-string v8, "EmptyView"

    packed-switch v0, :pswitch_data_66

    goto :goto_64

    :pswitch_11
    const-string v0, "handleMsg MSG_SHOWING"

    invoke-static {v8, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-static {v0, v7, v6}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;IZ)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    if-nez p1, :cond_64

    invoke-virtual {p0, v4}, Lcom/kwad/sdk/core/page/widget/a;->setNeedCheckingShow(Z)V

    goto :goto_64

    :cond_26
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_33

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/core/page/widget/a$a;->a(Landroid/view/View;)V

    :cond_33
    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    invoke-virtual {p1, v1, v2, v3}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_64

    :pswitch_39
    const-string p1, "handleMsg MSG_CHECKING"

    invoke-static {v8, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->b:Landroid/view/View;

    invoke-static {p1, v7, v6}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;IZ)Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->c()V

    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    invoke-virtual {p1}, Lcom/kwad/sdk/utils/ai;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iput v5, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/kwad/sdk/utils/ai;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_64

    :cond_5f
    iget-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->f:Lcom/kwad/sdk/utils/ai;

    invoke-virtual {p1, v4, v2, v3}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessageDelayed(IJ)Z

    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_39
        :pswitch_11
    .end packed-switch
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

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->a()V

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

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->c:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->b()V

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

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->a()V

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

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->b()V

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

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    if-eqz v0, :cond_22

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/page/widget/a$a;->a(Z)V

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

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmptyView"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/a;->e:Z

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->c()V

    goto :goto_15

    :cond_c
    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/a;->d:Z

    if-nez p1, :cond_15

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/a;->d()V

    :cond_15
    :goto_15
    return-void
.end method

.method public setViewCallback(Lcom/kwad/sdk/core/page/widget/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/a;->a:Lcom/kwad/sdk/core/page/widget/a$a;

    return-void
.end method
