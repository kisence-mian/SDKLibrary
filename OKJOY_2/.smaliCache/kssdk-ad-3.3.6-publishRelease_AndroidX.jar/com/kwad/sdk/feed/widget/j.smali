.class public Lcom/kwad/sdk/feed/widget/j;
.super Lcom/kwad/sdk/core/video/videoview/a;

# interfaces
.implements Lcom/kwad/sdk/utils/ai$a;


# instance fields
.field private b:Landroid/view/View;

.field private final c:Lcom/kwad/sdk/utils/ai;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/video/videoview/a;-><init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/video/videoview/d;)V

    new-instance p1, Lcom/kwad/sdk/utils/ai;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/ai;-><init>(Lcom/kwad/sdk/utils/ai$a;)V

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/j;->c:Lcom/kwad/sdk/utils/ai;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p2, p0, Lcom/kwad/sdk/feed/widget/j;->f:Z

    iput-object p0, p0, Lcom/kwad/sdk/feed/widget/j;->b:Landroid/view/View;

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onViewAttached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->c:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/j;->b:Landroid/view/View;

    const/16 v1, 0x1e

    invoke-static {p1, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/kwad/sdk/feed/widget/j;->e:Z

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->d()V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->e()V

    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/j;->c:Lcom/kwad/sdk/utils/ai;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    return-void
.end method

.method protected j()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onViewDetached"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->c:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/feed/widget/j;->f:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->f()V

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->c()V

    :cond_23
    :goto_23
    return-void
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/j;->a:Lcom/kwad/sdk/core/video/videoview/d;

    invoke-interface {v0}, Lcom/kwad/sdk/core/video/videoview/d;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/j;->e:Z

    return-void
.end method

.method public l()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/j;->e:Z

    return-void
.end method

.method public m()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/feed/widget/j;->e:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/video/videoview/a;->onAttachedToWindow()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/j;->n()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/video/videoview/a;->onDetachedFromWindow()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->j()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/video/videoview/a;->onFinishTemporaryDetach()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onFinishTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/feed/widget/j;->n()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/video/videoview/a;->onStartTemporaryDetach()V

    const-string v0, "FeedVideoPlayerController"

    const-string v1, "onStartTemporaryDetach"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/feed/widget/j;->j()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/video/videoview/a;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/video/videoview/a;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method setAutoRelease(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/feed/widget/j;->f:Z

    return-void
.end method
