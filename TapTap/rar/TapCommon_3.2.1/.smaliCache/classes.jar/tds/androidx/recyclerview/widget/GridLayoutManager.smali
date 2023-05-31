.class public Ltds/androidx/recyclerview/widget/GridLayoutManager;
.super Ltds/androidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mUsingSpansToEstimateScrollBarDimensions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 82
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 95
    invoke-direct {p0, p1, p3, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 96
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 71
    invoke-static {p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 72
    .local v0, "properties":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 73
    return-void
.end method

.method private assignSpans(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;IZ)V
    .registers 13
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "layingOutInPrimaryDirection"    # Z

    .line 761
    if-eqz p4, :cond_6

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "start":I
    move v1, p3

    .line 764
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "diff":I
    goto :goto_a

    .line 766
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "diff":I
    :cond_6
    add-int/lit8 v0, p3, -0x1

    .line 767
    .restart local v0    # "start":I
    const/4 v1, -0x1

    .line 768
    .restart local v1    # "end":I
    const/4 v2, -0x1

    .line 770
    .restart local v2    # "diff":I
    :goto_a
    const/4 v3, 0x0

    .line 771
    .local v3, "span":I
    move v4, v0

    .local v4, "i":I
    :goto_c
    if-eq v4, v1, :cond_29

    .line 772
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 773
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 774
    .local v6, "params":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 775
    iput v3, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 776
    iget v7, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v7

    .line 771
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "params":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    add-int/2addr v4, v2

    goto :goto_c

    .line 778
    .end local v4    # "i":I
    :cond_29
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .line 165
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 166
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 167
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 168
    .local v2, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 169
    .local v3, "viewPosition":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    .end local v2    # "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 172
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4
    .param p1, "totalSpace"    # I

    .line 290
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 291
    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 10
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .line 301
    if-eqz p0, :cond_e

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_e

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_12

    .line 303
    :cond_e
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 305
    :cond_12
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 306
    div-int v0, p2, p1

    .line 307
    .local v0, "sizePerSpan":I
    rem-int v1, p2, p1

    .line 308
    .local v1, "sizePerSpanRemainder":I
    const/4 v2, 0x0

    .line 309
    .local v2, "consumedPixels":I
    const/4 v3, 0x0

    .line 310
    .local v3, "additionalSize":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1c
    if-gt v4, p1, :cond_2f

    .line 311
    move v5, v0

    .line 312
    .local v5, "itemSize":I
    add-int/2addr v3, v1

    .line 313
    if-lez v3, :cond_29

    sub-int v6, p1, v3

    if-ge v6, v1, :cond_29

    .line 314
    add-int/lit8 v5, v5, 0x1

    .line 315
    sub-int/2addr v3, p1

    .line 317
    :cond_29
    add-int/2addr v2, v5

    .line 318
    aput v2, p0, v4

    .line 310
    .end local v5    # "itemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 320
    .end local v4    # "i":I
    :cond_2f
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 160
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 161
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 162
    return-void
.end method

.method private computeScrollOffsetWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 20
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1290
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_bc

    invoke-virtual/range {p1 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_bc

    .line 1293
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1295
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    .line 1296
    .local v1, "smoothScrollEnabled":Z
    xor-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    .line 1297
    .local v3, "startChild":Landroid/view/View;
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v5

    .line 1298
    .local v5, "endChild":Landroid/view/View;
    if-eqz v3, :cond_b9

    if-nez v5, :cond_2d

    move/from16 v16, v1

    goto/16 :goto_bb

    .line 1301
    :cond_2d
    iget-object v6, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    iget v8, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v6

    .line 1303
    .local v6, "startChildSpan":I
    iget-object v7, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    iget v9, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v7, v8, v9}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v7

    .line 1306
    .local v7, "endChildSpan":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1307
    .local v8, "minSpan":I
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1308
    .local v9, "maxSpan":I
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual/range {p1 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    sub-int/2addr v11, v4

    iget v12, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v10, v11, v12}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v10

    add-int/2addr v10, v4

    .line 1311
    .local v10, "totalSpans":I
    iget-boolean v11, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v11, :cond_67

    sub-int v11, v10, v9

    sub-int/2addr v11, v4

    .line 1312
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_6c

    :cond_67
    nop

    .line 1313
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_6c
    nop

    .line 1314
    .local v2, "spansBefore":I
    if-nez v1, :cond_70

    .line 1315
    return v2

    .line 1317
    :cond_70
    iget-object v11, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v11, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1318
    invoke-virtual {v12, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v11, v12

    .line 1317
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1320
    .local v11, "laidOutArea":I
    iget-object v12, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1321
    invoke-virtual {v0, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    iget v14, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v12, v13, v14}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v12

    .line 1322
    .local v12, "firstVisibleSpan":I
    iget-object v13, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v14

    iget v15, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v13, v14, v15}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v13

    .line 1324
    .local v13, "lastVisibleSpan":I
    sub-int v14, v13, v12

    add-int/2addr v14, v4

    .line 1325
    .local v14, "laidOutSpans":I
    int-to-float v4, v11

    int-to-float v15, v14

    div-float/2addr v4, v15

    .line 1327
    .local v4, "avgSizePerSpan":F
    int-to-float v15, v2

    mul-float/2addr v15, v4

    move/from16 v16, v1

    .end local v1    # "smoothScrollEnabled":Z
    .local v16, "smoothScrollEnabled":Z
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    move/from16 v17, v2

    .end local v2    # "spansBefore":I
    .local v17, "spansBefore":I
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1328
    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v15, v1

    .line 1327
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 1298
    .end local v4    # "avgSizePerSpan":F
    .end local v6    # "startChildSpan":I
    .end local v7    # "endChildSpan":I
    .end local v8    # "minSpan":I
    .end local v9    # "maxSpan":I
    .end local v10    # "totalSpans":I
    .end local v11    # "laidOutArea":I
    .end local v12    # "firstVisibleSpan":I
    .end local v13    # "lastVisibleSpan":I
    .end local v14    # "laidOutSpans":I
    .end local v16    # "smoothScrollEnabled":Z
    .end local v17    # "spansBefore":I
    .restart local v1    # "smoothScrollEnabled":Z
    :cond_b9
    move/from16 v16, v1

    .line 1299
    .end local v1    # "smoothScrollEnabled":Z
    .restart local v16    # "smoothScrollEnabled":Z
    :goto_bb
    return v2

    .line 1291
    .end local v3    # "startChild":Landroid/view/View;
    .end local v5    # "endChild":Landroid/view/View;
    .end local v16    # "smoothScrollEnabled":Z
    :cond_bc
    :goto_bc
    return v2
.end method

.method private computeScrollRangeWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 11
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1257
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7c

    .line 1260
    :cond_e
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 1262
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1263
    .local v0, "startChild":Landroid/view/View;
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    .line 1265
    .local v3, "endChild":Landroid/view/View;
    if-eqz v0, :cond_7b

    if-nez v3, :cond_29

    goto :goto_7b

    .line 1268
    :cond_29
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isSmoothScrollbarEnabled()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1269
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1270
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    iget v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 1269
    invoke-virtual {v1, v4, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    add-int/2addr v1, v2

    return v1

    .line 1274
    :cond_3e
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v3}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 1275
    invoke-virtual {v4, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 1277
    .local v1, "laidOutArea":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 1278
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v4, v5, v6}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v4

    .line 1279
    .local v4, "firstVisibleSpan":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v5, v6, v7}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v5

    .line 1281
    .local v5, "lastVisibleSpan":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v2

    iget v8, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v6, v7, v8}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v6

    add-int/2addr v6, v2

    .line 1283
    .local v6, "totalSpans":I
    sub-int v7, v5, v4

    add-int/2addr v7, v2

    .line 1286
    .local v7, "laidOutSpans":I
    int-to-float v2, v1

    int-to-float v8, v7

    div-float/2addr v2, v8

    int-to-float v8, v6

    mul-float/2addr v2, v8

    float-to-int v2, v2

    return v2

    .line 1266
    .end local v1    # "laidOutArea":I
    .end local v4    # "firstVisibleSpan":I
    .end local v5    # "lastVisibleSpan":I
    .end local v6    # "totalSpans":I
    .end local v7    # "laidOutSpans":I
    :cond_7b
    :goto_7b
    return v1

    .line 1258
    .end local v0    # "startChild":Landroid/view/View;
    .end local v3    # "endChild":Landroid/view/View;
    :cond_7c
    :goto_7c
    return v1
