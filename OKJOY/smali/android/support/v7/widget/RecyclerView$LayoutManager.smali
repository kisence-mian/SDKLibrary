.class public abstract Landroid/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6822
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6824
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6826
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6832
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 6834
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 9655
    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 6815
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 7690
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 7691
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_e

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 7693
    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7702
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 7703
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 7704
    :cond_27
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 7705
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 7709
    :goto_30
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7734
    :cond_39
    :goto_39
    iget-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v3, :cond_44

    .line 7738
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 7739
    iput-boolean v5, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7741
    :cond_44
    return-void

    .line 7700
    .end local v2    # "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_45
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_15

    .line 7707
    .restart local v2    # "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_4d
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_30

    .line 7713
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v3, v4, :cond_92

    .line 7715
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 7716
    .local v0, "currentIndex":I
    if-ne p2, v6, :cond_67

    .line 7717
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 7719
    :cond_67
    if-ne v0, v6, :cond_88

    .line 7720
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7722
    invoke-virtual {v5, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7724
    :cond_88
    if-eq v0, p2, :cond_39

    .line 7725
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_39

    .line 7728
    .end local v0    # "currentIndex":I
    :cond_92
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, p1, p2, v5}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7729
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7730
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 7731
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_39
.end method

.method public static chooseSize(III)I
    .registers 6
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .prologue
    .line 7021
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7022
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7023
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_1a

    .line 7030
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v1    # "size":I
    :goto_f
    :sswitch_f
    return v1

    .line 7027
    .restart local v1    # "size":I
    :sswitch_10
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_f

    .line 7023
    nop

    :sswitch_data_1a
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x40000000 -> :sswitch_f
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 7917
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 7918
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .registers 12
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 8549
    const/4 v3, 0x0

    sub-int v4, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8550
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8551
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8552
    .local v0, "resultMode":I
    if-eqz p4, :cond_28

    .line 8553
    if-ltz p3, :cond_17

    .line 8554
    move v1, p3

    .line 8555
    const/high16 v0, 0x40000000    # 2.0f

    .line 8590
    :cond_12
    :goto_12
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8556
    :cond_17
    if-ne p3, v6, :cond_23

    .line 8557
    sparse-switch p1, :sswitch_data_44

    goto :goto_12

    .line 8560
    :sswitch_1d
    move v1, v2

    .line 8561
    move v0, p1

    .line 8562
    goto :goto_12

    .line 8564
    :sswitch_20
    const/4 v1, 0x0

    .line 8565
    const/4 v0, 0x0

    goto :goto_12

    .line 8568
    :cond_23
    if-ne p3, v5, :cond_12

    .line 8569
    const/4 v1, 0x0

    .line 8570
    const/4 v0, 0x0

    goto :goto_12

    .line 8573
    :cond_28
    if-ltz p3, :cond_2e

    .line 8574
    move v1, p3

    .line 8575
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_12

    .line 8576
    :cond_2e
    if-ne p3, v6, :cond_33

    .line 8577
    move v1, v2

    .line 8578
    move v0, p1

    goto :goto_12

    .line 8579
    :cond_33
    if-ne p3, v5, :cond_12

    .line 8580
    move v1, v2

    .line 8581
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_3e

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_41

    .line 8582
    :cond_3e
    const/high16 v0, -0x80000000

    goto :goto_12

    .line 8584
    :cond_41
    const/4 v0, 0x0

    goto :goto_12

    .line 8557
    nop

    :sswitch_data_44
    .sparse-switch
        -0x80000000 -> :sswitch_1d
        0x0 -> :sswitch_20
        0x40000000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .registers 9
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8506
    const/4 v3, 0x0

    sub-int v4, p0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8507
    .local v2, "size":I
    const/4 v1, 0x0

    .line 8508
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 8509
    .local v0, "resultMode":I
    if-eqz p3, :cond_18

    .line 8510
    if-ltz p2, :cond_15

    .line 8511
    move v1, p2

    .line 8512
    const/high16 v0, 0x40000000    # 2.0f

    .line 8532
    :cond_10
    :goto_10
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 8516
    :cond_15
    const/4 v1, 0x0

    .line 8517
    const/4 v0, 0x0

    goto :goto_10

    .line 8520
    :cond_18
    if-ltz p2, :cond_1e

    .line 8521
    move v1, p2

    .line 8522
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_10

    .line 8523
    :cond_1e
    const/4 v3, -0x1

    if-ne p2, v3, :cond_25

    .line 8524
    move v1, v2

    .line 8526
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_10

    .line 8527
    :cond_25
    const/4 v3, -0x2

    if-ne p2, v3, :cond_10

    .line 8528
    move v1, v2

    .line 8529
    const/high16 v0, -0x80000000

    goto :goto_10
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9608
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9609
    .local v1, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    sget-object v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9611
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 9612
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 9613
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 9614
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 9615
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9616
    return-object v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 7
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8444
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8445
    .local v1, "specSize":I
    if-lez p2, :cond_10

    if-eq p0, p2, :cond_10

    move v2, v3

    .line 8456
    :cond_f
    :goto_f
    :sswitch_f
    return v2

    .line 8448
    :cond_10
    sparse-switch v0, :sswitch_data_1e

    move v2, v3

    .line 8456
    goto :goto_f

    .line 8452
    :sswitch_15
    if-ge v1, p0, :cond_f

    move v2, v3

    goto :goto_f

    .line 8454
    :sswitch_19
    if-eq v1, p0, :cond_f

    move v2, v3

    goto :goto_f

    .line 8448
    nop

    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_15
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_19
    .end sparse-switch
