.class Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# static fields
.field static final INVALID_LINE:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;
    .param p2, "index"    # I

    .line 2489
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2484
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2485
    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2486
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2490
    iput p2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    .line 2491
    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 2574
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2575
    .local v0, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2576
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    const/high16 v1, -0x80000000

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2578
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 2579
    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2581
    :cond_1a
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2582
    :cond_26
    iget v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2584
    :cond_33
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .registers 6
    .param p1, "reverseLayout"    # Z
    .param p2, "offset"    # I

    .line 2589
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_9

    .line 2590
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .local v1, "reference":I
    goto :goto_d

    .line 2592
    .end local v1    # "reference":I
    :cond_9
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 2594
    .restart local v1    # "reference":I
    :goto_d
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 2595
    if-ne v1, v0, :cond_13

    .line 2596
    return-void

    .line 2598
    :cond_13
    if-eqz p1, :cond_1f

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_2b

    :cond_1f
    if-nez p1, :cond_2c

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 2599
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    if-le v1, v2, :cond_2c

    .line 2600
    :cond_2b
    return-void

    .line 2602
    :cond_2c
    if-eq p2, v0, :cond_2f

    .line 2603
    add-int/2addr v1, p2

    .line 2605
    :cond_2f
    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2606
    return-void
.end method

.method calculateCachedEnd()V
    .registers 6

    .line 2539
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2540
    .local v0, "endView":Landroid/view/View;
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2541
    .local v1, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2542
    iget-boolean v3, v1, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_3d

    .line 2543
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2544
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v3

    .line 2545
    .local v3, "fsi":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v3, :cond_3d

    iget v4, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v4, v2, :cond_3d

    .line 2546
    iget v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2549
    .end local v3    # "fsi":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_3d
    return-void
.end method

.method calculateCachedStart()V
    .registers 6

    .line 2505
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2506
    .local v0, "startView":Landroid/view/View;
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2507
    .local v1, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2508
    iget-boolean v2, v1, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v2, :cond_39

    .line 2509
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2510
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v2

    .line 2511
    .local v2, "fsi":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v2, :cond_39

    iget v3, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    .line 2512
    iget v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v4}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2515
    .end local v2    # "fsi":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_39
    return-void
.end method

.method clear()V
    .registers 2

    .line 2609
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2610
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    .line 2611
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2612
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .registers 4

    .line 2680
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2681
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_14
    const/4 v0, 0x0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2682
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2680
    :goto_1f
    return v0
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .registers 4

    .line 2674
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_14
    const/4 v0, 0x0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2676
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    .line 2674
    :goto_1f
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .registers 4

    .line 2668
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2670
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2668
    :goto_1f
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .registers 4

    .line 2698
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2699
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2700
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2698
    :goto_1f
    return v0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .registers 4

    .line 2692
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2693
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2694
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result v0

    .line 2692
    :goto_1f
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .registers 4

    .line 2686
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2687
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    goto :goto_1f

    :cond_12
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2688
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result v0

    .line 2686
    :goto_1f
    return v0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .registers 20
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z
    .param p4, "acceptCompletelyVisible"    # Z
    .param p5, "acceptEndPointInclusion"    # Z

    .line 2730
    move-object v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 2731
    .local v2, "start":I
    iget-object v3, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 2732
    .local v3, "end":I
    const/4 v4, -0x1

    const/4 v5, 0x1

    move v6, p1

    if-le v1, v6, :cond_1a

    move v7, v5

    goto :goto_1b

    :cond_1a
    move v7, v4

    .line 2733
    .local v7, "next":I
    :goto_1b
    move v8, p1

    .local v8, "i":I
    :goto_1c
    if-eq v8, v1, :cond_72

    .line 2734
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2735
    .local v9, "child":Landroid/view/View;
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v10, v10, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v10, v9}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 2736
    .local v10, "childStart":I
    iget-object v11, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v11, v11, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11, v9}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 2737
    .local v11, "childEnd":I
    const/4 v12, 0x0

    if-eqz p5, :cond_3c

    if-gt v10, v3, :cond_40

    goto :goto_3e

    :cond_3c
    if-ge v10, v3, :cond_40

    :goto_3e
    move v13, v5

    goto :goto_41

    :cond_40
    move v13, v12

    .line 2739
    .local v13, "childStartInclusion":Z
    :goto_41
    if-eqz p5, :cond_46

    if-lt v11, v2, :cond_49

    goto :goto_48

    :cond_46
    if-le v11, v2, :cond_49

    :goto_48
    move v12, v5

    .line 2741
    .local v12, "childEndInclusion":Z
    :cond_49
    if-eqz v13, :cond_70

    if-eqz v12, :cond_70

    .line 2742
    if-eqz p3, :cond_5c

    if-eqz p4, :cond_5c

    .line 2744
    if-lt v10, v2, :cond_70

    if-gt v11, v3, :cond_70

    .line 2745
    iget-object v4, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2747
    :cond_5c
    if-eqz p4, :cond_65

    .line 2749
    iget-object v4, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2750
    :cond_65
    if-lt v10, v2, :cond_69

    if-le v11, v3, :cond_70

    .line 2753
    :cond_69
    iget-object v4, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v9}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    return v4

    .line 2733
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childStart":I
    .end local v11    # "childEnd":I
    .end local v12    # "childEndInclusion":Z
    .end local v13    # "childStartInclusion":Z
    :cond_70
    add-int/2addr v8, v7

    goto :goto_1c

    .line 2757
    .end local v8    # "i":I
    :cond_72
    return v4
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "acceptEndPointInclusion"    # Z

    .line 2767
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .line 2761
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result v0

    return v0
