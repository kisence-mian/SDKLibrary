.class public abstract Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1399
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1406
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1419
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .registers 6
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .line 1480
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1481
    .local v1, "masked":I
    if-nez v1, :cond_8

    .line 1482
    return p0

    .line 1484
    :cond_8
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1485
    if-nez p1, :cond_10

    .line 1487
    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    .line 1488
    return p0

    .line 1491
    :cond_10
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    .line 1493
    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    .line 1495
    return p0
.end method

.method public static getDefaultUIUtil()Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;
    .registers 1

    .line 1464
    sget-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Ltds/androidx/recyclerview/widget/RecyclerView;)I
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 1899
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1900
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1902
    :cond_11
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .registers 3
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .line 1527
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .registers 4
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .line 1510
    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1511
    const/4 v1, 0x1

    invoke-static {v1, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1512
    const/4 v1, 0x2

    invoke-static {v1, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1510
    return v0
.end method


# virtual methods
.method public canDropOver(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "current"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1624
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 19
    .param p1, "selected"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 1800
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    move-object v0, p1

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, p3, v1

    .line 1801
    .local v1, "right":I
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, p4, v2

    .line 1802
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 1803
    .local v3, "winner":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v4, -0x1

    .line 1804
    .local v4, "winnerScore":I
    iget-object v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, p3, v5

    .line 1805
    .local v5, "dx":I
    iget-object v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, p4, v6

    .line 1806
    .local v6, "dy":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 1807
    .local v7, "targetsSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_28
    if-ge v8, v7, :cond_bc

    .line 1808
    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1809
    .local v10, "target":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-lez v5, :cond_53

    .line 1810
    iget-object v11, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v1

    .line 1811
    .local v11, "diff":I
    if-gez v11, :cond_53

    iget-object v12, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-le v12, v13, :cond_53

    .line 1812
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1813
    .local v12, "score":I
    if-le v12, v4, :cond_53

    .line 1814
    move v4, v12

    .line 1815
    move-object v3, v10

    .line 1819
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_53
    if-gez v5, :cond_75

    .line 1820
    iget-object v11, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    .line 1821
    .restart local v11    # "diff":I
    if-lez v11, :cond_75

    iget-object v12, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-ge v12, v13, :cond_75

    .line 1822
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1823
    .restart local v12    # "score":I
    if-le v12, v4, :cond_75

    .line 1824
    move v4, v12

    .line 1825
    move-object v3, v10

    .line 1829
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_75
    if-gez v6, :cond_97

    .line 1830
    iget-object v11, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v11, p4

    .line 1831
    .restart local v11    # "diff":I
    if-lez v11, :cond_97

    iget-object v12, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v12, v13, :cond_97

    .line 1832
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1833
    .restart local v12    # "score":I
    if-le v12, v4, :cond_97

    .line 1834
    move v4, v12

    .line 1835
    move-object v3, v10

    .line 1840
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_97
    if-lez v6, :cond_b8

    .line 1841
    iget-object v11, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v2

    .line 1842
    .restart local v11    # "diff":I
    if-gez v11, :cond_b8

    iget-object v12, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_b8

    .line 1843
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1844
    .restart local v12    # "score":I
    if-le v12, v4, :cond_b8

    .line 1845
    move v4, v12

    .line 1846
    move-object v3, v10

    .line 1807
    .end local v10    # "target":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v11    # "diff":I
    .end local v12    # "score":I
    :cond_b8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_28

    :cond_bc
    move-object/from16 v9, p2

    .line 1851
    .end local v8    # "i":I
    return-object v3
.end method

.method public clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2035
    sget-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    iget-object v1, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 2036
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 7
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 1571
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1572
    .local v1, "masked":I
    if-nez v1, :cond_8

    .line 1573
    return p1

    .line 1575
    :cond_8
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1576
    if-nez p2, :cond_10

    .line 1578
    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    .line 1579
    return p1

    .line 1582
    :cond_10
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1584
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    .line 1586
    return p1
.end method

.method final getAbsoluteMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1591
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1592
    .local v0, "flags":I
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Ltds/androidx/recyclerview/widget/RecyclerView;IFF)J
    .registers 8
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .line 2129
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemAnimator()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 2130
    .local v0, "itemAnimator":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
    const/16 v1, 0x8

    if-nez v0, :cond_10

    .line 2131
    if-ne p2, v1, :cond_d

    const-wide/16 v1, 0xc8

    goto :goto_f

    :cond_d
    const-wide/16 v1, 0xfa

    :goto_f
    return-wide v1

    .line 2134
    :cond_10
    if-ne p2, v1, :cond_17

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1b

    .line 2135
    :cond_17
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    .line 2134
    :goto_1b
    return-wide v1
.end method

.method public getBoundingBoxMargin()I
    .registers 2

    .line 1688
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .registers 3
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1718
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .registers 2
    .param p1, "defaultValue"    # F

    .line 1744
    return p1
.end method

.method public getSwipeThreshold(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .registers 3
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1704
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .registers 2
    .param p1, "defaultValue"    # F

    .line 1768
    return p1
.end method

.method hasDragFlag(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1596
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1597
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method hasSwipeFlag(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1602
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1603
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public interpolateOutOfBoundsScroll(Ltds/androidx/recyclerview/widget/RecyclerView;IIIJ)I
    .registers 15
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .line 2163
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getMaxDragScroll(Ltds/androidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 2164
    .local v0, "maxScroll":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2165
    .local v1, "absOutOfBounds":I
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    .line 2167
    .local v2, "direction":I
    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2168
    .local v3, "outOfBoundsRatio":F
    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2169
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2171
    .local v4, "cappedScroll":I
    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_2c

    .line 2172
    const/high16 v5, 0x3f800000    # 1.0f

    .local v5, "timeRatio":F
    goto :goto_30

    .line 2174
    .end local v5    # "timeRatio":F
    :cond_2c
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    .line 2176
    .restart local v5    # "timeRatio":F
    :goto_30
    int-to-float v6, v4

    sget-object v7, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2177
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2178
    .local v6, "value":I
    if-nez v6, :cond_41

    .line 2179
    if-lez p3, :cond_3f

    const/4 v7, 0x1

    goto :goto_40

    :cond_3f
    const/4 v7, -0x1

    :goto_40
    return v7

    .line 2181
    :cond_41
    return v6
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .line 1676
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 1661
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2068
    sget-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    iget-object v3, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2070
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 2102
    sget-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    iget-object v3, p3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2104
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "selected"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1975
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    .line 1976
    .local v9, "recoverAnimSize":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_7
    if-ge v10, v9, :cond_2f

    .line 1977
    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1978
    .local v12, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1979
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1980
    .local v13, "count":I
    iget-object v3, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1982
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1976
    .end local v12    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_2f
    move-object/from16 v11, p4

    .line 1984
    .end local v10    # "i":I
    if-eqz p3, :cond_4a

    .line 1985
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 1986
    .local v10, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1987
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1989
    .end local v10    # "count":I
    :cond_4a
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "selected"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1994
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;>;"
    move-object v8, p1

    move-object/from16 v9, p4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    .line 1995
    .local v10, "recoverAnimSize":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_9
    if-ge v11, v10, :cond_2c

    .line 1996
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1997
    .local v12, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1998
    .local v13, "count":I
    iget-object v3, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2000
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1995
    .end local v12    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v13    # "count":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 2002
    .end local v11    # "i":I
    :cond_2c
    if-eqz p3, :cond_45

    .line 2003
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 2004
    .local v11, "count":I
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 2005
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2007
    .end local v11    # "count":I
    :cond_45
    const/4 v0, 0x0

    .line 2008
    .local v0, "hasRunningAnimation":Z
    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_48
    if-ltz v1, :cond_64

    .line 2009
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 2010
    .local v2, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v3, :cond_5c

    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v3, :cond_5c

    .line 2011
    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_61

    .line 2012
    :cond_5c
    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_61

    .line 2013
    const/4 v0, 0x1

    .line 2008
    .end local v2    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_48

    .line 2016
    .end local v1    # "i":I
    :cond_64
    if-eqz v0, :cond_69

    .line 2017
    invoke-virtual/range {p2 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 2019
    :cond_69
    return-void
.end method

.method public abstract onMove(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .registers 13
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .line 1941
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1942
    .local v0, "layoutManager":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_13

    .line 1943
    move-object v1, v0

    check-cast v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1945
    return-void

    .line 1949
    :cond_13
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1950
    iget-object v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    .line 1951
    .local v1, "minLeft":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_28

    .line 1952
    invoke-virtual {p1, p5}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1954
    :cond_28
    iget-object v2, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 1955
    .local v2, "maxRight":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_3c

    .line 1956
    invoke-virtual {p1, p5}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1960
    .end local v1    # "minLeft":I
    .end local v2    # "maxRight":I
    :cond_3c
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1961
    iget-object v1, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 1962
    .local v1, "minTop":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_51

    .line 1963
    invoke-virtual {p1, p5}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1965
    :cond_51
    iget-object v2, p4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    .line 1966
    .local v2, "maxBottom":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_65

    .line 1967
    invoke-virtual {p1, p5}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1970
    .end local v1    # "minTop":I
    .end local v2    # "maxBottom":I
    :cond_65
    return-void
.end method

.method public onSelectedChanged(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 1893
    if-eqz p1, :cond_9

    .line 1894
    sget-object v0, Ltds/androidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;

    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1896
    :cond_9
    return-void
.end method

.method public abstract onSwiped(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method
