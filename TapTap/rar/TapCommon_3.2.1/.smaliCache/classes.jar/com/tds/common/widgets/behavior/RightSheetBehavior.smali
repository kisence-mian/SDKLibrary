.class public Lcom/tds/common/widgets/behavior/RightSheetBehavior;
.super Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.source "RightSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 393
    new-instance v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;-><init>(Lcom/tds/common/widgets/behavior/RightSheetBehavior;)V

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 28
    return-void
.end method


# virtual methods
.method protected getYVelocity()F
    .registers 4

    .line 359
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 363
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d6

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->draggable:Z

    if-nez v0, :cond_e

    goto/16 :goto_d6

    .line 89
    :cond_e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 91
    .local v0, "action":I
    if-nez v0, :cond_17

    .line 92
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->reset()V

    .line 94
    :cond_17
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_21

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 97
    :cond_21
    iget-object v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 98
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_da

    :pswitch_2c
    goto :goto_7e

    .line 101
    :pswitch_2d
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->touchingScrollingChild:Z

    .line 102
    iput v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->activePointerId:I

    .line 104
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    if-eqz v4, :cond_7e

    .line 105
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    .line 106
    return v1

    .line 110
    :pswitch_38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 111
    .local v6, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->initialY:I

    .line 114
    iget v7, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    if-eq v7, v5, :cond_6c

    .line 115
    iget-object v7, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_55

    iget-object v7, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_56

    :cond_55
    move-object v7, v3

    .line 116
    .local v7, "scroll":Landroid/view/View;
    :goto_56
    if-eqz v7, :cond_6c

    iget v8, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->initialY:I

    invoke-virtual {p1, v7, v8, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 117
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->activePointerId:I

    .line 118
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->touchingScrollingChild:Z

    .line 121
    .end local v7    # "scroll":Landroid/view/View;
    :cond_6c
    iget v7, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_7a

    iget v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->initialY:I

    .line 123
    invoke-virtual {p1, p2, v4, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_7a

    move v4, v2

    goto :goto_7b

    :cond_7a
    move v4, v1

    :goto_7b
    iput-boolean v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    .line 124
    nop

    .line 127
    .end local v6    # "initialX":I
    :cond_7e
    :goto_7e
    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_8f

    iget-object v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 129
    invoke-virtual {v4, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 130
    return v2

    .line 135
    :cond_8f
    iget-object v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_9b

    iget-object v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 136
    .local v3, "scroll":Landroid/view/View;
    :cond_9b
    if-ne v0, v5, :cond_d4

    if-eqz v3, :cond_d4

    iget-boolean v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_d4

    iget v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    if-eq v4, v2, :cond_d4

    .line 140
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_d4

    iget-object v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v4, :cond_d4

    iget v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 142
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Ltds/androidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d4

    move v1, v2

    goto :goto_d5

    :cond_d4
    nop

    .line 136
    :goto_d5
    return v1

    .line 86
    .end local v0    # "action":I
    .end local v3    # "scroll":Landroid/view/View;
    :cond_d6
    :goto_d6
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    .line 87
    return v1

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public onLayoutChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 9
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {p2}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2a

    .line 47
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v0, v2}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->peekHeightMin:I

    .line 48
    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setSystemGestureInsets(Landroid/view/View;)V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 51
    :cond_2a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_36

    .line 52
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->dragCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)Ltds/androidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 55
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 57
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 59
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentWidth:I

    .line 60
    invoke-virtual {p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->childHeight:I

    .line 62
    const/4 v2, 0x0

    iget v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    iget v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->childHeight:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 63
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->calculateHalfExpandedOffset()V

    .line 64
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->calculateCollapsedOffset()V

    .line 66
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6e

    .line 67
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_a5

    .line 68
    :cond_6e
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_79

    .line 69
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_a5

    .line 70
    :cond_79
    iget-boolean v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v2, :cond_88

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_88

    .line 71
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_a5

    .line 72
    :cond_88
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_93

    .line 73
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_a5

    .line 74
    :cond_93
    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    if-eq v2, v1, :cond_9c

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a5

    .line 75
    :cond_9c
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 78
    :cond_a5
    :goto_a5
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 79
    return v1
.end method

.method public onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 14
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_4

    .line 200
    return-void

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 203
    .local v1, "scrollingChild":Landroid/view/View;
    :goto_12
    if-eq p3, v1, :cond_15

    .line 204
    return-void

    .line 206
    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 207
    .local v2, "currentTop":I
    sub-int v3, v2, p4

    .line 208
    .local v3, "newTop":I
    const/4 v4, 0x0

    if-lez p4, :cond_46

    .line 209
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v5

    if-ge v3, v5, :cond_37

    .line 210
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v5

    sub-int v5, v2, v5

    aput v5, p6, v4

    .line 211
    aget v4, p6, v4

    neg-int v4, v4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 212
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    goto :goto_77

    .line 214
    :cond_37
    iget-boolean v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->draggable:Z

    if-nez v5, :cond_3c

    .line 216
    return-void

    .line 219
    :cond_3c
    aput p4, p6, v4

    .line 220
    neg-int v4, p4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    goto :goto_77

    .line 223
    :cond_46
    if-gez p4, :cond_77

    .line 224
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v5

    if-nez v5, :cond_77

    .line 225
    iget v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    if-le v3, v5, :cond_69

    iget-boolean v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v5, :cond_58

    goto :goto_69

    .line 235
    :cond_58
    iget v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v5, v2, v5

    aput v5, p6, v4

    .line 236
    aget v4, p6, v4

    neg-int v4, v4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 237
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    goto :goto_77

    .line 226
    :cond_69
    :goto_69
    iget-boolean v5, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->draggable:Z

    if-nez v5, :cond_6e

    .line 228
    return-void

    .line 231
    :cond_6e
    aput p4, p6, v4

    .line 232
    neg-int v4, p4

    invoke-static {p2, v4}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    .line 241
    :cond_77
    :goto_77
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->dispatchOnSlide(I)V

    .line 242
    iput p4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->lastNestedScrollDy:I

    .line 243
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrolled:Z

    .line 244
    return-void
.end method

.method public onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->lastNestedScrollDy:I

    .line 185
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrolled:Z

    .line 186
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 253
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    .line 254
    return-void

    .line 256
    :cond_f
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 257
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_e8

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_21

    goto/16 :goto_e8

    .line 263
    :cond_21
    iget v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->lastNestedScrollDy:I

    if-lez v0, :cond_43

    .line 264
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_2e

    .line 265
    iget v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 266
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_e1

    .line 268
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 269
    .local v0, "currentTop":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_3c

    .line 270
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 271
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_41

    .line 273
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_3c
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    .line 274
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 276
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_41
    goto/16 :goto_e1

    .line 277
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_43
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 278
    iget v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    .line 279
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_e1

    .line 280
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_56
    iget v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_b8

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 282
    .local v0, "currentTop":I
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_80

    .line 283
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 284
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 285
    .local v1, "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b7

    .line 287
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_7a
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 288
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b7

    .line 291
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_80
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_9a

    .line 292
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 293
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    .line 294
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b7

    .line 296
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_94
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 297
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b7

    .line 300
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_9a
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 301
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 302
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_b7

    .line 304
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_b2
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 305
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 309
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_b7
    goto :goto_e1

    .line 310
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_b8
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_c0

    .line 311
    iget v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 312
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto :goto_e1

    .line 315
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_c0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 316
    .local v0, "currentTop":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_dc

    .line 317
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 318
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_e1

    .line 320
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_dc
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 321
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 325
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_e1
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 326
    iput-boolean v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrolled:Z

    .line 327
    return-void

    .line 259
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_e8
    :goto_e8
    return-void
.end method

.method public onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 152
    .local v0, "action":I
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    if-nez v0, :cond_14

    .line 153
    return v2

    .line 155
    :cond_14
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_1d

    .line 156
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 159
    :cond_1d
    if-nez v0, :cond_22

    .line 160
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->reset()V

    .line 162
    :cond_22
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2c

    .line 163
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 165
    :cond_2c
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 168
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    if-eqz v1, :cond_60

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_60

    .line 169
    iget v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Ltds/androidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_60

    .line 170
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Ltds/androidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 173
    :cond_60
    iget-boolean v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method protected setSystemGestureInsets(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 343
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->isGestureInsetBottomIgnored()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->peekHeightAuto:Z

    if-nez v0, :cond_18

    .line 344
    new-instance v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior$1;-><init>(Lcom/tds/common/widgets/behavior/RightSheetBehavior;)V

    invoke-static {p1, v0}, Ltds/com/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Ltds/com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 356
    :cond_18
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .line 330
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 331
    return v1

    .line 333
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_10

    .line 335
    return v3

    .line 337
    :cond_10
    invoke-virtual {p0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->calculatePeekHeight()I

    move-result v0

    .line 338
    .local v0, "peek":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, p2

    add-float/2addr v2, v4

    .line 339
    .local v2, "newTop":F
    iget v4, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_30

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;IIZ)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "top"    # I
    .param p4, "settleFromViewDragHelper"    # Z

    .line 367
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    if-eqz p4, :cond_14

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_20

    :cond_14
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewDragHelper:Ltds/androidx/customview/widget/ViewDragHelper;

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, p3, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_22

    :goto_20
    move v0, v1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 372
    .local v0, "startedSettling":Z
    :goto_23
    if-eqz v0, :cond_4d

    .line 373
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    .line 375
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    if-nez v2, :cond_34

    .line 377
    new-instance v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p1, p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;-><init>(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    .line 380
    :cond_34
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iget-boolean v2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    if-nez v2, :cond_48

    .line 381
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput p2, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    .line 382
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    invoke-static {p1, v2}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 383
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput-boolean v1, v2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->isPosted:Z

    goto :goto_50

    .line 386
    :cond_48
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->settleRunnable:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;

    iput p2, v1, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SettleRunnable;->targetState:I

    goto :goto_50

    .line 389
    :cond_4d
    invoke-virtual {p0, p2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    .line 391
    :goto_50
    return-void
.end method