.end method

.method private ensureAnchorIsInCorrectSpan(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 11
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 367
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 369
    .local v1, "layingOutInPrimaryDirection":Z
    :goto_6
    iget v2, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    .line 370
    .local v2, "span":I
    if-eqz v1, :cond_20

    .line 372
    :goto_e
    if-lez v2, :cond_38

    iget v3, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v3, :cond_38

    .line 373
    iget v3, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr v3, v0

    iput v3, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 374
    iget v3, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    goto :goto_e

    .line 378
    :cond_20
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 379
    .local v3, "indexLimit":I
    iget v0, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 380
    .local v0, "pos":I
    move v4, v2

    .line 381
    .local v4, "bestSpan":I
    :goto_28
    if-ge v0, v3, :cond_36

    .line 382
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, p2, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v5

    .line 383
    .local v5, "next":I
    if-le v5, v4, :cond_36

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 385
    move v4, v5

    .line 389
    .end local v5    # "next":I
    goto :goto_28

    .line 390
    :cond_36
    iput v0, p3, Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 392
    .end local v0    # "pos":I
    .end local v3    # "indexLimit":I
    .end local v4    # "bestSpan":I
    :cond_38
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .line 344
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_f

    .line 345
    :cond_9
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 347
    :cond_f
    return-void
.end method

.method private getSpanGroupIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 7
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .line 443
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 444
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 446
    :cond_f
    invoke-virtual {p1, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 447
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x0

    return v1

    .line 455
    :cond_30
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 459
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 460
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 462
    :cond_f
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 463
    .local v0, "cached":I
    if-eq v0, v1, :cond_19

    .line 464
    return v0

    .line 466
    :cond_19
    invoke-virtual {p1, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 467
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_39

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, 0x0

    return v1

    .line 476
    :cond_39
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanSize(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 480
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_d

    .line 481
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 483
    :cond_d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 484
    .local v0, "cached":I
    if-eq v0, v1, :cond_17

    .line 485
    return v0

    .line 487
    :cond_17
    invoke-virtual {p1, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 488
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_37

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    return v1

    .line 497
    :cond_37
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private guessMeasurement(FI)V
    .registers 5
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .line 736
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 738
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 739
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 703
    .local v0, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 704
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 706
    .local v2, "verticalInsets":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 708
    .local v3, "horizontalInsets":I
    iget v4, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v4, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 711
    .local v4, "availableSpaceInOther":I
    iget v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_43

    .line 712
    iget v5, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v4, p2, v3, v5, v6}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 714
    .local v5, "wSpec":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v8, v2, v9, v7}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .local v6, "hSpec":I
    goto :goto_59

    .line 717
    .end local v5    # "wSpec":I
    .end local v6    # "hSpec":I
    :cond_43
    iget v5, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, p2, v2, v5, v6}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 719
    .restart local v6    # "hSpec":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v5, v8, v3, v9, v7}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 722
    .restart local v5    # "wSpec":I
    :goto_59
    invoke-direct {p0, p1, v5, v6, p3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 723
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .line 743
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 745
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_d

    .line 746
    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .local v1, "measure":Z
    goto :goto_11

    .line 748
    .end local v1    # "measure":Z
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILtds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 750
    .restart local v1    # "measure":Z
    :goto_11
    if-eqz v1, :cond_16

    .line 751
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 753
    :cond_16
    return-void
.end method

.method private updateMeasurements()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 257
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "totalSpace":I
    goto :goto_24

    .line 259
    .end local v0    # "totalSpace":I
    :cond_16
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 261
    .restart local v0    # "totalSpace":I
    :goto_24
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 262
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 232
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p2, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 503
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 504
    .local v0, "remainingSpan":I
    const/4 v1, 0x0

    .line 505
    .local v1, "count":I
    :goto_3
    iget v2, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_2d

    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-lez v0, :cond_2d

    .line 506
    iget v2, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 507
    .local v2, "pos":I
    const/4 v3, 0x0

    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p3, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 508
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 509
    .local v3, "spanSize":I
    sub-int/2addr v0, v3

    .line 510
    iget v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 511
    nop

    .end local v2    # "pos":I
    .end local v3    # "spanSize":I
    add-int/lit8 v1, v1, 0x1

    .line 512
    goto :goto_3

    .line 513
    :cond_2d
    return-void
.end method

.method public computeHorizontalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1199
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_9

    .line 1200
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 1202
    :cond_9
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1181
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_9

    .line 1182
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 1184
    :cond_9
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeHorizontalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1208
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_9

    .line 1209
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->computeScrollOffsetWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 1211
    :cond_9
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1190
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    if-eqz v0, :cond_9

    .line 1191
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->computeScrollRangeWithSpanInfo(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0

    .line 1193
    :cond_9
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method findReferenceChild(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;ZZ)Landroid/view/View;
    .registers 21
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutFromEnd"    # Z
    .param p4, "traverseChildrenInReverseOrder"    # Z

    .line 398
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 399
    .local v1, "start":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 400
    .local v2, "end":I
    const/4 v3, 0x1

    .line 401
    .local v3, "diff":I
    if-eqz p4, :cond_12

    .line 402
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 403
    const/4 v2, -0x1

    .line 404
    const/4 v3, -0x1

    .line 407
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 409
    .local v4, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 410
    const/4 v5, 0x0

    .line 411
    .local v5, "invalidMatch":Landroid/view/View;
    const/4 v6, 0x0

    .line 413
    .local v6, "outOfBoundsMatch":Landroid/view/View;
    iget-object v7, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v7}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 414
    .local v7, "boundsStart":I
    iget-object v8, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v8

    .line 416
    .local v8, "boundsEnd":I
    move v9, v1

    .local v9, "i":I
    :goto_28
    if-eq v9, v2, :cond_6d

    .line 417
    invoke-virtual {v0, v9}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 418
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v11

    .line 419
    .local v11, "position":I
    if-ltz v11, :cond_67

    if-ge v11, v4, :cond_67

    .line 420
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct {v0, v12, v13, v11}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v14

    .line 421
    .local v14, "span":I
    if-eqz v14, :cond_41

    .line 422
    goto :goto_6b

    .line 424
    :cond_41
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v15}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v15

    if-eqz v15, :cond_51

    .line 425
    if-nez v5, :cond_6b

    .line 426
    move-object v5, v10

    goto :goto_6b

    .line 428
    :cond_51
    iget-object v15, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v15, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    if-ge v15, v8, :cond_63

    iget-object v15, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 429
    invoke-virtual {v15, v10}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    if-ge v15, v7, :cond_62

    goto :goto_63

    .line 434
    :cond_62
    return-object v10

    .line 430
    :cond_63
    :goto_63
    if-nez v6, :cond_6b

    .line 431
    move-object v6, v10

    goto :goto_6b

    .line 419
    .end local v14    # "span":I
    :cond_67
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 416
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "position":I
    :cond_6b
    :goto_6b
    add-int/2addr v9, v3

    goto :goto_28

    :cond_6d
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 438
    .end local v9    # "i":I
    if-eqz v6, :cond_75

    move-object v9, v6

    goto :goto_76

    :cond_75
    move-object v9, v5

    :goto_76
    return-object v9
.end method

.method public generateDefaultLayoutParams()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 207
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_c

    .line 208
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 211
    :cond_c
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 218
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 223
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_d

    .line 224
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 226
    :cond_d
    new-instance v0, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 130
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 131
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 133
    :cond_8
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 134
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_10
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowCountForAccessibility(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 116
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 117
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 119
    :cond_7
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 120
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_10
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method getSpaceForSpanRange(II)I
    .registers 6
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .line 324
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 325
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr v2, v0

    return v2

    .line 328
    :cond_19
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v1, v0, v1

    aget v0, v0, p1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getSpanCount()I
    .registers 2

    .line 787
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .line 251
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public isUsingSpansToEstimateScrollbarDimensions()Z
    .registers 2

    .line 1253
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    return v0
.end method

.method layoutChunk(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 29
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutState"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 518
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v11

    .line 519
    .local v11, "otherDirSpecMode":I
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v12, 0x1

    if-eq v11, v0, :cond_17

    move v2, v12

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v13, v2

    .line 520
    .local v13, "flexibleInOtherDir":Z
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    aget v2, v2, v3

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v14, v2

    .line 524
    .local v14, "currentOtherDirSize":I
    if-eqz v13, :cond_2d

    .line 525
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 527
    :cond_2d
    iget v2, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v2, v12, :cond_33

    move v2, v12

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    move v15, v2

    .line 529
    .local v15, "layingOutInPrimaryDirection":Z
    const/4 v2, 0x0

    .line 530
    .local v2, "count":I
    iget v3, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 531
    .local v3, "remainingSpan":I
    if-nez v15, :cond_4a

    .line 532
    iget v4, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    .line 533
    .local v4, "itemSpanIndex":I
    iget v5, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v5

    .line 534
    .local v5, "itemSpanSize":I
    add-int v3, v4, v5

    move v5, v2

    goto :goto_4b

    .line 531
    .end local v4    # "itemSpanIndex":I
    .end local v5    # "itemSpanSize":I
    :cond_4a
    move v5, v2

    .line 536
    .end local v2    # "count":I
    .local v5, "count":I
    :goto_4b
    iget v2, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v2, :cond_ab

    invoke-virtual {v9, v8}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Ltds/androidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_ab

    if-lez v3, :cond_ab

    .line 537
    iget v2, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 538
    .local v2, "pos":I
    invoke-direct {v6, v7, v8, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    .line 539
    .local v4, "spanSize":I
    iget v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v4, v0, :cond_76

    .line 544
    sub-int/2addr v3, v4

    .line 545
    if-gez v3, :cond_65

    .line 546
    goto :goto_ab

    .line 548
    :cond_65
    invoke-virtual {v9, v7}, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_6c

    .line 550
    goto :goto_ab

    .line 552
    :cond_6c
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v0, v1, v5

    .line 553
    nop

    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "pos":I
    .end local v4    # "spanSize":I
    add-int/lit8 v5, v5, 0x1

    .line 554
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_4b

    .line 540
    .restart local v2    # "pos":I
    .restart local v4    # "spanSize":I
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item at position "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " requires "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " spans."

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    .end local v2    # "pos":I
    .end local v4    # "spanSize":I
    :cond_ab
    :goto_ab
    move/from16 v18, v3

    .end local v3    # "remainingSpan":I
    .local v18, "remainingSpan":I
    if-nez v5, :cond_b2

    .line 557
    iput-boolean v12, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 558
    return-void

    .line 561
    :cond_b2
    const/4 v0, 0x0

    .line 562
    .local v0, "maxSize":I
    const/4 v1, 0x0

    .line 565
    .local v1, "maxSizeInOther":F
    invoke-direct {v6, v7, v8, v5, v15}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->assignSpans(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;IZ)V

    .line 566
    const/4 v2, 0x0

    move v4, v1

    .end local v1    # "maxSizeInOther":F
    .local v2, "i":I
    .local v4, "maxSizeInOther":F
    :goto_b9
    if-ge v2, v5, :cond_10f

    .line 567
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v2

    .line 568
    .local v1, "view":Landroid/view/View;
    iget-object v3, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_cf

    .line 569
    if-eqz v15, :cond_ca

    .line 570
    invoke-virtual {v6, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    goto :goto_d9

    .line 572
    :cond_ca
    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_d9

    .line 575
    :cond_cf
    const/4 v3, 0x0

    if-eqz v15, :cond_d6

    .line 576
    invoke-virtual {v6, v1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_d9

    .line 578
    :cond_d6
    invoke-virtual {v6, v1, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 581
    :goto_d9
    iget-object v12, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v12}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    invoke-direct {v6, v1, v11, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 584
    iget-object v3, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 585
    .local v3, "size":I
    if-le v3, v0, :cond_ea

    .line 586
    move v0, v3

    .line 588
    :cond_ea
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 589
    .local v12, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v0

    .end local v0    # "maxSize":I
    .local v20, "maxSize":I
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    move-object/from16 v19, v1

    .end local v1    # "view":Landroid/view/View;
    .local v19, "view":Landroid/view/View;
    iget v1, v12, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 591
    .local v0, "otherSize":F
    cmpl-float v1, v0, v4

    if-lez v1, :cond_109

    .line 592
    move v1, v0

    move v4, v1

    .line 566
    .end local v0    # "otherSize":F
    .end local v3    # "size":I
    .end local v12    # "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    :cond_109
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    const/4 v12, 0x1

    goto :goto_b9

    .line 595
    .end local v2    # "i":I
    .end local v20    # "maxSize":I
    .local v0, "maxSize":I
    :cond_10f
    if-eqz v13, :cond_130

    .line 597
    invoke-direct {v6, v4, v14}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 599
    const/4 v0, 0x0

    .line 600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_116
    if-ge v1, v5, :cond_12e

    .line 601
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 602
    .local v2, "view":Landroid/view/View;
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v12, 0x1

    invoke-direct {v6, v2, v3, v12}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 603
    iget-object v3, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 604
    .restart local v3    # "size":I
    if-le v3, v0, :cond_12b

    .line 605
    move v0, v3

    .line 600
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "size":I
    :cond_12b
    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    :cond_12e
    move v12, v0

    goto :goto_131

    .line 595
    .end local v1    # "i":I
    :cond_130
    move v12, v0

    .line 612
    .end local v0    # "maxSize":I
    .local v12, "maxSize":I
    :goto_131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_132
    if-ge v0, v5, :cond_1b4

    .line 613
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 614
    .local v1, "view":Landroid/view/View;
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v12, :cond_19e

    .line 615
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 616
    .local v2, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 617
    .local v3, "decorInsets":Landroid/graphics/Rect;
    move/from16 v19, v4

    .end local v4    # "maxSizeInOther":F
    .local v19, "maxSizeInOther":F
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iget v7, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    iget v7, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v7

    .line 619
    .local v4, "verticalInsets":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 621
    .local v7, "horizontalInsets":I
    iget v8, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v20, v3

    .end local v3    # "decorInsets":Landroid/graphics/Rect;
    .local v20, "decorInsets":Landroid/graphics/Rect;
    iget v3, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v8, v3}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    .line 624
    .local v3, "totalSpaceInOther":I
    iget v8, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v21, v11

    const/4 v11, 0x1

    .end local v11    # "otherDirSpecMode":I
    .local v21, "otherDirSpecMode":I
    if-ne v8, v11, :cond_186

    .line 625
    iget v8, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v16, v13

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x0

    .end local v13    # "flexibleInOtherDir":Z
    .local v16, "flexibleInOtherDir":Z
    invoke-static {v3, v11, v7, v8, v13}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 627
    .local v8, "wSpec":I
    sub-int v13, v12, v4

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .local v13, "hSpec":I
    goto :goto_199

    .line 630
    .end local v8    # "wSpec":I
    .end local v16    # "flexibleInOtherDir":Z
    .local v13, "flexibleInOtherDir":Z
    :cond_186
    move/from16 v16, v13

    const/high16 v11, 0x40000000    # 2.0f

    .end local v13    # "flexibleInOtherDir":Z
    .restart local v16    # "flexibleInOtherDir":Z
    sub-int v8, v12, v7

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 632
    .restart local v8    # "wSpec":I
    iget v13, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v22, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-static {v3, v11, v4, v13, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v13

    .line 635
    .local v13, "hSpec":I
    :goto_199
    const/4 v2, 0x1

    invoke-direct {v6, v1, v8, v13, v2}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1a6

    .line 614
    .end local v3    # "totalSpaceInOther":I
    .end local v7    # "horizontalInsets":I
    .end local v8    # "wSpec":I
    .end local v16    # "flexibleInOtherDir":Z
    .end local v19    # "maxSizeInOther":F
    .end local v20    # "decorInsets":Landroid/graphics/Rect;
    .end local v21    # "otherDirSpecMode":I
    .end local v22    # "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v4, "maxSizeInOther":F
    .restart local v11    # "otherDirSpecMode":I
    .local v13, "flexibleInOtherDir":Z
    :cond_19e
    move/from16 v19, v4

    move/from16 v21, v11

    move/from16 v16, v13

    const/high16 v11, 0x40000000    # 2.0f

    .line 612
    .end local v1    # "view":Landroid/view/View;
    .end local v4    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v13    # "flexibleInOtherDir":Z
    .restart local v16    # "flexibleInOtherDir":Z
    .restart local v19    # "maxSizeInOther":F
    .restart local v21    # "otherDirSpecMode":I
    :goto_1a6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v13, v16

    move/from16 v4, v19

    move/from16 v11, v21

    goto/16 :goto_132

    .end local v16    # "flexibleInOtherDir":Z
    .end local v19    # "maxSizeInOther":F
    .end local v21    # "otherDirSpecMode":I
    .restart local v4    # "maxSizeInOther":F
    .restart local v11    # "otherDirSpecMode":I
    .restart local v13    # "flexibleInOtherDir":Z
    :cond_1b4
    move/from16 v19, v4

    move/from16 v21, v11

    move/from16 v16, v13

    .line 639
    .end local v0    # "i":I
    .end local v4    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v13    # "flexibleInOtherDir":Z
    .restart local v16    # "flexibleInOtherDir":Z
    .restart local v19    # "maxSizeInOther":F
    .restart local v21    # "otherDirSpecMode":I
    iput v12, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 641
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "right":I
    const/4 v2, 0x0

    .local v2, "top":I
    const/4 v3, 0x0

    .line 642
    .local v3, "bottom":I
    iget v4, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1d4

    .line 643
    iget v4, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v7, :cond_1cf

    .line 644
    iget v3, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 645
    sub-int v2, v3, v12

    goto :goto_1e1

    .line 647
    :cond_1cf
    iget v2, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 648
    add-int v3, v2, v12

    goto :goto_1e1

    .line 651
    :cond_1d4
    iget v4, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v4, v7, :cond_1dd

    .line 652
    iget v1, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 653
    sub-int v0, v1, v12

    goto :goto_1e1

    .line 655
    :cond_1dd
    iget v0, v9, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 656
    add-int v1, v0, v12

    .line 659
    :goto_1e1
    const/4 v4, 0x0

    move v7, v4

    .local v7, "i":I
    :goto_1e3
    if-ge v7, v5, :cond_28b

    .line 660
    iget-object v4, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v4, v7

    .line 661
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 662
    .local v11, "params":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget v4, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_23b

    .line 663
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_21d

    .line 664
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    iget-object v13, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v17, v0

    .end local v0    # "left":I
    .local v17, "left":I
    iget v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v20, v1

    .end local v1    # "right":I
    .local v20, "right":I
    iget v1, v11, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v0, v1

    aget v0, v13, v0

    add-int/2addr v4, v0

    .line 665
    .end local v20    # "right":I
    .local v4, "right":I
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v0, v4, v0

    move/from16 v17, v0

    move v13, v2

    move/from16 v22, v3

    move/from16 v20, v4

    .end local v17    # "left":I
    .restart local v0    # "left":I
    goto :goto_254

    .line 667
    .end local v4    # "right":I
    .restart local v1    # "right":I
    :cond_21d
    move/from16 v17, v0

    move/from16 v20, v1

    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v17    # "left":I
    .restart local v20    # "right":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v11, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 668
    .end local v17    # "left":I
    .restart local v0    # "left":I
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v17, v0

    move/from16 v20, v1

    move v13, v2

    move/from16 v22, v3

    .end local v20    # "right":I
    .restart local v1    # "right":I
    goto :goto_254

    .line 671
    :cond_23b
    move/from16 v17, v0

    move/from16 v20, v1

    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v17    # "left":I
    .restart local v20    # "right":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v11, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 672
    .end local v2    # "top":I
    .local v0, "top":I
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v13, v0

    move/from16 v22, v1

    .line 676
    .end local v0    # "top":I
    .end local v3    # "bottom":I
    .local v13, "top":I
    .local v22, "bottom":I
    :goto_254
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v20

    move/from16 v23, v5

    .end local v5    # "count":I
    .local v23, "count":I
    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 684
    invoke-virtual {v11}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_272

    invoke-virtual {v11}, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_270

    goto :goto_272

    :cond_270
    const/4 v0, 0x1

    goto :goto_275

    .line 685
    :cond_272
    :goto_272
    const/4 v0, 0x1

    iput-boolean v0, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 687
    :goto_275
    iget-boolean v1, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Ltds/androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 659
    .end local v8    # "view":Landroid/view/View;
    .end local v11    # "params":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    add-int/lit8 v7, v7, 0x1

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v3, v22

    move/from16 v5, v23

    goto/16 :goto_1e3

    .end local v13    # "top":I
    .end local v17    # "left":I
    .end local v20    # "right":I
    .end local v22    # "bottom":I
    .end local v23    # "count":I
    .local v0, "left":I
    .restart local v1    # "right":I
    .restart local v2    # "top":I
    .restart local v3    # "bottom":I
    .restart local v5    # "count":I
    :cond_28b
    move/from16 v17, v0

    move/from16 v20, v1

    .line 689
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v7    # "i":I
    .restart local v17    # "left":I
    .restart local v20    # "right":I
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method onAnchorReady(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 336
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 337
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 338
    invoke-direct {p0, p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 340
    :cond_15
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 341
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 38
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1055
    .local v3, "prevFocusedChild":Landroid/view/View;
    const/4 v4, 0x0

    if-nez v3, :cond_e

    .line 1056
    return-object v4

    .line 1058
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1059
    .local v5, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget v6, v5, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1060
    .local v6, "prevSpanStart":I
    iget v7, v5, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v5, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v8

    .line 1061
    .local v7, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v8

    .line 1062
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_22

    .line 1063
    return-object v4

    .line 1067
    :cond_22
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    .line 1068
    .local v9, "layoutDir":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2d

    move v12, v11

    goto :goto_2e

    :cond_2d
    const/4 v12, 0x0

    :goto_2e
    iget-boolean v13, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v12, v13, :cond_34

    move v12, v11

    goto :goto_35

    :cond_34
    const/4 v12, 0x0

    .line 1070
    .local v12, "ascend":Z
    :goto_35
    if-eqz v12, :cond_3f

    .line 1071
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v11

    .line 1072
    .local v13, "start":I
    const/4 v14, -0x1

    .line 1073
    .local v14, "inc":I
    const/4 v15, -0x1

    .local v15, "limit":I
    goto :goto_45

    .line 1075
    .end local v13    # "start":I
    .end local v14    # "inc":I
    .end local v15    # "limit":I
    :cond_3f
    const/4 v13, 0x0

    .line 1076
    .restart local v13    # "start":I
    const/4 v14, 0x1

    .line 1077
    .restart local v14    # "inc":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v15

    .line 1079
    .restart local v15    # "limit":I
    :goto_45
    iget v10, v0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v10, v11, :cond_51

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_51

    move v10, v11

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    .line 1084
    .local v10, "preferLastSpan":Z
    :goto_52
    const/16 v17, 0x0

    .line 1085
    .local v17, "focusableWeakCandidate":Landroid/view/View;
    const/16 v18, -0x1

    .line 1086
    .local v18, "focusableWeakCandidateSpanIndex":I
    const/16 v19, 0x0

    .line 1094
    .local v19, "focusableWeakCandidateOverlap":I
    const/16 v20, 0x0

    .line 1095
    .local v20, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v21, -0x1

    .line 1096
    .local v21, "unfocusableWeakCandidateSpanIndex":I
    const/16 v22, 0x0

    .line 1103
    .local v22, "unfocusableWeakCandidateOverlap":I
    invoke-direct {v0, v1, v2, v13}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    .line 1104
    .local v11, "focusableSpanGroupIndex":I
    move/from16 v24, v13

    move/from16 v4, v18

    move-object/from16 v18, v5

    move/from16 v5, v19

    move-object/from16 v19, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v22

    move/from16 v22, v12

    move/from16 v12, v24

    .local v4, "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateOverlap":I
    .local v8, "unfocusableWeakCandidateSpanIndex":I
    .local v9, "unfocusableWeakCandidateOverlap":I
    .local v12, "i":I
    .local v18, "lp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v19, "view":Landroid/view/View;
    .local v21, "layoutDir":I
    .local v22, "ascend":Z
    :goto_76
    if-eq v12, v15, :cond_182

    .line 1105
    move/from16 v24, v13

    .end local v13    # "start":I
    .local v24, "start":I
    invoke-direct {v0, v1, v2, v12}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v13

    .line 1106
    .local v13, "spanGroupIndex":I
    invoke-virtual {v0, v12}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    .local v1, "candidate":Landroid/view/View;
    if-ne v1, v3, :cond_8e

    .line 1108
    move-object/from16 v25, v3

    move/from16 v31, v4

    move/from16 v16, v5

    move/from16 v26, v11

    goto/16 :goto_18c

    .line 1111
    :cond_8e
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v25

    if-eqz v25, :cond_ac

    if-eq v13, v11, :cond_ac

    .line 1116
    if-eqz v17, :cond_a2

    .line 1117
    move-object/from16 v25, v3

    move/from16 v31, v4

    move/from16 v16, v5

    move/from16 v26, v11

    goto/16 :goto_18c

    .line 1116
    :cond_a2
    move-object/from16 v25, v3

    move/from16 v31, v4

    move/from16 v16, v5

    move/from16 v26, v11

    goto/16 :goto_171

    .line 1122
    :cond_ac
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v2, v25

    check-cast v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1123
    .local v2, "candidateLp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v25, v3

    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .local v25, "prevFocusedChild":Landroid/view/View;
    iget v3, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1124
    .local v3, "candidateStart":I
    move/from16 v26, v11

    .end local v11    # "focusableSpanGroupIndex":I
    .local v26, "focusableSpanGroupIndex":I
    iget v11, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v27, v13

    .end local v13    # "spanGroupIndex":I
    .local v27, "spanGroupIndex":I
    iget v13, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v11, v13

    .line 1125
    .local v11, "candidateEnd":I
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-eqz v13, :cond_cc

    if-ne v3, v6, :cond_cc

    if-ne v11, v7, :cond_cc

    .line 1127
    return-object v1

    .line 1129
    :cond_cc
    const/4 v13, 0x0

    .line 1130
    .local v13, "assignAsWeek":Z
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-eqz v28, :cond_d5

    if-eqz v17, :cond_dd

    .line 1131
    :cond_d5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-nez v28, :cond_e5

    if-nez v20, :cond_e5

    .line 1132
    :cond_dd
    const/4 v13, 0x1

    move/from16 v31, v4

    move/from16 v16, v5

    const/4 v5, 0x1

    goto/16 :goto_13e

    .line 1134
    :cond_e5
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1135
    .local v28, "maxStart":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1136
    .local v29, "minEnd":I
    move/from16 v30, v13

    .end local v13    # "assignAsWeek":Z
    .local v30, "assignAsWeek":Z
    sub-int v13, v29, v28

    .line 1137
    .local v13, "overlap":I
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v31

    if-eqz v31, :cond_11a

    .line 1138
    if-le v13, v5, :cond_103

    .line 1139
    const/16 v30, 0x1

    move/from16 v31, v4

    move/from16 v16, v5

    move/from16 v13, v30

    const/4 v5, 0x1

    goto :goto_13e

    .line 1140
    :cond_103
    if-ne v13, v5, :cond_114

    move/from16 v31, v4

    if-le v3, v4, :cond_10b

    const/4 v4, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v4, 0x0

    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .local v31, "focusableWeakCandidateSpanIndex":I
    :goto_10c
    if-ne v10, v4, :cond_116

    .line 1143
    const/4 v4, 0x1

    move v13, v4

    move/from16 v16, v5

    const/4 v5, 0x1

    .end local v30    # "assignAsWeek":Z
    .local v4, "assignAsWeek":Z
    goto :goto_13e

    .line 1140
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v4, "focusableWeakCandidateSpanIndex":I
    .restart local v30    # "assignAsWeek":Z
    :cond_114
    move/from16 v31, v4

    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :cond_116
    move/from16 v16, v5

    const/4 v5, 0x1

    goto :goto_13c

    .line 1145
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .restart local v4    # "focusableWeakCandidateSpanIndex":I
    :cond_11a
    move/from16 v31, v4

    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    if-nez v17, :cond_139

    .line 1146
    move/from16 v16, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    .end local v5    # "focusableWeakCandidateOverlap":I
    .local v16, "focusableWeakCandidateOverlap":I
    invoke-virtual {v0, v1, v4, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v23

    if-eqz v23, :cond_13c

    .line 1147
    if-le v13, v9, :cond_12f

    .line 1148
    const/16 v23, 0x1

    move/from16 v13, v23

    .end local v30    # "assignAsWeek":Z
    .local v23, "assignAsWeek":Z
    goto :goto_13e

    .line 1149
    .end local v23    # "assignAsWeek":Z
    .restart local v30    # "assignAsWeek":Z
    :cond_12f
    if-ne v13, v9, :cond_13c

    if-le v3, v8, :cond_134

    move v4, v5

    :cond_134
    if-ne v10, v4, :cond_13c

    .line 1152
    const/4 v4, 0x1

    move v13, v4

    .end local v30    # "assignAsWeek":Z
    .local v4, "assignAsWeek":Z
    goto :goto_13e

    .line 1145
    .end local v4    # "assignAsWeek":Z
    .end local v16    # "focusableWeakCandidateOverlap":I
    .restart local v5    # "focusableWeakCandidateOverlap":I
    .restart local v30    # "assignAsWeek":Z
    :cond_139
    move/from16 v16, v5

    const/4 v5, 0x1

    .line 1157
    .end local v5    # "focusableWeakCandidateOverlap":I
    .end local v13    # "overlap":I
    .end local v28    # "maxStart":I
    .end local v29    # "minEnd":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    :cond_13c
    :goto_13c
    move/from16 v13, v30

    .end local v30    # "assignAsWeek":Z
    .local v13, "assignAsWeek":Z
    :goto_13e
    if-eqz v13, :cond_171

    .line 1158
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 1159
    move-object v4, v1

    .line 1160
    .end local v17    # "focusableWeakCandidate":Landroid/view/View;
    .local v4, "focusableWeakCandidate":Landroid/view/View;
    iget v5, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1161
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateSpanIndex":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1162
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    sub-int v17, v17, v29

    move/from16 v32, v17

    move-object/from16 v17, v4

    move v4, v5

    move/from16 v5, v32

    .end local v16    # "focusableWeakCandidateOverlap":I
    .local v17, "focusableWeakCandidateOverlap":I
    goto :goto_175

    .line 1164
    .end local v4    # "focusableWeakCandidate":Landroid/view/View;
    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    .local v17, "focusableWeakCandidate":Landroid/view/View;
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :cond_15b
    move-object v4, v1

    .line 1165
    .end local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    .local v4, "unfocusableWeakCandidate":Landroid/view/View;
    iget v5, v2, Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1166
    .end local v8    # "unfocusableWeakCandidateSpanIndex":I
    .local v5, "unfocusableWeakCandidateSpanIndex":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1167
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v20

    sub-int v8, v8, v20

    move-object/from16 v20, v4

    move v9, v8

    move/from16 v4, v31

    move v8, v5

    move/from16 v5, v16

    .end local v9    # "unfocusableWeakCandidateOverlap":I
    .local v8, "unfocusableWeakCandidateOverlap":I
    goto :goto_175

    .line 1104
    .end local v1    # "candidate":Landroid/view/View;
    .end local v2    # "candidateLp":Ltds/androidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v13    # "assignAsWeek":Z
    .end local v16    # "focusableWeakCandidateOverlap":I
    .end local v25    # "prevFocusedChild":Landroid/view/View;
    .end local v26    # "focusableSpanGroupIndex":I
    .end local v27    # "spanGroupIndex":I
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v3, "prevFocusedChild":Landroid/view/View;
    .local v4, "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateOverlap":I
    .local v8, "unfocusableWeakCandidateSpanIndex":I
    .restart local v9    # "unfocusableWeakCandidateOverlap":I
    .local v11, "focusableSpanGroupIndex":I
    .restart local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    :cond_171
    :goto_171
    move/from16 v5, v16

    move/from16 v4, v31

    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v11    # "focusableSpanGroupIndex":I
    .restart local v25    # "prevFocusedChild":Landroid/view/View;
    .restart local v26    # "focusableSpanGroupIndex":I
    :goto_175
    add-int/2addr v12, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v13, v24

    move-object/from16 v3, v25

    move/from16 v11, v26

    goto/16 :goto_76

    .end local v24    # "start":I
    .end local v25    # "prevFocusedChild":Landroid/view/View;
    .end local v26    # "focusableSpanGroupIndex":I
    .restart local v3    # "prevFocusedChild":Landroid/view/View;
    .restart local v11    # "focusableSpanGroupIndex":I
    .local v13, "start":I
    :cond_182
    move-object/from16 v25, v3

    move/from16 v31, v4

    move/from16 v16, v5

    move/from16 v26, v11

    move/from16 v24, v13

    .line 1171
    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v4    # "focusableWeakCandidateSpanIndex":I
    .end local v5    # "focusableWeakCandidateOverlap":I
    .end local v11    # "focusableSpanGroupIndex":I
    .end local v12    # "i":I
    .end local v13    # "start":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    .restart local v24    # "start":I
    .restart local v25    # "prevFocusedChild":Landroid/view/View;
    .restart local v26    # "focusableSpanGroupIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :goto_18c
    if-eqz v17, :cond_191

    move-object/from16 v1, v17

    goto :goto_193

    :cond_191
    move-object/from16 v1, v20

    :goto_193
    return-object v1
.end method

.method public onItemsAdded(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 176
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 177
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 178
    return-void
.end method

.method public onItemsChanged(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 182
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 183
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 184
    return-void
.end method

.method public onItemsMoved(Ltds/androidx/recyclerview/widget/RecyclerView;III)V
    .registers 6
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 201
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 202
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 203
    return-void
.end method

.method public onItemsRemoved(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 188
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 189
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 190
    return-void
.end method

.method public onItemsUpdated(Ltds/androidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 196
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanGroupIndexCache()V

    .line 197
    return-void
.end method

.method public onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 143
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 146
    :cond_9
    invoke-super {p0, p1, p2}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 150
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 151
    return-void
.end method

.method public onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 155
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 157
    return-void
.end method

.method public scrollHorizontallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 352
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 353
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 354
    invoke-super {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 360
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 361
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 362
    invoke-super {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 11
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 266
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 267
    invoke-super {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 270
    :cond_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 272
    .local v1, "verticalPadding":I
    iget v2, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    .line 274
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v2, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 275
    .local v4, "height":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v5

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v0

    .line 276
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v5

    .line 275
    invoke-static {p2, v3, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 277
    .local v2, "width":I
    goto :goto_59

    .line 278
    .end local v2    # "width":I
    .end local v4    # "height":I
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 279
    .local v2, "usedWidth":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 280
    .local v4, "width":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v5

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v1

    .line 281
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v5

    .line 280
    invoke-static {p3, v3, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v3

    move v2, v4

    move v4, v3

    .line 283
    .local v2, "width":I
    .local v4, "height":I
    :goto_59
    invoke-virtual {p0, v2, v4}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 284
    return-void
.end method

.method public setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .line 800
    iget v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    .line 801
    return-void

    .line 803
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 804
    if-lt p1, v0, :cond_15

    .line 808
    iput p1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 809
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 810
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    .line 811
    return-void

    .line 805
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2
    .param p1, "spanSizeLookup"    # Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 242
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 243
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 4
    .param p1, "stackFromEnd"    # Z

    .line 105
    if-nez p1, :cond_7

    .line 110
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ltds/androidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 111
    return-void

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUsingSpansToEstimateScrollbarDimensions(Z)V
    .registers 2
    .param p1, "useSpansToEstimateScrollBarDimensions"    # Z

    .line 1241
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mUsingSpansToEstimateScrollBarDimensions:Z

    .line 1242
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 1176
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Ltds/androidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
