.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;,
        Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

.field mVerticalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 7849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7857
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$1;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7893
    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;

    invoke-direct {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 7934
    new-instance v2, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    invoke-direct {v2, v0}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;-><init>(Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 7935
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;-><init>(Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 7940
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7942
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7948
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7954
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 7956
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .line 8821
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8822
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_15

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_15

    .line 8831
    :cond_d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1c

    .line 8824
    :cond_15
    :goto_15
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8833
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8834
    .local v1, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_94

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_94

    .line 8844
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-ne v2, v4, :cond_7c

    .line 8846
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 8847
    .local v2, "currentIndex":I
    const/4 v4, -0x1

    if-ne p2, v4, :cond_47

    .line 8848
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 8850
    :cond_47
    if-eq v2, v4, :cond_53

    .line 8855
    if-eq v2, p2, :cond_52

    .line 8856
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 8858
    .end local v2    # "currentIndex":I
    :cond_52
    goto :goto_aa

    .line 8851
    .restart local v2    # "currentIndex":I
    :cond_53
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8853
    invoke-virtual {v5, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8859
    .end local v2    # "currentIndex":I
    :cond_7c
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, p1, p2, v3}, Ltds/androidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 8860
    const/4 v2, 0x1

    iput-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8861
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_aa

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 8862
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_aa

    .line 8835
    :cond_94
    :goto_94
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 8836
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_a1

    .line 8838
    :cond_9e
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 8840
    :goto_a1
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4, v3}, Ltds/androidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8865
    :cond_aa
    :goto_aa
    iget-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v2, :cond_b5

    .line 8869
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 8870
    iput-boolean v3, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 8872
    :cond_b5
    return-void
.end method

.method public static chooseSize(III)I
    .registers 6
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .line 8142
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8143
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8144
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_1a

    .line 8151
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 8146
    :sswitch_10
    return v1

    .line 8148
    :sswitch_11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :sswitch_data_1a
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x40000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 9047
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->detachViewFromParent(I)V

    .line 9048
    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .registers 10
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .line 9698
    sub-int v0, p0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9699
    .local v0, "size":I
    const/4 v1, 0x0

    .line 9700
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 9701
    .local v2, "resultMode":I
    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p4, :cond_25

    .line 9702
    if-ltz p3, :cond_13

    .line 9703
    move v1, p3

    .line 9704
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_40

    .line 9705
    :cond_13
    if-ne p3, v4, :cond_20

    .line 9706
    sparse-switch p1, :sswitch_data_46

    goto :goto_1f

    .line 9713
    :sswitch_19
    const/4 v1, 0x0

    .line 9714
    const/4 v2, 0x0

    goto :goto_1f

    .line 9709
    :sswitch_1c
    move v1, v0

    .line 9710
    move v2, p1

    .line 9711
    nop

    .line 9715
    :goto_1f
    goto :goto_40

    .line 9717
    :cond_20
    if-ne p3, v3, :cond_40

    .line 9718
    const/4 v1, 0x0

    .line 9719
    const/4 v2, 0x0

    goto :goto_40

    .line 9722
    :cond_25
    if-ltz p3, :cond_2b

    .line 9723
    move v1, p3

    .line 9724
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_40

    .line 9725
    :cond_2b
    if-ne p3, v4, :cond_30

    .line 9726
    move v1, v0

    .line 9727
    move v2, p1

    goto :goto_40

    .line 9728
    :cond_30
    if-ne p3, v3, :cond_40

    .line 9729
    move v1, v0

    .line 9730
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_3e

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_3c

    goto :goto_3e

    .line 9733
    :cond_3c
    const/4 v2, 0x0

    goto :goto_40

    .line 9731
    :cond_3e
    :goto_3e
    const/high16 v2, -0x80000000

    .line 9739
    :cond_40
    :goto_40
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :sswitch_data_46
    .sparse-switch
        -0x80000000 -> :sswitch_1c
        0x0 -> :sswitch_19
        0x40000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getChildMeasureSpec(IIIZ)I
    .registers 8
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9656
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9657
    .local v0, "size":I
    const/4 v1, 0x0

    .line 9658
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 9659
    .local v2, "resultMode":I
    if-eqz p3, :cond_14

    .line 9660
    if-ltz p2, :cond_11

    .line 9661
    move v1, p2

    .line 9662
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_27

    .line 9666
    :cond_11
    const/4 v1, 0x0

    .line 9667
    const/4 v2, 0x0

    goto :goto_27

    .line 9670
    :cond_14
    if-ltz p2, :cond_1a

    .line 9671
    move v1, p2

    .line 9672
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_27

    .line 9673
    :cond_1a
    const/4 v3, -0x1

    if-ne p2, v3, :cond_21

    .line 9674
    move v1, v0

    .line 9676
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_27

    .line 9677
    :cond_21
    const/4 v3, -0x2

    if-ne p2, v3, :cond_27

    .line 9678
    move v1, v0

    .line 9679
    const/high16 v2, -0x80000000

    .line 9682
    :cond_27
    :goto_27
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3
.end method

.method private getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 10083
    move-object/from16 v0, p2

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 10084
    .local v1, "out":[I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 10085
    .local v2, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 10086
    .local v3, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10087
    .local v4, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 10088
    .local v5, "parentBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 10089
    .local v6, "childLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 10090
    .local v7, "childTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    .line 10091
    .local v8, "childRight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v7

    .line 10093
    .local v9, "childBottom":I
    sub-int v10, v6, v2

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 10094
    .local v10, "offScreenLeft":I
    sub-int v12, v7, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 10095
    .local v12, "offScreenTop":I
    sub-int v13, v8, v4

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 10096
    .local v13, "offScreenRight":I
    sub-int v14, v9, v5

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 10102
    .local v14, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/4 v11, 0x1

    if-ne v15, v11, :cond_6d

    .line 10103
    if-eqz v13, :cond_65

    move v15, v13

    goto :goto_6b

    :cond_65
    sub-int v15, v8, v4

    .line 10104
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_6b
    nop

    .local v15, "dx":I
    goto :goto_78

    .line 10106
    .end local v15    # "dx":I
    :cond_6d
    if-eqz v10, :cond_71

    move v15, v10

    goto :goto_77

    :cond_71
    sub-int v15, v6, v2

    .line 10107
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_77
    nop

    .line 10112
    .restart local v15    # "dx":I
    :goto_78
    if-eqz v12, :cond_7c

    move v11, v12

    goto :goto_82

    :cond_7c
    sub-int v11, v7, v3

    .line 10113
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_82
    nop

    .line 10114
    .local v11, "dy":I
    const/16 v16, 0x0

    aput v15, v1, v16

    .line 10115
    const/16 v16, 0x1

    aput v11, v1, v16

    .line 10116
    return-object v1
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 10693
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 10696
    .local v0, "properties":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    const/4 v1, 0x1

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 10698
    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 10699
    const/4 v1, 0x0

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 10700
    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 10702
    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Ltds/androidx/recyclerview/widget/RecyclerView;II)Z
    .registers 12
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 10222
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 10223
    .local v0, "focusedChild":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 10224
    return v1

    .line 10226
    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 10227
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 10228
    .local v3, "parentTop":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10229
    .local v4, "parentRight":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 10230
    .local v5, "parentBottom":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 10231
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10233
    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, p2

    if-ge v7, v4, :cond_40

    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, p2

    if-le v7, v2, :cond_40

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, p3

    if-ge v7, v5, :cond_40

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, p3

    if-gt v7, v3, :cond_3e

    goto :goto_40

    .line 10237
    :cond_3e
    const/4 v1, 0x1

    return v1

    .line 10235
    :cond_40
    :goto_40
    return v1
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 7
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .line 9594
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9595
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 9596
    .local v1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_e

    if-eq p0, p2, :cond_e

    .line 9597
    return v2

    .line 9599
    :cond_e
    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_1c

    .line 9607
    return v2

    .line 9605
    :sswitch_13
    if-ne v1, p0, :cond_16

    move v2, v3

    :cond_16
    return v2

    .line 9601
    :sswitch_17
    return v3

    .line 9603
    :sswitch_18
    if-lt v1, p0, :cond_1b

    move v2, v3

    :cond_1b
    return v2

    :sswitch_data_1c
    .sparse-switch
        -0x80000000 -> :sswitch_18
        0x0 -> :sswitch_17
        0x40000000 -> :sswitch_13
    .end sparse-switch
.end method

.method private scrapOrRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .registers 6
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 9455
    invoke-static {p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9456
    .local v0, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9460
    return-void

    .line 9462
    :cond_b
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9463
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_28

    .line 9464
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9465
    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_35

    .line 9467
    :cond_28
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9468
    invoke-virtual {p1, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 9469
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->onViewDetached(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9471
    :goto_35
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 8776
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 8777
    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 8794
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8795
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 8805
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 8806
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 8817
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 8818
    return-void
.end method

.method public assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 8127
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 8128
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 8130
    :cond_7
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 8163
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 8164
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 8166
    :cond_7
    return-void
.end method

.method public attachView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 9092
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 9093
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 9081
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 9082
    return-void
.end method

.method public attachView(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9060
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9061
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 9062
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_19

    .line 9064
    :cond_12
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9066
    :goto_19
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 9070
    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 9955
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 9956
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9957
    return-void

    .line 9959
    :cond_9
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9960
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9961
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .line 8671
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .registers 2

    .line 8681
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8586
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILtds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 8343
    return-void
.end method

.method public collectInitialPrefetchPositions(ILtds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 3
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 8371
    return-void
.end method

.method public computeHorizontalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10384
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10399
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10414
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10429
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10444
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10459
    const/4 v0, 0x0

    return v0
.end method

.method public detachAndScrapAttachedViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9447
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 9448
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 9449
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9450
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 9448
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 9452
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public detachAndScrapView(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9131
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9132
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 9133
    return-void
.end method

.method public detachAndScrapViewAt(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9145
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9146
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 9147
    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 9018
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 9019
    .local v0, "ind":I
    if-ltz v0, :cond_b

    .line 9020
    invoke-direct {p0, v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 9022
    :cond_b
    return-void
.end method

.method public detachViewAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 9040
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 9041
    return-void
.end method

.method dispatchAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8374
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8375
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 8376
    return-void
.end method

.method dispatchDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 8379
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 8380
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 8381
    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 8757
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_11

    .line 8758
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8760
    :cond_11
    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 8959
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 8960
    return-object v1

    .line 8962
    :cond_6
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 8963
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_d

    .line 8964
    return-object v1

    .line 8966
    :cond_d
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8967
    return-object v1

    .line 8969
    :cond_16
    return-object v0
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .line 8987
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8988
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_32

    .line 8989
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8990
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8991
    .local v3, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_12

    .line 8992
    goto :goto_2f

    .line 8994
    :cond_12
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2f

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 8995
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 8996
    :cond_2e
    return-object v2

    .line 8988
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 8999
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract generateDefaultLayoutParams()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 8627
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8603
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_d

    .line 8604
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 8605
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    .line 8606
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 8608
    :cond_1a
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .line 8920
    const/4 v0, -0x1

    return v0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 9990
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 9190
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .line 9179
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getClipToPadding()Z
    .registers 2

    .line 8486
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public getColumnCountForAccessibility(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10663
    const/4 v0, -0x1

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 9934
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 9886
    invoke-static {p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9887
    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 9898
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 9764
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9765
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

    .line 9751
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9752
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

    .line 9922
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 9910
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 4

    .line 9344
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 9345
    return-object v1

    .line 9347
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 9348
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_16

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_16

    .line 9351
    :cond_15
    return-object v0

    .line 9349
    :cond_16
    :goto_16
    return-object v1
.end method

.method public getHeight()I
    .registers 2

    .line 9254
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public getHeightMode()I
    .registers 2

    .line 9222
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 9367
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 9368
    .local v0, "a":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    :goto_a
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public getItemViewType(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 8941
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .registers 2

    .line 8747
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 10005
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 10513
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 10505
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .line 9294
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPaddingEnd()I
    .registers 2

    .line 9314
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 9264
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .line 9284
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPaddingStart()I
    .registers 2

    .line 9304
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ltds/androidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 9274
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 8931
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 10020
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getRowCountForAccessibility(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10646
    const/4 v0, -0x1

    return v0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 9975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 9853
    if-eqz p2, :cond_22

    .line 9854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9855
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 9856
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 9855
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 9857
    .end local v0    # "insets":Landroid/graphics/Rect;
    goto :goto_2e

    .line 9858
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9861
    :goto_2e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6b

    .line 9862
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 9863
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 9864
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9865
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9866
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9867
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 9868
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 9869
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 9870
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    .line 9871
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 9867
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9875
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9876
    return-void
.end method

.method public getWidth()I
    .registers 2

    .line 9238
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public getWidthMode()I
    .registers 2

    .line 9206
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .registers 6

    .line 10727
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 10728
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 10729
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10730
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10731
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_19

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_19

    .line 10732
    const/4 v4, 0x1

    return v4

    .line 10728
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 10735
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public hasFocus()Z
    .registers 2

    .line 9334
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public ignoreView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 9412
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-ne v0, v1, :cond_20

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 9418
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9419
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9420
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9421
    return-void

    .line 9415
    .end local v0    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View should be fully attached to be ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 9416
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .line 8391
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .registers 2

    .line 8254
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 9324
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final isItemPrefetchEnabled()Z
    .registers 2

    .line 8319
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public isLayoutHierarchical(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z
    .registers 4
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10677
    const/4 v0, 0x0

    return v0
.end method

.method public isMeasurementCacheEnabled()Z
    .registers 2

    .line 9579
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrolling()Z
    .registers 2

    .line 8735
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "completelyVisible"    # Z
    .param p3, "acceptEndPointInclusion"    # Z

    .line 10199
    const/16 v0, 0x6003

    .line 10201
    .local v0, "boundsFlag":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Ltds/androidx/recyclerview/widget/ViewBoundsCheck;

    .line 10203
    invoke-virtual {v1, p1, v0}, Ltds/androidx/recyclerview/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    .line 10204
    .local v1, "isViewFullyVisible":Z
    :goto_17
    if-eqz p2, :cond_1a

    .line 10205
    return v1

    .line 10207
    :cond_1a
    if-nez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :goto_1e
    return v2
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 9798
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9799
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

    .line 9801
    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 9833
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9834
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 9835
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 9838
    return-void
.end method

.method public measureChild(Landroid/view/View;II)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 9525
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9527
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9528
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9529
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 9530
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 9531
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 9532
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 9530
    invoke-static {v2, v3, v4, v5, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 9533
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 9534
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 9535
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 9533
    invoke-static {v3, v4, v5, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 9536
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 9537
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 9539
    :cond_59
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 9623
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9625
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9626
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 9627
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 9629
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 9630
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 9632
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 9629
    invoke-static {v2, v3, v4, v5, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 9633
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 9634
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 9636
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 9633
    invoke-static {v3, v4, v5, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 9637
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 9638
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 9640
    :cond_65
    return-void
.end method

.method public moveView(II)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 9112
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9113
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 9117
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 9118
    invoke-virtual {p0, v0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 9119
    return-void

    .line 9114
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 9115
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 3
    .param p1, "dx"    # I

    .line 9378
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 9379
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 9381
    :cond_7
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 3
    .param p1, "dy"    # I

    .line 9390
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 9391
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 9393
    :cond_7
    return-void
.end method

.method public onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "oldAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10288
    return-void
.end method

.method public onAddFocusables(Ltds/androidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 6
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 10314
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8443
    return-void
.end method

.method public onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8451
    return-void
.end method

.method public onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3
    .param p1, "view"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 8477
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 8478
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10048
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 10588
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10589
    return-void
.end method

.method public onInitializeAccessibilityEvent(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 10604
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_40

    if-nez p3, :cond_7

    goto :goto_40

    .line 10607
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 10608
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 10609
    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 10610
    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    .line 10607
    :goto_2b
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10612
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3f

    .line 10613
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 10615
    :cond_3f
    return-void

    .line 10605
    :cond_40
    :goto_40
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 10069
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemsAdded(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 10332
    return-void
.end method

.method public onItemsChanged(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 10323
    return-void
.end method

.method public onItemsMoved(Ltds/androidx/recyclerview/widget/RecyclerView;III)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 10369
    return-void
.end method

.method public onItemsRemoved(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 10339
    return-void
.end method

.method public onItemsUpdated(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 10348
    return-void
.end method

.method public onItemsUpdated(Ltds/androidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 10356
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 10357
    return-void
.end method

.method public onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 8541
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8542
    return-void
.end method

.method public onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 8556
    return-void
.end method

.method public onMeasure(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V
    .registers 6
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 10486
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Ltds/androidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 10487
    return-void
.end method

.method public onRequestChildFocus(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10247
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onRequestChildFocus(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .line 10269
    invoke-virtual {p0, p1, p3, p4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 10543
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 10528
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 10563
    return-void
.end method

.method onSmoothScrollerStopped(Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .registers 3
    .param p1, "smoothScroller"    # Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 10552
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_7

    .line 10553
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 10555
    :cond_7
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 8404
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 8405
    invoke-static {v0, p1}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8407
    :cond_7
    return-void
.end method

.method public removeAllViews()V
    .registers 4

    .line 8907
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8908
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_10

    .line 8909
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    .line 8908
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 8911
    .end local v1    # "i":I
    :cond_10
    return-void
.end method

.method public removeAndRecycleAllViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 10578
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1c

    .line 10579
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 10580
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_19

    .line 10581
    invoke-virtual {p0, v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 10578
    .end local v1    # "view":Landroid/view/View;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 10584
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method removeAndRecycleScrapInt(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 8
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9483
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    .line 9485
    .local v0, "scrapCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3d

    .line 9486
    invoke-virtual {p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 9487
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 9488
    .local v3, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 9489
    goto :goto_3a

    .line 9496
    :cond_17
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9497
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 9498
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9500
    :cond_26
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_33

    .line 9501
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9503
    :cond_33
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9504
    invoke-virtual {p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 9485
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 9506
    .end local v1    # "i":I
    :cond_3d
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clearScrap()V

    .line 9507
    if-lez v0, :cond_47

    .line 9508
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 9510
    :cond_47
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9156
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 9157
    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 9158
    return-void
.end method

.method public removeAndRecycleViewAt(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 9167
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9168
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 9169
    invoke-virtual {p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 9170
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 8422
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 8423
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 8425
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public removeDetachedView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 9102
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9103
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 8883
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 8884
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 8895
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8896
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 8897
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    .line 8899
    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 10136
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 12
    .param p1, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .param p5, "focusedChildVisible"    # Z

    .line 10157
    invoke-direct {p0, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 10159
    .local v0, "scrollAmount":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 10160
    .local v2, "dx":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 10161
    .local v4, "dy":I
    if-eqz p5, :cond_12

    invoke-direct {p0, p1, v2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Ltds/androidx/recyclerview/widget/RecyclerView;II)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 10162
    :cond_12
    if-nez v2, :cond_18

    if-eqz v4, :cond_17

    goto :goto_18

    .line 10171
    :cond_17
    return v1

    .line 10163
    :cond_18
    :goto_18
    if-eqz p4, :cond_1e

    .line 10164
    invoke-virtual {p1, v2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_21

    .line 10166
    :cond_1e
    invoke-virtual {p1, v2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 10168
    :goto_21
    return v3
.end method

.method public requestLayout()V
    .registers 2

    .line 8114
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 8115
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 8117
    :cond_7
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .registers 2

    .line 10629
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 10630
    return-void
.end method

.method public scrollHorizontallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 8644
    const/4 v0, 0x0

    return v0
.end method

.method public scrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 8695
    return-void
.end method

.method public scrollVerticallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 8661
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoMeasureEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8182
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 8183
    return-void
.end method

.method setExactMeasureSpecsFrom(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 10706
    nop

    .line 10707
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10708
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10706
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 10710
    return-void
.end method

.method public final setItemPrefetchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 8302
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_12

    .line 8303
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 8304
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 8305
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_12

    .line 8306
    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 8309
    :cond_12
    return-void
.end method

.method setMeasureSpecs(II)V
    .registers 5
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .line 8025
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8026
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 8027
    const/4 v1, 0x0

    if-nez v0, :cond_15

    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_15

    .line 8028
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8031
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 8032
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 8033
    if-nez v0, :cond_29

    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_29

    .line 8034
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 8036
    :cond_29
    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 4
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .line 10497
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    # invokes: Ltds/androidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->access$300(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 10498
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 8103
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 8104
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 8105
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v2

    .line 8106
    .local v2, "width":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v3

    invoke-static {p3, v1, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 8107
    .local v3, "height":I
    invoke-virtual {p0, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 8108
    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .registers 12
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 8052
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8053
    .local v0, "count":I
    if-nez v0, :cond_c

    .line 8054
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 8055
    return-void

    .line 8057
    :cond_c
    const v1, 0x7fffffff

    .line 8058
    .local v1, "minX":I
    const v2, 0x7fffffff

    .line 8059
    .local v2, "minY":I
    const/high16 v3, -0x80000000

    .line 8060
    .local v3, "maxX":I
    const/high16 v4, -0x80000000

    .line 8062
    .local v4, "maxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v0, :cond_3f

    .line 8063
    invoke-virtual {p0, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8064
    .local v6, "child":Landroid/view/View;
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 8065
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8066
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-ge v8, v1, :cond_2a

    .line 8067
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 8069
    :cond_2a
    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v3, :cond_30

    .line 8070
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 8072
    :cond_30
    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-ge v8, v2, :cond_36

    .line 8073
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 8075
    :cond_36
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_3c

    .line 8076
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 8062
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 8079
    .end local v5    # "i":I
    :cond_3f
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8080
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 8081
    return-void
.end method

.method public setMeasurementCacheEnabled(Z)V
    .registers 2
    .param p1, "measurementCacheEnabled"    # Z

    .line 9590
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 9591
    return-void
.end method

.method setRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8009
    if-nez p1, :cond_d

    .line 8010
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8011
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    .line 8012
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8013
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_1f

    .line 8015
    :cond_d
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 8016
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    .line 8017
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 8018
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 8020
    :goto_1f
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 8021
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 8022
    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9563
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_25

    .line 9565
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9566
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 9563
    :goto_26
    return v0
.end method

.method shouldMeasureTwice()Z
    .registers 2

    .line 10723
    const/4 v0, 0x0

    return v0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9548
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1f

    .line 9549
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9550
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 9548
    :goto_20
    return v0
.end method

.method public smoothScrollToPosition(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 6
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 8709
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8710
    return-void
.end method

.method public startSmoothScroll(Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .registers 3
    .param p1, "smoothScroller"    # Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8723
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_11

    if-eq p1, v0, :cond_11

    .line 8724
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8725
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 8727
    :cond_11
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 8728
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->start(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8729
    return-void
.end method

.method public stopIgnoringView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 9433
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9434
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 9435
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 9436
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 9437
    return-void
.end method

.method stopSmoothScroller()V
    .registers 2

    .line 10546
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_7

    .line 10547
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 10549
    :cond_7
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 8280
    const/4 v0, 0x0

    return v0
.end method
