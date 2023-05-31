.class Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->c:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->b:J

    return-void
.end method

.method private a()Z
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->b:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->b:J

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->a:Z

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->a()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->c:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->c:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-virtual {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l()Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v1

    invoke-interface {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->a()V

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->b:J

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;->a:Z

    const/4 v0, 0x1

    return v0
.end method
