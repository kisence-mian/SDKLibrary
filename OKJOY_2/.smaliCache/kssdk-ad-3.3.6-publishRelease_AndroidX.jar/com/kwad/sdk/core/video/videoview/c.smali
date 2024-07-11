.class public abstract Lcom/kwad/sdk/core/video/videoview/c;
.super Landroid/widget/FrameLayout;


# instance fields
.field protected final a:Lcom/kwad/sdk/core/video/videoview/d;

.field private b:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/video/videoview/d;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kwad/sdk/core/video/videoview/c;->a:Lcom/kwad/sdk/core/video/videoview/d;

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method protected abstract c()V
.end method

.method protected abstract g()V
.end method

.method protected h()V
    .registers 8

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/videoview/c;->i()V

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->b:Ljava/util/Timer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->b:Ljava/util/Timer;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->c:Ljava/util/TimerTask;

    if-nez v0, :cond_19

    new-instance v0, Lcom/kwad/sdk/core/video/videoview/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/video/videoview/c$1;-><init>(Lcom/kwad/sdk/core/video/videoview/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->c:Ljava/util/TimerTask;

    :cond_19
    iget-object v1, p0, Lcom/kwad/sdk/core/video/videoview/c;->b:Ljava/util/Timer;

    iget-object v2, p0, Lcom/kwad/sdk/core/video/videoview/c;->c:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->b:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/kwad/sdk/core/video/videoview/c;->b:Ljava/util/Timer;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/c;->c:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/kwad/sdk/core/video/videoview/c;->c:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method