.end method

.method public getDeletedSize()I
    .registers 2

    .line 2651
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return v0
.end method

.method getEndLine()I
    .registers 3

    .line 2553
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 2554
    return v0

    .line 2556
    :cond_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2557
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v0
.end method

.method getEndLine(I)I
    .registers 4
    .param p1, "def"    # I

    .line 2527
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 2528
    return v0

    .line 2530
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2531
    .local v0, "size":I
    if-nez v0, :cond_10

    .line 2532
    return p1

    .line 2534
    :cond_10
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2535
    iget v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return v1
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .registers 8
    .param p1, "referenceChildPosition"    # I
    .param p2, "layoutDir"    # I

    .line 2775
    const/4 v0, 0x0

    .line 2776
    .local v0, "candidate":Landroid/view/View;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3d

    .line 2777
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2778
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_3c

    .line 2779
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2780
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_23

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_3c

    :cond_23
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_32

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2781
    invoke-virtual {v4, v3}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_32

    .line 2782
    goto :goto_3c

    .line 2784
    :cond_32
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2785
    move-object v0, v3

    .line 2778
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2790
    .end local v1    # "limit":I
    .end local v2    # "i":I
    :cond_3c
    :goto_3c
    goto :goto_76

    .line 2791
    :cond_3d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_45
    if-ltz v1, :cond_76

    .line 2792
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2793
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_5d

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_76

    :cond_5d
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_6c

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2794
    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_6c

    .line 2795
    goto :goto_76

    .line 2797
    :cond_6c
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 2798
    move-object v0, v2

    .line 2791
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 2804
    .end local v1    # "i":I
    :cond_76
    :goto_76
    return-object v0
.end method

.method getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2655
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object v0
.end method

.method getStartLine()I
    .registers 3

    .line 2519
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 2520
    return v0

    .line 2522
    :cond_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2523
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method getStartLine(I)I
    .registers 4
    .param p1, "def"    # I

    .line 2494
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 2495
    return v0

    .line 2497
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 2498
    return p1

    .line 2500
    :cond_10
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2501
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return v0
.end method

.method invalidateCache()V
    .registers 2

    .line 2615
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2616
    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2617
    return-void
.end method

.method onOffset(I)V
    .registers 4
    .param p1, "dt"    # I

    .line 2659
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2660
    add-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2662
    :cond_9
    iget v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_10

    .line 2663
    add-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2665
    :cond_10
    return-void
.end method

.method popEnd()V
    .registers 6

    .line 2624
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2625
    .local v0, "size":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2626
    .local v1, "end":Landroid/view/View;
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    .line 2627
    .local v2, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v3, 0x0

    iput-object v3, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2628
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2629
    :cond_23
    iget v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2631
    :cond_30
    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-ne v0, v4, :cond_37

    .line 2632
    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2634
    :cond_37
    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2635
    return-void
.end method

.method popStart()V
    .registers 6

    .line 2638
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2639
    .local v0, "start":Landroid/view/View;
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2640
    .local v1, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v1, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2641
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_1c

    .line 2642
    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2644
    :cond_1c
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2645
    :cond_28
    iget v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2647
    :cond_35
    iput v3, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2648
    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 2561
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2562
    .local v0, "lp":Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    iput-object p0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2563
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2564
    const/high16 v1, -0x80000000

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2565
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 2566
    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2568
    :cond_1b
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2569
    :cond_27
    iget v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2571
    :cond_34
    return-void
.end method

.method setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .line 2620
    iput p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2621
    return-void
.end method
