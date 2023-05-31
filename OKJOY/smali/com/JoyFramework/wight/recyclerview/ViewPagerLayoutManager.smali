.class public abstract Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$OnPageChangeListener;,
        Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;
    }
.end annotation


# static fields
.field public static final DETERMINE_BY_MAX_AND_MIN:I = -0x1

.field private static final DIRECTION_BACKWARD:I = 0x1

.field private static final DIRECTION_FORWARD:I = 0x0

.field private static final DIRECTION_NO_WHERE:I = -0x1

.field public static final HORIZONTAL:I = 0x0

.field protected static final INVALID_SIZE:I = 0x7fffffff

.field public static final VERTICAL:I = 0x1


# instance fields
.field private currentFocusView:Landroid/view/View;

.field protected mDecoratedMeasurement:I

.field protected mDecoratedMeasurementInOther:I

.field private mDistanceToBottom:I

.field private mEnableBringCenterToFront:Z

.field private mInfinite:Z

.field protected mInterval:F

.field private mLeftItems:I

.field private mMaxVisibleItemCount:I

.field protected mOffset:F

.field mOrientation:I

.field protected mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

.field private mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

.field private mPendingScrollPosition:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field private mRightItems:I

.field private mShouldReverseLayout:Z

.field private mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mSmoothScrollbarEnabled:Z

.field protected mSpaceInOther:I

.field protected mSpaceMain:I

.field onPageChangeListener:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$OnPageChangeListener;

