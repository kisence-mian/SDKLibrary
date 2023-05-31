.class Lcom/kwad/sdk/contentalliance/widget/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/widget/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/kwad/sdk/contentalliance/widget/a;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/widget/a;->d(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/widget/a;->e(Lcom/kwad/sdk/contentalliance/widget/a;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/widget/a;->d(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/widget/a;->a(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_b

    :cond_2c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0, v2}, Lcom/kwad/sdk/contentalliance/widget/a;->a(Lcom/kwad/sdk/contentalliance/widget/a;Z)Z

    goto :goto_b

    :cond_32
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/widget/a;->c(Lcom/kwad/sdk/contentalliance/widget/a;)V

    goto :goto_b

    :cond_38
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/widget/a;->b(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/widget/a$a;->a:Lcom/kwad/sdk/contentalliance/widget/a;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/widget/a;->a(Lcom/kwad/sdk/contentalliance/widget/a;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_b
.end method
