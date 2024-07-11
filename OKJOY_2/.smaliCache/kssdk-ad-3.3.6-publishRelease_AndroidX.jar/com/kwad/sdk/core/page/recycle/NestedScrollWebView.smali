.class public Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;
.super Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private c:I

.field private d:I

.field private final e:[I

.field private final f:[I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroidx/core/view/NestedScrollingChildHelper;

.field private l:Landroid/view/VelocityTracker;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p3, p1, [I

    iput-object p3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 3

    const/4 p1, 0x0

    iput p1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->m:I

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->j:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->i:I

    return-void
.end method

.method private d()V
    .registers 1

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->m:I

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/kwad/sdk/utils/d;->a()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/content/Context;)I

    move-result p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->c(Landroid/app/Activity;)I

    move-result v0

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/utils/ah;->b(Landroid/content/Context;)I

    move-result v0

    :goto_2f
    sub-int/2addr v0, p2

    iget p2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->m:I

    sub-int/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_39
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->requestFocus()Z

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iput v2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    :cond_d
    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    if-nez v3, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    :cond_17
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_15e

    :pswitch_2b
    goto/16 :goto_154

    :pswitch_2d
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->stopNestedScroll()V

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_155

    :pswitch_36
    iget v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    sub-int/2addr v1, v4

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    iget-object v7, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    invoke-virtual {p0, v2, v1, v3, v7}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    aget v3, v3, v5

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    iget-object v7, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v7, v7, v5

    add-int/2addr v3, v7

    iput v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    :cond_59
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->getScrollY()I

    move-result v3

    iget-object v7, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v7, v7, v5

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    add-int v4, v3, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v3, v4, v3

    sub-int v11, v1, v3

    const/4 v8, 0x0

    sub-int v9, v4, v11

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_93

    iget v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v4, v3, v5

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    aget v1, v3, v5

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    iget-object v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v3, v3, v5

    add-int/2addr v1, v3

    iput v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->g:I

    :cond_93
    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_ba

    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_ba

    iget-boolean v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->h:Z

    if-eqz v1, :cond_b0

    iput-boolean v2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->h:Z

    move v1, v2

    goto :goto_b4

    :cond_b0
    invoke-super {p0, v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_b4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v0, v1

    goto/16 :goto_155

    :cond_ba
    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->h:Z

    if-nez v0, :cond_154

    iput-boolean v5, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->h:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_154

    :pswitch_d1
    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-static {p1, v3}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    invoke-static {v1, v0}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->i:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_105

    invoke-virtual {p0, v6, v0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_105

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->hasNestedScrollingParent()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p0, v6, v0, v5}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->dispatchNestedFling(FFZ)Z

    :cond_105
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->stopNestedScroll()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_131

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_131

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->d()V

    :cond_131
    move v0, v2

    move v2, v5

    goto :goto_155

    :pswitch_134
    iput v4, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->d:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->startNestedScroll(I)Z

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->f:[I

    aput v2, v0, v2

    aput v2, v0, v5

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->e:[I

    aput v2, v0, v2

    aput v2, v0, v5

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v2, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->h:Z

    goto :goto_155

    :cond_154
    :goto_154
    move v0, v2

    :goto_155
    if-nez v2, :cond_15c

    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_15c
    return v0

    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_134
        :pswitch_d1
        :pswitch_36
        :pswitch_d1
        :pswitch_2b
        :pswitch_2d
    .end packed-switch
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/page/widget/webview/KsAdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/NestedScrollWebView;->k:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
