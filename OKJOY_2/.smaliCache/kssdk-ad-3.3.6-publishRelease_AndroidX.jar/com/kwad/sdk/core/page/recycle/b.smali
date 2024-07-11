.class public Lcom/kwad/sdk/core/page/recycle/b;
.super Lcom/kwad/sdk/core/page/recycle/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/page/recycle/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lcom/kwad/sdk/core/page/recycle/b$a;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/page/recycle/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/page/recycle/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/recycle/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->h:Z

    return-void
.end method

.method private a(III)V
    .registers 9

    iget v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_11

    new-array v0, v2, [I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/recycle/b;->getLocationOnScreen([I)V

    aget v0, v0, v1

    iput v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->e:I

    :cond_11
    invoke-static {p0}, Lcom/kwad/sdk/core/page/recycle/f;->a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/kwad/sdk/core/page/recycle/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/f;->a()I

    move-result v0

    invoke-static {p0}, Lcom/kwad/sdk/core/page/recycle/f;->a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/kwad/sdk/core/page/recycle/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwad/sdk/core/page/recycle/f;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_53

    if-ne v3, v4, :cond_27

    goto :goto_53

    :cond_27
    const/4 v4, 0x0

    if-lt p1, v0, :cond_46

    if-gt p1, v3, :cond_46

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->getChildCount()I

    move-result p2

    if-le p2, p1, :cond_53

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/page/recycle/b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-array p2, v2, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p1, p2, v1

    iget p2, p0, Lcom/kwad/sdk/core/page/recycle/b;->e:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-virtual {p0, v4, p1}, Lcom/kwad/sdk/core/page/recycle/b;->scrollBy(II)V

    goto :goto_53

    :cond_46
    if-le p1, v3, :cond_4c

    invoke-virtual {p0, v4, p2}, Lcom/kwad/sdk/core/page/recycle/b;->scrollBy(II)V

    goto :goto_50

    :cond_4c
    neg-int v0, p2

    invoke-virtual {p0, v4, v0}, Lcom/kwad/sdk/core/page/recycle/b;->scrollBy(II)V

    :goto_50
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/recycle/b;->a(III)V

    :cond_53
    :goto_53
    return-void
.end method

.method private b()V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->a:Landroid/graphics/Rect;

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_f
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_38

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/page/recycle/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->union(IIII)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_38
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/page/recycle/d;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/kwad/sdk/core/page/recycle/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/recycle/d;->a()V

    :cond_d
    return-void
.end method

.method public a(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/sdk/core/page/recycle/b;->a(III)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/core/page/recycle/g;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->b:I

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/recycle/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->b:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_21
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/recycle/g;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->h:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->stopScroll()V

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->f:Lcom/kwad/sdk/core/page/recycle/b$a;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/page/recycle/b$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/recycle/g;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/core/page/recycle/b;->c:I

    if-lez v1, :cond_14

    if-ge v1, v0, :cond_14

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->c:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/recycle/g;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->g:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/recycle/g;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/b;->d:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/page/recycle/b;->a(II)V

    goto :goto_c

    :cond_9
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/recycle/g;->scrollToPosition(I)V

    :goto_c
    return-void
.end method

.method public setDisableScroll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->g:Z

    return-void
.end method

.method public setDownStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->h:Z

    return-void
.end method

.method public setIgnoreTouchSwipeHandler(Lcom/kwad/sdk/core/page/recycle/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->f:Lcom/kwad/sdk/core/page/recycle/b$a;

    return-void
.end method

.method public setUnderneathColor(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->b:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/recycle/b;->b()V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/b;->invalidate()V

    return-void
.end method

.method public setUseCustomScrollToPosition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/recycle/b;->d:Z

    return-void
.end method