.end method

.method private onSmoothScrollerStopped(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 3
    .param p1, "smoothScroller"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 9286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_7

    .line 9287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 9289
    :cond_7
    return-void
.end method

.method private scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .registers 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 8303
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8304
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8319
    :goto_a
    return-void

    .line 8310
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 8311
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_28

    .line 8312
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8313
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_a

    .line 8315
    :cond_28
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8316
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8317
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_a
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7645
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7646
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7663
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7664
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7674
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7675
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7686
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7687
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7005
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 7006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7008
    :cond_9
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7042
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 7043
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7045
    :cond_9
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7962
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7963
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 7951
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7952
    return-void
.end method

.method public attachView(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7930
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7931
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 7932
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7936
    :goto_11
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7940
    return-void

    .line 7934
    :cond_1b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_11
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 8809
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_9

    .line 8810
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8815
    :goto_8
    return-void

    .line 8813
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8814
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .prologue
    .line 7546
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .registers 2

    .prologue
    .line 7556
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 7461
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7213
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 3
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .prologue
    .line 7241
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9140
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9155
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9170
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9185
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9200
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9215
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8295
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8296
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 8297
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8298
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8296
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 8300
    .end local v2    # "v":Landroid/view/View;
    :cond_12
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8001
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8002
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8003
    return-void
.end method

.method public detachAndScrapViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8015
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8016
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8017
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7888
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 7889
    .local v0, "ind":I
    if-ltz v0, :cond_b

    .line 7890
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7892
    :cond_b
    return-void
.end method

.method public detachViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 7910
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 7911
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 7244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7245
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7246
    return-void
.end method

.method dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 7249
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7250
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 7251
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7626
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_11

    .line 7627
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7629
    :cond_11
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7830
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 7840
    :cond_6
    :goto_6
    return-object v0

    .line 7833
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7834
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_11

    move-object v0, v1

    .line 7835
    goto :goto_6

    .line 7837
    :cond_11
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 7838
    goto :goto_6
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 7857
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 7858
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_31

    .line 7859
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7860
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7861
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_14

    .line 7858
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7864
    :cond_14
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_11

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 7865
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_11

    .line 7869
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_30
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7502
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7478
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_c

    .line 7479
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7483
    :goto_b
    return-object v0

    .line 7480
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 7481
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 7483
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 7789
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8844
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 8058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 8049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getClipToPadding()Z
    .registers 2

    .prologue
    .line 7361
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 9503
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_c

    .line 9506
    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_b
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8788
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 8740
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8741
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8752
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8617
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8618
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8603
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8604
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8776
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8764
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8195
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_7

    move-object v0, v1

    .line 8202
    :cond_6
    :goto_6
    return-object v0

    .line 8198
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8199
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_17

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_17
    move-object v0, v1

    .line 8200
    goto :goto_6
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 8112
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .registers 2

    .prologue
    .line 8094
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    .line 8216
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 8217
    .local v0, "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    :goto_a
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_10
    return v1

    .line 8216
    .end local v0    # "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    .line 8217
    .restart local v0    # "a":Landroid/support/v7/widget/RecyclerView$Adapter;
    :cond_13
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getItemViewType(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7810
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .registers 2

    .prologue
    .line 7616
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8859
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 9258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 9251
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 8148
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPaddingEnd()I
    .registers 2

    .prologue
    .line 8166
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 8121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 8139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPaddingStart()I
    .registers 2

    .prologue
    .line 8157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 8130
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7800
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8874
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v0, 0x1

    .line 9484
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_c

    .line 9487
    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_b
.end method

.method public getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9468
    const/4 v0, 0x0

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 8829
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 8707
    if-eqz p2, :cond_6b

    .line 8708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8709
    .local v1, "insets":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    .line 8710
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 8709
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8715
    .end local v1    # "insets":Landroid/graphics/Rect;
    :goto_22
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_5f

    .line 8716
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8717
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 8718
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8719
    .local v2, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8720
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8721
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    .line 8722
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    .line 8723
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    .line 8724
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 8725
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 8721
    invoke-virtual {p3, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 8729
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v2    # "tempRectF":Landroid/graphics/RectF;
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 8730
    return-void

    .line 8712
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p3, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 8103
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .registers 2

    .prologue
    .line 8076
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .registers 6

    .prologue
    .line 9641
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 9642
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1c

    .line 9643
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9644
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9645
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_19

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_19

    .line 9646
    const/4 v4, 0x1

    .line 9649
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_18
    return v4

    .line 9642
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9649
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    const/4 v4, 0x0

    goto :goto_18
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 8186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ignoreView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8261
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 8264
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View should be fully attached to be ignored"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8266
    :cond_19
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8267
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8268
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8269
    return-void
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .prologue
    .line 7261
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    .prologue
    .line 7124
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 8176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isItemPrefetchEnabled()Z
    .registers 2

    .prologue
    .line 7189
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 9520
    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .registers 2

    .prologue
    .line 8427
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .registers 2

    .prologue
    .line 7603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8653
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8655
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8688
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8689
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8690
    .local v0, "insets":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8693
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8375
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8376
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8377
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8378
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 8379
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 8380
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 8378
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8381
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 8382
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 8383
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 8381
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 8384
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 8385
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8387
    :cond_59
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 8472
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8474
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8475
    .local v1, "insets":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr p2, v4

    .line 8476
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    add-int/2addr p3, v4

    .line 8478
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v5

    .line 8479
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p2

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 8481
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    .line 8478
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8482
    .local v3, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v5

    .line 8483
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 8485
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    .line 8482
    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 8486
    .local v0, "heightSpec":I
    invoke-virtual {p0, p1, v3, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 8487
    invoke-virtual {p1, v3, v0}, Landroid/view/View;->measure(II)V

    .line 8489
    :cond_65
    return-void
.end method

.method public moveView(II)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 7982
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7983
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1f

    .line 7984
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7987
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 7988
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 7989
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 3
    .param p1, "dx"    # I

    .prologue
    .line 8227
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 8228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8230
    :cond_9
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 3
    .param p1, "dy"    # I

    .prologue
    .line 8239
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 8240
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8242
    :cond_9
    return-void
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 9023
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9051
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7316
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7325
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7352
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 7353
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8897
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 9389
    .line 9390
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 9391
    .local v0, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_c

    if-nez v0, :cond_d

    .line 9402
    :cond_c
    :goto_c
    return-void

    .line 9394
    :cond_d
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9395
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9396
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9397
    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 9394
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 9399
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_c

    .line 9400
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_c

    .line 9397
    :cond_42
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9374
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 9322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9323
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 9352
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9353
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9354
    :cond_12
    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9355
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9357
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 9358
    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 9359
    :cond_2a
    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9360
    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9364
    :cond_32
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 9365
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 9366
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    .line 9367
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    .line 9364
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 9368
    .local v0, "collectionInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 9369
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9430
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 9431
    .local v0, "rowIndexGuess":I
    :goto_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .local v2, "columnIndexGuess":I
    :goto_16
    move v3, v1

    move v5, v4

    .line 9433
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v6

    .line 9435
    .local v6, "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {p4, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 9436
    return-void

    .end local v0    # "rowIndexGuess":I
    .end local v2    # "columnIndexGuess":I
    .end local v6    # "itemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    :cond_20
    move v0, v4

    .line 9430
    goto :goto_c

    .restart local v0    # "rowIndexGuess":I
    :cond_22
    move v2, v4

    .line 9431
    goto :goto_16
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 9406
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9408
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 9409
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9412
    :cond_21
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 8917
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9073
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 9061
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 9125
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9083
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 9095
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 9108
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9109
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 7416
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7417
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 7431
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 6
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 9233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9234
    return-void
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .prologue
    .line 9007
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8985
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 9277
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 9271
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 9297
    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .registers 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 9541
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v4, :cond_8

    .line 9567
    :cond_7
    :goto_7
    return v2

    .line 9544
    :cond_8
    const/4 v1, 0x0

    .local v1, "vScroll":I
    const/4 v0, 0x0

    .line 9545
    .local v0, "hScroll":I
    sparse-switch p3, :sswitch_data_76

    .line 9563
    :cond_d
    :goto_d
    if-nez v1, :cond_11

    if-eqz v0, :cond_7

    .line 9566
    :cond_11
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v2, v3

    .line 9567
    goto :goto_7

    .line 9547
    :sswitch_18
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 9548
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v1, v4

    .line 9550
    :cond_2f
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9551
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v0, v4

    goto :goto_d

    .line 9555
    :sswitch_47
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 9556
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 9558
    :cond_5e
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9559
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v0, v4, v5

    goto :goto_d

    .line 9545
    :sswitch_data_76
    .sparse-switch
        0x1000 -> :sswitch_47
        0x2000 -> :sswitch_18
    .end sparse-switch
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9593
    const/4 v0, 0x0

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 9572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 7276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7278
    :cond_9
    return-void
.end method

.method public removeAllViews()V
    .registers 4

    .prologue
    .line 7776
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7777
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 7778
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 7777
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 7780
    :cond_10
    return-void
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 9312
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1c

    .line 9313
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9314
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_19

    .line 9315
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 9312
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 9318
    .end local v1    # "view":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    const/4 v5, 0x0

    .line 8331
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v2

    .line 8333
    .local v2, "scrapCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_3d

    .line 8334
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 8335
    .local v1, "scrap":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8336
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 8333
    :goto_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 8344
    :cond_1a
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8345
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 8346
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8348
    :cond_28
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_35

    .line 8349
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8351
    :cond_35
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8352
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    goto :goto_17

    .line 8354
    .end local v1    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3d
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearScrap()V

    .line 8355
    if-lez v2, :cond_47

    .line 8356
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8358
    :cond_47
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8026
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8027
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8028
    return-void
.end method

.method public removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 8037
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8038
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8039
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8040
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 7295
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_b

    .line 7296
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7298
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7973
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 7753
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 7764
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7765
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 7766
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewAt(I)V

    .line 7768
    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 22
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 8937
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v12

    .line 8938
    .local v12, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v14

    .line 8939
    .local v14, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v13, v15, v16

    .line 8940
    .local v13, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    sub-int v11, v15, v16

    .line 8941
    .local v11, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v2, v15, v16

    .line 8942
    .local v2, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v16

    sub-int v4, v15, v16

    .line 8943
    .local v4, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int v3, v2, v15

    .line 8944
    .local v3, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int v1, v4, v15

    .line 8946
    .local v1, "childBottom":I
    const/4 v15, 0x0

    sub-int v16, v2, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 8947
    .local v8, "offScreenLeft":I
    const/4 v15, 0x0

    sub-int v16, v4, v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8948
    .local v10, "offScreenTop":I
    const/4 v15, 0x0

    sub-int v16, v3, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 8949
    .local v9, "offScreenRight":I
    const/4 v15, 0x0

    sub-int v16, v1, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 8955
    .local v7, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8c

    .line 8956
    if-eqz v9, :cond_85

    move v5, v9

    .line 8965
    .local v5, "dx":I
    :goto_75
    if-eqz v10, :cond_97

    move v6, v10

    .line 8968
    .local v6, "dy":I
    :goto_78
    if-nez v5, :cond_7c

    if-eqz v6, :cond_a4

    .line 8969
    :cond_7c
    if-eqz p4, :cond_9e

    .line 8970
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 8974
    :goto_83
    const/4 v15, 0x1

    .line 8976
    :goto_84
    return v15

    .line 8956
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_85
    sub-int v15, v3, v13

    .line 8957
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_75

    .line 8959
    :cond_8c
    if-eqz v8, :cond_90

    move v5, v8

    .line 8960
    .restart local v5    # "dx":I
    :goto_8f
    goto :goto_75

    .line 8959
    .end local v5    # "dx":I
    :cond_90
    sub-int v15, v2, v12

    .line 8960
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_8f

    .line 8965
    .restart local v5    # "dx":I
    :cond_97
    sub-int v15, v4, v14

    .line 8966
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_78

    .line 8972
    .restart local v6    # "dy":I
    :cond_9e
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_83

    .line 8976
    :cond_a4
    const/4 v15, 0x0

    goto :goto_84
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 6992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 6993
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6995
    :cond_9
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .registers 2

    .prologue
    .line 9449
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 9450
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 7519
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 7569
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 7536
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 7112
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7113
    return-void
.end method

.method setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9620
    .line 9621
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9622
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9620
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 9624
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 7171
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_14

    .line 7172
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7173
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 7174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_14

    .line 7175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 7178
    :cond_14
    return-void
.end method

.method setMeasureSpecs(II)V
    .registers 5
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 6903
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6904
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6905
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    if-nez v0, :cond_17

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_17

    .line 6906
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6909
    :cond_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6910
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6911
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez v0, :cond_2d

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_2d

    .line 6912
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6914
    :cond_2d
    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 4
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .prologue
    .line 9244
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    # invokes: Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1000(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9245
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 10
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 6981
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 6982
    .local v2, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    .line 6983
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 6984
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v1, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 6985
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 6986
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .registers 12
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 6930
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 6931
    .local v2, "count":I
    if-nez v2, :cond_c

    .line 6932
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6959
    :goto_b
    return-void

    .line 6935
    :cond_c
    const v6, 0x7fffffff

    .line 6936
    .local v6, "minX":I
    const v7, 0x7fffffff

    .line 6937
    .local v7, "minY":I
    const/high16 v4, -0x80000000

    .line 6938
    .local v4, "maxX":I
    const/high16 v5, -0x80000000

    .line 6940
    .local v5, "maxY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_3f

    .line 6941
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6942
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 6943
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6944
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-ge v8, v6, :cond_2a

    .line 6945
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 6947
    :cond_2a
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_30

    .line 6948
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 6950
    :cond_30
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-ge v8, v7, :cond_36

    .line 6951
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 6953
    :cond_36
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v5, :cond_3c

    .line 6954
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 6940
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 6957
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "child":Landroid/view/View;
    :cond_3f
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 6958
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_b
.end method

.method public setMeasurementCacheEnabled(Z)V
    .registers 2
    .param p1, "measurementCacheEnabled"    # Z

    .prologue
    .line 8439
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8440
    return-void
.end method

.method setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 6887
    if-nez p1, :cond_13

    .line 6888
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6889
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 6890
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6891
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 6898
    :goto_e
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 6899
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 6900
    return-void

    .line 6893
    :cond_13
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6894
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 6895
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 6896
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_e
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 8410
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_22

    .line 8412
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8413
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method shouldMeasureTwice()Z
    .registers 2

    .prologue
    .line 9637
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 8396
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1c

    .line 8397
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8398
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 7582
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7583
    return-void
.end method

.method public startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 4
    .param p1, "smoothScroller"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .prologue
    .line 7591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7592
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7595
    :cond_15
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7597
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8281
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8282
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 8283
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 8284
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8285
    return-void
.end method

.method stopSmoothScroller()V
    .registers 2

    .prologue
    .line 9280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_9

    .line 9281
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9283
    :cond_9
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .prologue
    .line 7148
    const/4 v0, 0x0

    return v0
.end method
