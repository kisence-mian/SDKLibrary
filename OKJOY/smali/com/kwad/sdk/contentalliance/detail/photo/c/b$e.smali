.class Lcom/kwad/sdk/contentalliance/detail/photo/c/b$e;
.super Lcom/kwad/sdk/contentalliance/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic C:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/b;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$e;->C:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-direct {p0, p2, p3}, Lcom/kwad/sdk/contentalliance/widget/a;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b$e;->C:Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Lcom/kwad/sdk/contentalliance/widget/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method