.field private positionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    .line 70
    iput-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    .line 77
    iput-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    .line 83
    iput-boolean v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 89
    iput v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    .line 99
    iput-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    .line 110
    iput v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    .line 114
    const v0, 0x7fffffff

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    .line 150
    invoke-virtual {p0, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setOrientation(I)V

    .line 151
    invoke-virtual {p0, p3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setReverseLayout(Z)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setItemPrefetchEnabled(Z)V

    .line 154
    return-void
.end method

.method private computeScrollExtent()I
    .registers 2

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 558
    const/4 v0, 0x0

    .line 564
    :goto_7
    return v0

    .line 561
    :cond_8
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_e

    .line 562
    const/4 v0, 0x1

    goto :goto_7

    .line 564
    :cond_e
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    float-to-int v0, v0

    goto :goto_7
.end method

.method private computeScrollOffset()I
    .registers 4

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 544
    const/4 v0, 0x0

    .line 553
    :goto_7
    return v0

    .line 547
    :cond_8
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_21

    .line 548
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_15

    .line 549
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPosition()I

    move-result v0

    goto :goto_7

    :cond_15
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 552
    :cond_21
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getOffsetOfRightAdapterPosition()F

    move-result v0

    .line 553
    iget-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_2b

    float-to-int v0, v0

    goto :goto_7

    :cond_2b
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_7
.end method

.method private computeScrollRange()I
    .registers 3

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 569
    const/4 v0, 0x0

    .line 576
    :goto_7
    return v0

    .line 572
    :cond_8
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_11

    .line 573
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    goto :goto_7

    .line 576
    :cond_11
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_7
.end method

.method private getMeasureView(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)Landroid/view/View;
    .registers 5

    .prologue
    .line 421
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p3, v0, :cond_8

    if-gez p3, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 425
    :goto_9
    return-object v0

    .line 423
    :cond_a
    :try_start_a
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_9

    .line 424
    :catch_f
    move-exception v0

    .line 425
    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMeasureView(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method private getMovement(I)I
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 462
    iget v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-ne v3, v1, :cond_20

    .line 463
    const/16 v3, 0x21

    if-ne p1, v3, :cond_12

    .line 464
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_10

    .line 476
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 464
    goto :goto_f

    .line 465
    :cond_12
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1e

    .line 466
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_1c

    :goto_1a
    move v0, v1

    goto :goto_f

    :cond_1c
    move v1, v0

    goto :goto_1a

    :cond_1e
    move v0, v2

    .line 468
    goto :goto_f

    .line 471
    :cond_20
    const/16 v3, 0x11

    if-ne p1, v3, :cond_2a

    .line 472
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 473
    :cond_2a
    const/16 v3, 0x42

    if-ne p1, v3, :cond_36

    .line 474
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_34

    :goto_32
    move v0, v1

    goto :goto_f

    :cond_34
    move v1, v0

    goto :goto_32

    :cond_36
    move v0, v2

    .line 476
    goto :goto_f
.end method

.method private getOffsetOfRightAdapterPosition()F
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 813
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_34

    .line 814
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1b

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    .line 816
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    rem-float/2addr v0, v1

    .line 820
    :goto_1a
    return v0

    .line 817
    :cond_1b
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1a

    :cond_31
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    goto :goto_1a

    .line 820
    :cond_34
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    .line 822
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    rem-float/2addr v0, v1

    goto :goto_1a

    .line 823
    :cond_4a
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    rem-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_1a

    :cond_5f
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    goto :goto_1a
.end method

.method private getProperty(I)F
    .registers 4

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_a

    int-to-float v0, p1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    int-to-float v0, p1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    goto :goto_9
.end method

.method private layoutItems(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 626
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 627
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 629
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    .line 630
    if-nez v3, :cond_10

    .line 692
    :goto_f
    return-void

    .line 633
    :cond_10
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_97

    .line 634
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    neg-int v0, v0

    .line 635
    :goto_19
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mLeftItems:I

    sub-int v2, v0, v1

    .line 636
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRightItems:I

    add-int/2addr v1, v0

    .line 639
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->useMaxVisibleCount()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 640
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9d

    const/4 v1, 0x1

    .line 641
    :goto_2d
    if-eqz v1, :cond_9f

    .line 642
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    div-int/lit8 v1, v1, 0x2

    .line 643
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 644
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 652
    :cond_3a
    :goto_3a
    iget-boolean v4, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-nez v4, :cond_4c

    .line 653
    if-gez v2, :cond_49

    .line 655
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->useMaxVisibleCount()Z

    move-result v2

    if-eqz v2, :cond_c6

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    move v2, v6

    .line 657
    :cond_49
    :goto_49
    if-le v1, v3, :cond_4c

    move v1, v3

    .line 660
    :cond_4c
    const/4 v5, 0x1

    move v4, v2

    .line 661
    :goto_4e
    if-ge v4, v1, :cond_bb

    .line 662
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->useMaxVisibleCount()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-direct {p0, v4}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getProperty(I)F

    move-result v2

    iget v7, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v2, v7

    invoke-direct {p0, v2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeCondition(F)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 666
    :cond_63
    if-lt v4, v3, :cond_ab

    .line 667
    rem-int v2, v4, v3

    .line 673
    :goto_67
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v7

    .line 674
    invoke-virtual {p0, v7, v6, v6}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 675
    invoke-direct {p0, v7}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->resetViewProperty(Landroid/view/View;)V

    .line 677
    invoke-direct {p0, v4}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getProperty(I)F

    move-result v8

    iget v9, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v8, v9

    .line 678
    invoke-direct {p0, v7, v8}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->layoutScrap(Landroid/view/View;F)V

    .line 679
    iget-boolean v9, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mEnableBringCenterToFront:Z

    if-eqz v9, :cond_b5

    .line 680
    invoke-virtual {p0, v7, v8}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setViewElevation(Landroid/view/View;F)F

    move-result v2

    .line 681
    :goto_83
    cmpl-float v5, v2, v5

    if-lez v5, :cond_b7

    .line 682
    invoke-virtual {p0, v7}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->addView(Landroid/view/View;)V

    .line 686
    :goto_8a
    if-ne v4, v0, :cond_8e

    iput-object v7, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->currentFocusView:Landroid/view/View;

    .line 688
    :cond_8e
    iget-object v5, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 661
    :goto_93
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_4e

    .line 634
    :cond_97
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    goto/16 :goto_19

    :cond_9d
    move v1, v6

    .line 640
    goto :goto_2d

    .line 646
    :cond_9f
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 647
    sub-int v2, v0, v1

    .line 648
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 668
    :cond_ab
    if-gez v4, :cond_c2

    .line 669
    neg-int v2, v4

    rem-int/2addr v2, v3

    .line 670
    if-nez v2, :cond_b2

    move v2, v3

    .line 671
    :cond_b2
    sub-int v2, v3, v2

    goto :goto_67

    .line 680
    :cond_b5
    int-to-float v2, v2

    goto :goto_83

    .line 684
    :cond_b7
    invoke-virtual {p0, v7, v6}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_8a

    .line 691
    :cond_bb
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->currentFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_f

    :cond_c2
    move v2, v4

    goto :goto_67

    :cond_c4
    move v2, v5

    goto :goto_93

    :cond_c6
    move v2, v6

    goto :goto_49
.end method

.method private layoutScrap(Landroid/view/View;F)V
    .registers 9

    .prologue
    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->calItemLeft(Landroid/view/View;F)I

    move-result v0

    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->calItemTop(Landroid/view/View;F)I

    move-result v1

    .line 722
    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 723
    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurement:I

    add-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 729
    :goto_25
    invoke-virtual {p0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setItemViewProperty(Landroid/view/View;F)V

    .line 730
    return-void

    .line 726
    :cond_29
    iget v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurement:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_25
.end method

.method private removeCondition(F)Z
    .registers 3

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->maxRemoveOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_10

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->minRemoveOffset()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private resetViewProperty(Landroid/view/View;)V
    .registers 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 703
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 704
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 705
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 706
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 707
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 708
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 709
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 295
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_b

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_10

    .line 296
    :cond_b
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    .line 300
    :goto_f
    return-void

    .line 298
    :cond_10
    iget-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_17

    :goto_14
    iput-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    goto :goto_f

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move p1, v0

    .line 622
    :goto_a
    return p1

    .line 599
    :cond_b
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->ensureLayoutState()V

    .line 602
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v2

    div-float/2addr v1, v2

    .line 603
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_21

    move p1, v0

    .line 604
    goto :goto_a

    .line 606
    :cond_21
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    add-float/2addr v0, v1

    .line 609
    iget-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-nez v1, :cond_4d

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMinOffset()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4d

    .line 610
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMinOffset()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int p1, v0

    .line 615
    :cond_3e
    :goto_3e
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float/2addr v0, v1

    .line 617
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 620
    invoke-direct {p0, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->layoutItems(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_a

    .line 611
    :cond_4d
    iget-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-nez v1, :cond_3e

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMaxOffset()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 612
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMaxOffset()F

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_3e
.end method

.method private useMaxVisibleCount()Z
    .registers 3

    .prologue
    .line 695
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method protected calItemLeft(Landroid/view/View;F)I
    .registers 5

    .prologue
    .line 733
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    float-to-int v0, p2

    goto :goto_6
.end method

.method protected calItemTop(Landroid/view/View;F)I
    .registers 5

    .prologue
    .line 737
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    float-to-int v0, p2

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canScrollVertically()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 232
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->computeScrollRange()I

    move-result v0

    return v0
.end method

.method ensureLayoutState()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    if-nez v0, :cond_c

    .line 483
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    .line 485
    :cond_c
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    .line 780
    if-nez v3, :cond_9

    move-object v0, v1

    .line 791
    :goto_8
    return-object v0

    .line 781
    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 782
    iget-object v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 783
    if-ltz v2, :cond_26

    .line 784
    rem-int/2addr v2, v3

    if-ne p1, v2, :cond_36

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_8

    .line 786
    :cond_26
    rem-int/2addr v2, v3

    .line 787
    if-nez v2, :cond_2a

    neg-int v2, v3

    .line 788
    :cond_2a
    add-int/2addr v2, v3

    if-ne v2, p1, :cond_36

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_8

    .line 781
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_39
    move-object v0, v1

    .line 791
    goto :goto_8
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 158
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCurrentPosition()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 774
    :goto_7
    return v1

    .line 763
    :cond_8
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 764
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-nez v2, :cond_15

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_7

    .line 766
    :cond_15
    iget-boolean v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v2, :cond_34

    if-ltz v0, :cond_29

    .line 769
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    .line 774
    :goto_20
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_27

    move v0, v1

    :cond_27
    move v1, v0

    goto :goto_7

    .line 770
    :cond_29
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_20

    :cond_34
    if-lez v0, :cond_42

    .line 772
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    sub-int v0, v2, v0

    goto :goto_20

    :cond_42
    neg-int v0, v0

    .line 773
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    goto :goto_20
.end method

.method getCurrentPositionOffset()I
    .registers 3

    .prologue
    .line 804
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 805
    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_8
.end method

.method protected getDistanceRatio()F
    .registers 2

    .prologue
    .line 757
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDistanceToBottom()I
    .registers 3

    .prologue
    .line 869
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    .line 870
    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpaceInOther()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 869
    :goto_12
    return v0

    .line 870
    :cond_13
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    goto :goto_12
.end method

.method public getEnableBringCenterToFront()Z
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mEnableBringCenterToFront:Z

    return v0
.end method

.method public getInfinite()Z
    .registers 2

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    return v0
.end method

.method public getLayoutPositionOfView(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 795
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 796
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 797
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 798
    if-ne v0, p1, :cond_1c

    move v0, v2

    .line 800
    :goto_1b
    return v0

    .line 795
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 800
    :cond_20
    const/4 v0, -0x1

    goto :goto_1b
.end method

.method getMaxOffset()F
    .registers 3

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getMaxVisibleItemCount()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    return v0
.end method

.method getMinOffset()F
    .registers 3

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    goto :goto_5
.end method

.method public getOffsetToCenter()I
    .registers 3

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_16

    .line 834
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 835
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPosition()I

    move-result v0

    int-to-float v1, v0

    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    :goto_21
    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    .line 836
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 835
    goto :goto_15

    :cond_2c
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_21
.end method

.method public getOffsetToPosition(I)I
    .registers 4

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_28

    .line 841
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v1

    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_21

    .line 842
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    sub-int v0, p1, v0

    :goto_12
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    .line 843
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 844
    :goto_20
    return v0

    .line 842
    :cond_21
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, p1

    goto :goto_12

    .line 844
    :cond_28
    int-to-float v1, p1

    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_3a

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    :goto_2f
    mul-float/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    .line 845
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getDistanceRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 844
    goto :goto_20

    :cond_3a
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_2f
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSmoothScrollbarEnabled()Z
    .registers 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method protected maxRemoveOffset()F
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected minRemoveOffset()F
    .registers 3

    .prologue
    .line 753
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurement:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 4

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAllViews()V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 502
    return-void
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 9
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
    const/4 v3, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 440
    if-nez v1, :cond_c

    .line 453
    :cond_b
    :goto_b
    return v3

    .line 441
    :cond_c
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 442
    invoke-direct {p0, p3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMovement(I)I

    move-result v1

    .line 443
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 444
    if-ne v1, v3, :cond_21

    add-int/lit8 v0, v0, -0x1

    .line 446
    :goto_1d
    invoke-static {p1, p0, v0}, Lcom/JoyFramework/wight/recyclerview/ScrollHelper;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;I)V

    goto :goto_b

    .line 444
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 449
    :cond_24
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_b
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 193
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz v0, :cond_d

    .line 194
    invoke-virtual {p0, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 195
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 197
    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 6

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 369
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 370
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 371
    iput v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 418
    :goto_e
    return-void

    .line 375
    :cond_f
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->ensureLayoutState()V

    .line 376
    invoke-direct {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->resolveShouldLayoutReverse()V

    .line 379
    invoke-direct {p0, p1, p2, v1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getMeasureView(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)Landroid/view/View;

    move-result-object v0

    .line 380
    if-nez v0, :cond_21

    .line 381
    invoke-virtual {p0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 382
    iput v2, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    goto :goto_e

    .line 386
    :cond_21
    invoke-virtual {p0, v0, v1, v1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 387
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurement:I

    .line 388
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    .line 389
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceMain:I

    .line 390
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_95

    .line 391
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpaceInOther()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    .line 396
    :goto_55
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setInterval()F

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    .line 397
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->setUp()V

    .line 398
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_a4

    .line 399
    iput v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mLeftItems:I

    .line 400
    iput v3, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRightItems:I

    .line 406
    :goto_68
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    if-eqz v0, :cond_7e

    .line 407
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    iget-boolean v0, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    iput-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    .line 408
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    iget v0, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    .line 409
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    iget v0, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 412
    :cond_7e
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_90

    .line 413
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_c5

    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    :goto_8e
    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 417
    :cond_90
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->layoutItems(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto/16 :goto_e

    .line 393
    :cond_95
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpaceInOther()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSpaceInOther:I

    goto :goto_55

    .line 402
    :cond_a4
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->minRemoveOffset()F

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mLeftItems:I

    .line 403
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->maxRemoveOffset()F

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRightItems:I

    goto :goto_68

    .line 413
    :cond_c5
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    goto :goto_8e
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 3

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    .line 434
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 213
    instance-of v0, p1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    if-eqz v0, :cond_10

    .line 214
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    check-cast p1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;-><init>(Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    .line 215
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->requestLayout()V

    .line 217
    :cond_10
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    if-eqz v0, :cond_c

    .line 202
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingSavedState:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    invoke-direct {v0, v1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;-><init>(Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;)V

    .line 208
    :goto_b
    return-object v0

    .line 204
    :cond_c
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;

    invoke-direct {v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;-><init>()V

    .line 205
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->a:I

    .line 206
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    iput v1, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->b:F

    .line 207
    iget-boolean v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$a;->c:Z

    goto :goto_b
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 6

    .prologue
    .line 581
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 582
    const/4 v0, 0x0

    .line 584
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_6
.end method

.method public scrollToPosition(I)V
    .registers 4

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-nez v0, :cond_d

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    .line 510
    :cond_c
    :goto_c
    return-void

    .line 507
    :cond_d
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mPendingScrollPosition:I

    .line 508
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1e

    int-to-float v0, p1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    :goto_18
    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOffset:F

    .line 509
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->requestLayout()V

    goto :goto_c

    .line 508
    :cond_1e
    int-to-float v0, p1

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInterval:F

    mul-float/2addr v0, v1

    goto :goto_18
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .prologue
    .line 589
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    .line 590
    const/4 v0, 0x0

    .line 592
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_5
.end method

.method public setDistanceToBottom(I)V
    .registers 3

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 875
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    if-ne v0, p1, :cond_9

    .line 878
    :goto_8
    return-void

    .line 876
    :cond_9
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    .line 877
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAllViews()V

    goto :goto_8
.end method

.method public setEnableBringCenterToFront(Z)V
    .registers 3

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 902
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mEnableBringCenterToFront:Z

    if-ne v0, p1, :cond_9

    .line 907
    :goto_8
    return-void

    .line 905
    :cond_9
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mEnableBringCenterToFront:Z

    .line 906
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->requestLayout()V

    goto :goto_8
.end method

.method public setInfinite(Z)V
    .registers 3

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 857
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-ne p1, v0, :cond_9

    .line 862
    :goto_8
    return-void

    .line 860
    :cond_9
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    .line 861
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->requestLayout()V

    goto :goto_8
.end method

.method protected abstract setInterval()F
.end method

.method protected abstract setItemViewProperty(Landroid/view/View;F)V
.end method

.method public setMaxVisibleItemCount(I)V
    .registers 3

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 283
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    if-ne v0, p1, :cond_9

    .line 286
    :goto_8
    return-void

    .line 284
    :cond_9
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mMaxVisibleItemCount:I

    .line 285
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAllViews()V

    goto :goto_8
.end method

.method public setOnPageChangeListener(Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$OnPageChangeListener;)V
    .registers 2

    .prologue
    .line 849
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->onPageChangeListener:Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager$OnPageChangeListener;

    .line 853
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 252
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_27

    .line 263
    :goto_26
    return-void

    .line 259
    :cond_27
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    .line 260
    iput-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    .line 261
    const v0, 0x7fffffff

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mDistanceToBottom:I

    .line 262
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAllViews()V

    goto :goto_26
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .registers 2

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 188
    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 324
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_9

    .line 329
    :goto_8
    return-void

    .line 327
    :cond_9
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mReverseLayout:Z

    .line 328
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->removeAllViews()V

    goto :goto_8
.end method

.method public setSmoothScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 333
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2

    .prologue
    .line 897
    iput-boolean p1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 898
    return-void
.end method

.method protected setUp()V
    .registers 1

    .prologue
    .line 492
    return-void
.end method

.method protected setViewElevation(Landroid/view/View;F)F
    .registers 4

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_31

    .line 341
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 342
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getItemCount()I

    move-result v1

    .line 344
    if-ge p3, v0, :cond_27

    .line 345
    sub-int v2, v0, p3

    .line 346
    sub-int/2addr v1, v0

    add-int/2addr v1, p3

    .line 347
    if-ge v2, v1, :cond_25

    sub-int/2addr v0, v2

    .line 354
    :goto_16
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getOffsetToPosition(I)I

    move-result v0

    .line 359
    :goto_1a
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 360
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3, v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 365
    :goto_24
    return-void

    .line 347
    :cond_25
    add-int/2addr v0, v1

    goto :goto_16

    .line 349
    :cond_27
    sub-int v2, p3, v0

    .line 350
    add-int/2addr v1, v0

    sub-int/2addr v1, p3

    .line 351
    if-ge v2, v1, :cond_2f

    add-int/2addr v0, v2

    goto :goto_16

    :cond_2f
    sub-int/2addr v0, v1

    goto :goto_16

    .line 356
    :cond_31
    invoke-virtual {p0, p3}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getOffsetToPosition(I)I

    move-result v0

    goto :goto_1a

    .line 362
    :cond_36
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v3, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_24
.end method
