.class public Ltds/androidx/recyclerview/widget/LinearSnapHelper;
.super Ltds/androidx/recyclerview/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

.field private mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)F
    .registers 13
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "minPosView":Landroid/view/View;
    const/4 v1, 0x0

    .line 224
    .local v1, "maxPosView":Landroid/view/View;
    const v2, 0x7fffffff

    .line 225
    .local v2, "minPos":I
    const/high16 v3, -0x80000000

    .line 226
    .local v3, "maxPos":I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    .line 227
    .local v4, "childCount":I
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_10

    .line 228
    return v5

    .line 231
    :cond_10
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v4, :cond_2a

    .line 232
    invoke-virtual {p1, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 233
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p1, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 234
    .local v8, "pos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1f

    .line 235
    goto :goto_27

    .line 237
    :cond_1f
    if-ge v8, v2, :cond_23

    .line 238
    move v2, v8

    .line 239
    move-object v0, v7

    .line 241
    :cond_23
    if-le v8, v3, :cond_27

    .line 242
    move v3, v8

    .line 243
    move-object v1, v7

    .line 231
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    :cond_27
    :goto_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 246
    .end local v6    # "i":I
    :cond_2a
    if-eqz v0, :cond_55

    if-nez v1, :cond_2f

    goto :goto_55

    .line 249
    :cond_2f
    invoke-virtual {p2, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 250
    invoke-virtual {p2, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 249
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 251
    .local v6, "start":I
    invoke-virtual {p2, v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 252
    invoke-virtual {p2, v1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    .line 251
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 253
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 254
    .local v8, "distance":I
    if-nez v8, :cond_4c

    .line 255
    return v5

    .line 257
    :cond_4c
    int-to-float v9, v8

    mul-float/2addr v9, v5

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v9, v5

    return v9

    .line 247
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "distance":I
    :cond_55
    :goto_55
    return v5
.end method

.method private distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I
    .registers 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 142
    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 143
    invoke-virtual {p2, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 144
    .local v0, "childCenter":I
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 145
    .local v1, "containerCenter":I
    sub-int v2, v0, v1

    return v2
.end method

.method private estimateNextPositionDiffForFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;II)I
    .registers 11
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .line 161
    invoke-virtual {p0, p3, p4}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v0

    .line 162
    .local v0, "distances":[I
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->computeDistancePerChild(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)F

    move-result v1

    .line 163
    .local v1, "distancePerChild":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_f

    .line 164
    return v3

    .line 166
    :cond_f
    aget v2, v0, v3

    .line 167
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_21

    aget v2, v0, v3

    goto :goto_23

    :cond_21
    aget v2, v0, v4

    .line 168
    .local v2, "distance":I
    :goto_23
    int-to-float v3, v2

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method private findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 11
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 183
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 184
    .local v0, "childCount":I
    if-nez v0, :cond_8

    .line 185
    const/4 v1, 0x0

    return-object v1

    .line 188
    :cond_8
    const/4 v1, 0x0

    .line 189
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 190
    .local v2, "center":I
    const v3, 0x7fffffff

    .line 192
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_36

    .line 193
    invoke-virtual {p1, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 195
    invoke-virtual {p2, v5}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 196
    .local v6, "childCenter":I
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 199
    .local v7, "absDistance":I
    if-ge v7, v3, :cond_33

    .line 200
    move v3, v7

    .line 201
    move-object v1, v5

    .line 192
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 204
    .end local v4    # "i":I
    :cond_36
    return-object v1
.end method

.method private getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 271
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 272
    :cond_8
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 274
    :cond_e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mHorizontalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 262
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 263
    :cond_8
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 265
    :cond_e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->mVerticalHelper:Ltds/androidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    .local v0, "out":[I
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 48
    nop

    .line 49
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 48
    invoke-direct {p0, p2, v1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_18

    .line 51
    :cond_16
    aput v2, v0, v2

    .line 54
    :goto_18
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    .line 55
    nop

    .line 56
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 55
    invoke-direct {p0, p2, v1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->distanceToCenter(Landroid/view/View;Ltds/androidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    goto :goto_2d

    .line 58
    :cond_2b
    aput v2, v0, v3

    .line 60
    :goto_2d
    return-object v0
.end method

.method public findSnapView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 133
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 135
    :cond_f
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 136
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->findCenterView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTargetSnapPosition(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 14
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 66
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 67
    return v1

    .line 70
    :cond_6
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 71
    .local v0, "itemCount":I
    if-nez v0, :cond_d

    .line 72
    return v1

    .line 75
    :cond_d
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "currentView":Landroid/view/View;
    if-nez v2, :cond_14

    .line 77
    return v1

    .line 80
    :cond_14
    invoke-virtual {p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 81
    .local v3, "currentPosition":I
    if-ne v3, v1, :cond_1b

    .line 82
    return v1

    .line 85
    :cond_1b
    move-object v4, p1

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 90
    .local v4, "vectorProvider":Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 91
    .local v5, "vectorForEnd":Landroid/graphics/PointF;
    if-nez v5, :cond_27

    .line 93
    return v1

    .line 97
    :cond_27
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_40

    .line 98
    nop

    .line 99
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    .line 98
    invoke-direct {p0, p1, v6, p2, v8}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;II)I

    move-result v6

    .line 100
    .local v6, "hDeltaJump":I
    iget v9, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v7

    if-gez v9, :cond_41

    .line 101
    neg-int v6, v6

    goto :goto_41

    .line 104
    .end local v6    # "hDeltaJump":I
    :cond_40
    const/4 v6, 0x0

    .line 106
    .restart local v6    # "hDeltaJump":I
    :cond_41
    :goto_41
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 107
    nop

    .line 108
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->getVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v9

    .line 107
    invoke-direct {p0, p1, v9, v8, p3}, Ltds/androidx/recyclerview/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper;II)I

    move-result v8

    .line 109
    .local v8, "vDeltaJump":I
    iget v9, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v9, v7

    if-gez v7, :cond_59

    .line 110
    neg-int v8, v8

    goto :goto_59

    .line 113
    .end local v8    # "vDeltaJump":I
    :cond_58
    const/4 v8, 0x0

    .line 116
    .restart local v8    # "vDeltaJump":I
    :cond_59
    :goto_59
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_61

    move v7, v8

    goto :goto_62

    :cond_61
    move v7, v6

    .line 117
    .local v7, "deltaJump":I
    :goto_62
    if-nez v7, :cond_65

    .line 118
    return v1

    .line 121
    :cond_65
    add-int v1, v3, v7

    .line 122
    .local v1, "targetPos":I
    if-gez v1, :cond_6a

    .line 123
    const/4 v1, 0x0

    .line 125
    :cond_6a
    if-lt v1, v0, :cond_6e

    .line 126
    add-int/lit8 v1, v0, -0x1

    .line 128
    :cond_6e
    return v1
.end method
