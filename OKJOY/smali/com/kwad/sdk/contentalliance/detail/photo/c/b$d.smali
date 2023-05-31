.class Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->c(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$d;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->d(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
