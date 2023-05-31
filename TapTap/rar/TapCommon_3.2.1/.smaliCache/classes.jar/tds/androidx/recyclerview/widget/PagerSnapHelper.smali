.class public Ltds/androidx/recyclerview/widget/PagerSnapHelper;
.super Ltds/androidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

.field private mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I
    .registers 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 200
    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 201
    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 202
    .local v0, "childCenter":I
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 203
    .local v1, "containerCenter":I
    sub-int v2, v0, v1

    return v2
.end method

.method private findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 11
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 218
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 219
    .local v0, "childCount":I
    if-nez v0, :cond_8

    .line 220
    const/4 v1, 0x0

    return-object v1

    .line 223
    :cond_8
    const/4 v1, 0x0

    .line 224
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 225
    .local v2, "center":I
    const v3, 0x7fffffff

    .line 227
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_36

    .line 228
    invoke-virtual {p1, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 229
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 230
    invoke-virtual {p2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 231
    .local v6, "childCenter":I
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 234
    .local v7, "absDistance":I
    if-ge v7, v3, :cond_33

    .line 235
    move v3, v7

    .line 236
    move-object v1, v5

    .line 227
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 239
    .end local v4    # "i":I
    :cond_36
    return-object v1
.end method

.method private getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 264
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 265
    :cond_8
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 267
    :cond_e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getOrientationHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 244
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 246
    :cond_b
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 249
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 255
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 256
    :cond_8
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 258
    :cond_e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private isForwardFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .registers 7
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 147
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 148
    if-lez p2, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 150
    :cond_d
    if-lez p3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method

.method private isReverseLayout(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .registers 8
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 155
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 156
    .local v0, "itemCount":I
    instance-of v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 157
    move-object v1, p1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 159
    .local v1, "vectorProvider":Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    .line 160
    .local v3, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v3, :cond_23

    .line 161
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_21

    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_22

    :cond_21
    const/4 v2, 0x1

    :cond_22
    return v2

    .line 164
    .end local v1    # "vectorProvider":Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    .end local v3    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_23
    return v2
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    .local v0, "out":[I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 53
    nop

    .line 54
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 53
    invoke-direct {p0, p2, v1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_18

    .line 56
    :cond_16
    aput v2, v0, v2

    .line 59
    :goto_18
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    .line 60
    nop

    .line 61
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 60
    invoke-direct {p0, p2, v1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    goto :goto_2d

    .line 63
    :cond_2b
    aput v2, v0, v3

    .line 65
    :goto_2d
    return-object v0
.end method

.method protected createScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .registers 4
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 171
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_6

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_6
    new-instance v0, Ltds/androidx/recyclerview/widget/PagerSnapHelper$1;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Ltds/androidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public findSnapView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 71
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 73
    :cond_f
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 74
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTargetSnapPosition(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 16
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 82
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 83
    .local v0, "itemCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 84
    return v1

    .line 87
    :cond_8
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->getOrientationHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    .line 88
    .local v2, "orientationHelper":Ltds/androidx/recyclerview/widget/OrientationHelper;
    if-nez v2, :cond_f

    .line 89
    return v1

    .line 93
    :cond_f
    const/4 v3, 0x0

    .line 94
    .local v3, "closestChildBeforeCenter":Landroid/view/View;
    const/high16 v4, -0x80000000

    .line 95
    .local v4, "distanceBefore":I
    const/4 v5, 0x0

    .line 96
    .local v5, "closestChildAfterCenter":Landroid/view/View;
    const v6, 0x7fffffff

    .line 99
    .local v6, "distanceAfter":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 100
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b
    if-ge v8, v7, :cond_37

    .line 101
    invoke-virtual {p1, v8}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 102
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_24

    .line 103
    goto :goto_34

    .line 105
    :cond_24
    invoke-direct {p0, v9, v2}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I

    move-result v10

    .line 107
    .local v10, "distance":I
    if-gtz v10, :cond_2e

    if-le v10, v4, :cond_2e

    .line 109
    move v4, v10

    .line 110
    move-object v3, v9

    .line 112
    :cond_2e
    if-ltz v10, :cond_34

    if-ge v10, v6, :cond_34

    .line 114
    move v6, v10

    .line 115
    move-object v5, v9

    .line 100
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "distance":I
    :cond_34
    :goto_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 120
    .end local v8    # "i":I
    :cond_37
    invoke-direct {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->isForwardFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result v8

    .line 121
    .local v8, "forwardDirection":Z
    if-eqz v8, :cond_44

    if-eqz v5, :cond_44

    .line 122
    invoke-virtual {p1, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    return v1

    .line 123
    :cond_44
    if-nez v8, :cond_4d

    if-eqz v3, :cond_4d

    .line 124
    invoke-virtual {p1, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    return v1

    .line 131
    :cond_4d
    if-eqz v8, :cond_51

    move-object v9, v3

    goto :goto_52

    :cond_51
    move-object v9, v5

    .line 132
    .local v9, "visibleView":Landroid/view/View;
    :goto_52
    if-nez v9, :cond_55

    .line 133
    return v1

    .line 135
    :cond_55
    invoke-virtual {p1, v9}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    .line 136
    .local v10, "visiblePosition":I
    nop

    .line 137
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/PagerSnapHelper;->isReverseLayout(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v11

    if-ne v11, v8, :cond_62

    move v11, v1

    goto :goto_63

    :cond_62
    const/4 v11, 0x1

    :goto_63
    add-int/2addr v11, v10

    .line 139
    .local v11, "snapToPosition":I
    if-ltz v11, :cond_6a

    if-lt v11, v0, :cond_69

    goto :goto_6a

    .line 142
    :cond_69
    return v11

    .line 140
    :cond_6a
    :goto_6a
    return v1
.end method
