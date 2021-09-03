.class public Ltds/androidx/customview/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/customview/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private final mDefaultEdgeSize:I

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 332
    new-instance v0, Ltds/androidx/customview/widget/ViewDragHelper$1;

    invoke-direct {v0}, Ltds/androidx/customview/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Ltds/androidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 340
    new-instance v0, Ltds/androidx/customview/widget/ViewDragHelper$2;

    invoke-direct {v0, p0}, Ltds/androidx/customview/widget/ViewDragHelper$2;-><init>(Ltds/androidx/customview/widget/ViewDragHelper;)V

    iput-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 384
    if-eqz p2, :cond_54

    .line 387
    if-eqz p3, :cond_4c

    .line 391
    iput-object p2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 392
    iput-object p3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 394
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 395
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v1, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    .line 397
    iput v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 399
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 400
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 401
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 402
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Ltds/androidx/customview/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 403
    return-void

    .line 388
    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    .end local v1    # "density":F
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 10
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .line 1311
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1312
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1314
    .local v1, "absODelta":F
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    const/4 v3, 0x0

    if-ne v2, p4, :cond_57

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_57

    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_57

    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_57

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_30

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_30

    goto :goto_57

    .line 1320
    :cond_30
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_47

    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1321
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v2, p3

    or-int/2addr v4, p4

    aput v4, v2, p3

    .line 1322
    return v3

    .line 1324
    :cond_47
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_56

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_56

    const/4 v3, 0x1

    :cond_56
    return v3

    .line 1318
    :cond_57
    :goto_57
    return v3
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 1338
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1339
    return v0

    .line 1341
    :cond_4
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    .line 1342
    .local v1, "checkHorizontal":Z
    :goto_10
    iget-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v0

    .line 1344
    .local v3, "checkVertical":Z
    :goto_1b
    if-eqz v1, :cond_2e

    if-eqz v3, :cond_2e

    .line 1345
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2d

    move v0, v2

    :cond_2d
    return v0

    .line 1346
    :cond_2e
    if-eqz v1, :cond_3d

    .line 1347
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3c

    move v0, v2

    :cond_3c
    return v0

    .line 1348
    :cond_3d
    if-eqz v3, :cond_4c

    .line 1349
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4b

    move v0, v2

    :cond_4b
    return v0

    .line 1351
    :cond_4c
    return v0
.end method

.method private clampMag(FFF)F
    .registers 7
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .line 714
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 715
    .local v0, "absValue":F
    cmpg-float v1, v0, p2

    const/4 v2, 0x0

    if-gez v1, :cond_a

    return v2

    .line 716
    :cond_a
    cmpl-float v1, v0, p3

    if-lez v1, :cond_16

    cmpl-float v1, p1, v2

    if-lez v1, :cond_14

    move v1, p3

    goto :goto_15

    :cond_14
    neg-float v1, p3

    :goto_15
    return v1

    .line 717
    :cond_16
    return p1
.end method

.method private clampMag(III)I
    .registers 6
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .line 697
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 698
    .local v0, "absValue":I
    if-ge v0, p2, :cond_8

    const/4 v1, 0x0

    return v1

    .line 699
    :cond_8
    if-le v0, p3, :cond_10

    if-lez p1, :cond_e

    move v1, p3

    goto :goto_f

    :cond_e
    neg-int v1, p3

    :goto_f
    return v1

    .line 700
    :cond_10
    return p1
.end method

.method private clearMotionHistory()V
    .registers 3

    .line 817
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_5

    .line 818
    return-void

    .line 820
    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 821
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 822
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 823
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 824
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 825
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 826
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 827
    iput v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 828
    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 4
    .param p1, "pointerId"    # I

    .line 831
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Ltds/androidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    .line 834
    :cond_b
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 835
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 836
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 837
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 838
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 839
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 840
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 841
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 842
    return-void

    .line 832
    :cond_32
    :goto_32
    return-void
.end method

.method private computeAxisDuration(III)I
    .registers 11
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .line 665
    if-nez p1, :cond_4

    .line 666
    const/4 v0, 0x0

    return v0

    .line 669
    :cond_4
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 670
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 671
    .local v1, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 672
    .local v2, "distanceRatio":F
    int-to-float v4, v1

    int-to-float v5, v1

    .line 673
    invoke-direct {p0, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 676
    .local v4, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 677
    if-lez p2, :cond_38

    .line 678
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v5, p2

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    .local v3, "duration":I
    goto :goto_44

    .line 680
    .end local v3    # "duration":I
    :cond_38
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 681
    .local v5, "range":F
    add-float/2addr v3, v5

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 683
    .end local v5    # "range":F
    .restart local v3    # "duration":I
    :goto_44
    const/16 v5, 0x258

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v2, v2

    iget v3, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v3, v3

    move/from16 v4, p4

    invoke-direct {v0, v4, v2, v3}, Ltds/androidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v2

    .line 645
    .end local p4    # "xvel":I
    .local v2, "xvel":I
    iget v3, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v3, v3

    iget v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v4, v4

    move/from16 v5, p5

    invoke-direct {v0, v5, v3, v4}, Ltds/androidx/customview/widget/ViewDragHelper;->clampMag(III)I

    move-result v3

    .line 646
    .end local p5    # "yvel":I
    .local v3, "yvel":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 647
    .local v4, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 648
    .local v5, "absDy":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 649
    .local v6, "absXVel":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 650
    .local v7, "absYVel":I
    add-int v8, v6, v7

    .line 651
    .local v8, "addedVel":I
    add-int v9, v4, v5

    .line 653
    .local v9, "addedDistance":I
    if-eqz v2, :cond_35

    int-to-float v10, v6

    int-to-float v11, v8

    goto :goto_37

    :cond_35
    int-to-float v10, v4

    int-to-float v11, v9

    :goto_37
    div-float/2addr v10, v11

    .line 655
    .local v10, "xweight":F
    if-eqz v3, :cond_3d

    int-to-float v11, v7

    int-to-float v12, v8

    goto :goto_3f

    :cond_3d
    int-to-float v11, v5

    int-to-float v12, v9

    :goto_3f
    div-float/2addr v11, v12

    .line 658
    .local v11, "yweight":F
    iget-object v12, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, v1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v13, p2

    invoke-direct {v0, v13, v2, v12}, Ltds/androidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v12

    .line 659
    .local v12, "xduration":I
    iget-object v14, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v14, v1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v14

    move/from16 v15, p3

    invoke-direct {v0, v15, v3, v14}, Ltds/androidx/customview/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v14

    .line 661
    .local v14, "yduration":I
    int-to-float v0, v12

    mul-float/2addr v0, v10

    int-to-float v1, v14

    mul-float/2addr v1, v11

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static create(Landroid/view/ViewGroup;FLtds/androidx/customview/widget/ViewDragHelper$Callback;)Ltds/androidx/customview/widget/ViewDragHelper;
    .registers 6
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 369
    invoke-static {p0, p2}, Ltds/androidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)Ltds/androidx/customview/widget/ViewDragHelper;

    move-result-object v0

    .line 370
    .local v0, "helper":Ltds/androidx/customview/widget/ViewDragHelper;
    iget v1, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    .line 371
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)Ltds/androidx/customview/widget/ViewDragHelper;
    .registers 4
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    .line 355
    new-instance v0, Ltds/androidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Ltds/androidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ltds/androidx/customview/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 6
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 807
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 810
    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v0, :cond_14

    .line 812
    invoke-virtual {p0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 814
    :cond_14
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4
    .param p1, "f"    # F

    .line 721
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 722
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 723
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .registers 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 1459
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    .line 1460
    .local v3, "clampedX":I
    move/from16 v4, p2

    .line 1461
    .local v4, "clampedY":I
    iget-object v5, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1462
    .local v5, "oldLeft":I
    iget-object v6, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1463
    .local v6, "oldTop":I
    if-eqz v1, :cond_2a

    .line 1464
    iget-object v7, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v9, p1

    invoke-virtual {v7, v8, v9, v1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v3

    .line 1465
    iget-object v7, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v3, v5

    invoke-static {v7, v8}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_2c

    .line 1463
    :cond_2a
    move/from16 v9, p1

    .line 1467
    :goto_2c
    if-eqz v2, :cond_40

    .line 1468
    iget-object v7, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v8, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v15, p2

    invoke-virtual {v7, v8, v15, v2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1469
    iget-object v7, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v4, v6

    invoke-static {v7, v8}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_42

    .line 1467
    :cond_40
    move/from16 v15, p2

    .line 1472
    :goto_42
    if-nez v1, :cond_46

    if-eqz v2, :cond_55

    .line 1473
    :cond_46
    sub-int v7, v3, v5

    .line 1474
    .local v7, "clampedDx":I
    sub-int v8, v4, v6

    .line 1475
    .local v8, "clampedDy":I
    iget-object v10, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v11, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v3

    move v13, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1478
    .end local v7    # "clampedDx":I
    .end local v8    # "clampedDy":I
    :cond_55
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 12
    .param p1, "pointerId"    # I

    .line 845
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gt v1, p1, :cond_5c

    .line 846
    :cond_7
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 847
    .local v1, "imx":[F
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 848
    .local v2, "imy":[F
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 849
    .local v3, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [F

    .line 850
    .local v4, "lmy":[F
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 851
    .local v5, "iit":[I
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 852
    .local v6, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v7, v7, [I

    .line 854
    .local v7, "edl":[I
    if-eqz v0, :cond_4e

    .line 855
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v0

    invoke-static {v0, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v0

    invoke-static {v0, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v0

    invoke-static {v0, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v0

    invoke-static {v0, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v0

    invoke-static {v0, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v0

    invoke-static {v0, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    :cond_4e
    iput-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 865
    iput-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 866
    iput-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    .line 867
    iput-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    .line 868
    iput-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 869
    iput-object v6, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 870
    iput-object v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 872
    .end local v1    # "imx":[F
    .end local v2    # "imy":[F
    .end local v3    # "lmx":[F
    .end local v4    # "lmy":[F
    .end local v5    # "iit":[I
    .end local v6    # "edip":[I
    .end local v7    # "edl":[I
    :cond_5c
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 16
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .line 624
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 625
    .local v0, "startLeft":I
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 626
    .local v7, "startTop":I
    sub-int v8, p1, v0

    .line 627
    .local v8, "dx":I
    sub-int v9, p2, v7

    .line 629
    .local v9, "dy":I
    if-nez v8, :cond_1e

    if-nez v9, :cond_1e

    .line 631
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 632
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 633
    return v1

    .line 636
    :cond_1e
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v1, p0

    move v3, v8

    move v4, v9

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ltds/androidx/customview/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    .line 637
    .local v10, "duration":I
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 639
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 640
    const/4 v1, 0x1

    return v1
.end method

.method private getEdgesTouched(II)I
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1534
    const/4 v0, 0x0

    .line 1536
    .local v0, "result":I
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_e

    or-int/lit8 v0, v0, 0x1

    .line 1537
    :cond_e
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1b

    or-int/lit8 v0, v0, 0x4

    .line 1538
    :cond_1b
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    .line 1539
    :cond_28
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 1541
    :cond_35
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 4
    .param p1, "pointerId"    # I

    .line 1545
    invoke-virtual {p0, p1}, Ltds/androidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const/4 v0, 0x0

    return v0

    .line 1551
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private releaseViewForPointerUp()V
    .registers 5

    .line 1448
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1449
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1450
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1449
    invoke-direct {p0, v0, v1, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1452
    .local v0, "xvel":F
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1453
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1452
    invoke-direct {p0, v1, v2, v3}, Ltds/androidx/customview/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1455
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1456
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1292
    or-int/lit8 v0, v0, 0x1

    .line 1294
    :cond_a
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1295
    or-int/lit8 v0, v0, 0x4

    .line 1297
    :cond_13
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1298
    or-int/lit8 v0, v0, 0x2

    .line 1300
    :cond_1c
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1301
    or-int/lit8 v0, v0, 0x8

    .line 1304
    :cond_26
    if-eqz v0, :cond_34

    .line 1305
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1306
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1308
    :cond_34
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .line 875
    invoke-direct {p0, p3}, Ltds/androidx/customview/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 876
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 877
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 878
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 879
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    .line 880
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 884
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_25

    .line 885
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 887
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 888
    goto :goto_22

    .line 890
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 891
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 892
    .local v4, "y":F
    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 893
    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 884
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 895
    .end local v1    # "i":I
    :cond_25
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 11

    .line 552
    invoke-virtual {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    .line 553
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 554
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 555
    .local v0, "oldX":I
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 556
    .local v1, "oldY":I
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 557
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 558
    .local v2, "newX":I
    iget-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    .line 559
    .local v9, "newY":I
    iget-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v2, v0

    sub-int v8, v9, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 561
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "newX":I
    .end local v9    # "newY":I
    :cond_32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 562
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .registers 22
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 960
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5f

    .line 961
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 962
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 963
    .local v3, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 964
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 966
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_18
    if-ltz v6, :cond_5f

    .line 969
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 970
    .local v14, "child":Landroid/view/View;
    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_5c

    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_5c

    add-int v7, p6, v4

    .line 971
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_5c

    add-int v7, p6, v4

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_5c

    const/4 v9, 0x1

    add-int v7, p5, v3

    .line 972
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v12, v7, v8

    add-int v7, p6, v4

    .line 973
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v13, v7, v8

    .line 972
    move-object v7, p0

    move-object v8, v14

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Ltds/androidx/customview/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 974
    return v2

    .line 966
    .end local v14    # "child":Landroid/view/View;
    :cond_5c
    add-int/lit8 v6, v6, -0x1

    goto :goto_18

    .line 979
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_5f
    if-eqz p2, :cond_77

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_74

    move/from16 v3, p4

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    goto :goto_7c

    :cond_74
    move/from16 v3, p4

    goto :goto_7c

    :cond_77
    move/from16 v1, p3

    move/from16 v3, p4

    :cond_7b
    const/4 v2, 0x0

    :goto_7c
    return v2
.end method

.method public cancel()V
    .registers 2

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 539
    invoke-direct {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->clearMotionHistory()V

    .line 541
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 542
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 545
    :cond_10
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 6
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    .line 503
    iput-object p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 504
    iput p2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 505
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 507
    return-void

    .line 499
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .registers 5
    .param p1, "directions"    # I

    .line 1369
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    .line 1370
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_11

    .line 1371
    invoke-virtual {p0, p1, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1372
    const/4 v2, 0x1

    return v2

    .line 1370
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1375
    .end local v1    # "i":I
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public checkTouchSlop(II)Z
    .registers 11
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .line 1394
    invoke-virtual {p0, p2}, Ltds/androidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1395
    return v1

    .line 1398
    :cond_8
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 1399
    .local v0, "checkHorizontal":Z
    :goto_10
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    .line 1401
    .local v3, "checkVertical":Z
    :goto_18
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    aget v4, v4, p2

    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1402
    .local v4, "dx":F
    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v5, v5, p2

    iget-object v6, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1404
    .local v5, "dy":F
    if-eqz v0, :cond_3d

    if-eqz v3, :cond_3d

    .line 1405
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    iget v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3c

    move v1, v2

    :cond_3c
    return v1

    .line 1406
    :cond_3d
    if-eqz v0, :cond_4c

    .line 1407
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4b

    move v1, v2

    :cond_4b
    return v1

    .line 1408
    :cond_4c
    if-eqz v3, :cond_5b

    .line 1409
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5a

    move v1, v2

    :cond_5a
    return v1

    .line 1411
    :cond_5b
    return v1
.end method

.method public continueSettling(Z)Z
    .registers 15
    .param p1, "deferCallbacks"    # Z

    .line 762
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6c

    .line 763
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 764
    .local v0, "keepGoing":Z
    iget-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 765
    .local v3, "x":I
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 766
    .local v10, "y":I
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v11, v3, v4

    .line 767
    .local v11, "dx":I
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v12, v10, v4

    .line 769
    .local v12, "dy":I
    if-eqz v11, :cond_2f

    .line 770
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v11}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 772
    :cond_2f
    if-eqz v12, :cond_36

    .line 773
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v4, v12}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 776
    :cond_36
    if-nez v11, :cond_3a

    if-eqz v12, :cond_45

    .line 777
    :cond_3a
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 780
    :cond_45
    if-eqz v0, :cond_5d

    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_5d

    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v10, v4, :cond_5d

    .line 783
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 784
    const/4 v0, 0x0

    .line 787
    :cond_5d
    if-nez v0, :cond_6c

    .line 788
    if-eqz p1, :cond_69

    .line 789
    iget-object v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c

    .line 791
    :cond_69
    invoke-virtual {p0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 796
    .end local v0    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v10    # "y":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_6c
    :goto_6c
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v2, :cond_71

    const/4 v1, 0x1

    :cond_71
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1522
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1523
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_32

    .line 1524
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1525
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2f

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_2f

    .line 1526
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_2f

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_2f

    .line 1527
    return-object v2

    .line 1523
    .end local v2    # "child":Landroid/view/View;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1530
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method

.method public flingCapturedView(IIII)V
    .registers 15
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .line 737
    iget-boolean v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_30

    .line 742
    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 743
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 744
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 742
    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 747
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 748
    return-void

    .line 738
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivePointerId()I
    .registers 2

    .line 522
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    .line 514
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultEdgeSize()I
    .registers 2

    .line 486
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDefaultEdgeSize:I

    return v0
.end method

.method public getEdgeSize()I
    .registers 2

    .line 460
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .registers 2

    .line 423
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    .line 530
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .registers 2

    .line 432
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1490
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Ltds/androidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .registers 5
    .param p1, "edges"    # I

    .line 1424
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    .line 1425
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_11

    .line 1426
    invoke-virtual {p0, p1, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1427
    const/4 v2, 0x1

    return v2

    .line 1425
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1430
    .end local v1    # "i":I
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public isEdgeTouched(II)Z
    .registers 4
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .line 1444
    invoke-virtual {p0, p2}, Ltds/androidx/customview/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 911
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1503
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1504
    return v0

    .line 1506
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1e

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1e

    .line 1508
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_1e

    .line 1509
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 1506
    :goto_1f
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1125
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1127
    .local v1, "actionIndex":I
    if-nez v0, :cond_d

    .line 1130
    invoke-virtual {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1133
    :cond_d
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 1134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1136
    :cond_17
    iget-object v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1138
    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_196

    :pswitch_21
    goto/16 :goto_195

    .line 1241
    :pswitch_23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1242
    .local v4, "pointerId":I
    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v5, v3, :cond_63

    iget v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v3, :cond_63

    .line 1244
    const/4 v3, -0x1

    .line 1245
    .local v3, "newActivePointer":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 1246
    .local v5, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_35
    if-ge v6, v5, :cond_5e

    .line 1247
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1248
    .local v7, "id":I
    iget v8, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v7, v8, :cond_40

    .line 1250
    goto :goto_5b

    .line 1253
    :cond_40
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1254
    .local v8, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1255
    .local v9, "y":F
    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {p0, v10, v11}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v10, v11, :cond_5b

    .line 1256
    invoke-virtual {p0, v11, v7}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1257
    iget v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 1258
    goto :goto_5e

    .line 1246
    .end local v7    # "id":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_5b
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 1262
    .end local v6    # "i":I
    :cond_5e
    :goto_5e
    if-ne v3, v2, :cond_63

    .line 1264
    invoke-direct {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1267
    .end local v3    # "newActivePointer":I
    .end local v5    # "pointerCount":I
    :cond_63
    invoke-direct {p0, v4}, Ltds/androidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1268
    goto/16 :goto_195

    .line 1160
    .end local v4    # "pointerId":I
    :pswitch_68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1161
    .local v2, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1162
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1164
    .local v4, "y":F
    invoke-direct {p0, v3, v4, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1167
    iget v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_95

    .line 1170
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1171
    .local v5, "toCapture":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1173
    iget-object v6, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v2

    .line 1174
    .local v6, "edgesTouched":I
    iget v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_a4

    .line 1175
    iget-object v8, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_a4

    .line 1177
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_95
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1182
    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_195

    .line 1177
    :cond_a4
    :goto_a4
    goto/16 :goto_195

    .line 1280
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_a6
    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v3, :cond_ae

    .line 1281
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Ltds/androidx/customview/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1283
    :cond_ae
    invoke-virtual {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_195

    .line 1188
    :pswitch_b3
    iget v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v4, v3, :cond_119

    .line 1190
    iget v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v3}, Ltds/androidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_c1

    goto/16 :goto_195

    .line 1193
    :cond_c1
    iget v3, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1194
    .local v3, "index":I
    if-ne v3, v2, :cond_eb

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find pointer index for active pointer ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", which may indicate an inconsistent MotionEvent stream"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ViewDragHelper"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    goto/16 :goto_195

    .line 1201
    :cond_eb
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1202
    .local v2, "x":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1203
    .restart local v4    # "y":F
    iget-object v5, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionX:[F

    iget v6, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    aget v5, v5, v6

    sub-float v5, v2, v5

    float-to-int v5, v5

    .line 1204
    .local v5, "idx":I
    iget-object v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mLastMotionY:[F

    aget v6, v7, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 1206
    .local v6, "idy":I
    iget-object v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {p0, v7, v8, v5, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1208
    invoke-direct {p0, p1}, Ltds/androidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1209
    .end local v2    # "x":F
    .end local v3    # "index":I
    .end local v4    # "y":F
    .end local v5    # "idx":I
    .end local v6    # "idy":I
    goto/16 :goto_195

    .line 1211
    :cond_119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1212
    .local v2, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11e
    if-ge v4, v2, :cond_15d

    .line 1213
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1216
    .local v5, "pointerId":I
    invoke-direct {p0, v5}, Ltds/androidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v6

    if-nez v6, :cond_12b

    goto :goto_15a

    .line 1218
    :cond_12b
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1219
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1220
    .local v7, "y":F
    iget-object v8, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v8, v8, v5

    sub-float v8, v6, v8

    .line 1221
    .local v8, "dx":F
    iget-object v9, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    .line 1223
    .local v9, "dy":F
    invoke-direct {p0, v8, v9, v5}, Ltds/androidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1224
    iget v10, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v10, v3, :cond_147

    .line 1226
    goto :goto_15d

    .line 1229
    :cond_147
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {p0, v10, v11}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    .line 1230
    .local v10, "toCapture":Landroid/view/View;
    invoke-direct {p0, v10, v8, v9}, Ltds/androidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_15a

    .line 1231
    invoke-virtual {p0, v10, v5}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_15a

    .line 1232
    goto :goto_15d

    .line 1212
    .end local v5    # "pointerId":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "toCapture":Landroid/view/View;
    :cond_15a
    :goto_15a
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    .line 1235
    .end local v4    # "i":I
    :cond_15d
    :goto_15d
    invoke-direct {p0, p1}, Ltds/androidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1237
    .end local v2    # "pointerCount":I
    goto :goto_195

    .line 1272
    :pswitch_161
    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v2, v3, :cond_168

    .line 1273
    invoke-direct {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1275
    :cond_168
    invoke-virtual {p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    .line 1276
    goto :goto_195

    .line 1140
    :pswitch_16c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1141
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1142
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1143
    .local v4, "pointerId":I
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p0, v5, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1145
    .local v5, "toCapture":Landroid/view/View;
    invoke-direct {p0, v2, v3, v4}, Ltds/androidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1150
    invoke-virtual {p0, v5, v4}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1152
    iget-object v6, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v4

    .line 1153
    .local v6, "edgesTouched":I
    iget v7, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_195

    .line 1154
    iget-object v8, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v4}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1287
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_195
    :goto_195
    return-void

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_16c
        :pswitch_161
        :pswitch_b3
        :pswitch_a6
        :pswitch_21
        :pswitch_68
        :pswitch_23
    .end packed-switch
.end method

.method setDragState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 915
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 916
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_19

    .line 917
    iput p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 918
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 919
    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_19

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 923
    :cond_19
    return-void
.end method

.method public setEdgeSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 473
    iput p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 474
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2
    .param p1, "edgeFlags"    # I

    .line 448
    iput p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    .line 449
    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2
    .param p1, "minVel"    # F

    .line 412
    iput p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mMinVelocity:F

    .line 413
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .line 604
    iget-boolean v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_1b

    .line 609
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 611
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 609
    invoke-direct {p0, p1, p2, v0, v1}, Ltds/androidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    .line 605
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 991
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 993
    .local v3, "actionIndex":I
    if-nez v2, :cond_11

    .line 996
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    .line 999
    :cond_11
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1b

    .line 1000
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1002
    :cond_1b
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1004
    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_17e

    :pswitch_24
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .local v16, "action":I
    .local v17, "actionIndex":I
    goto/16 :goto_177

    .line 1102
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1103
    .local v4, "pointerId":I
    invoke-direct {v0, v4}, Ltds/androidx/customview/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1104
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_177

    .line 1026
    .end local v4    # "pointerId":I
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1027
    .local v7, "pointerId":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1028
    .local v8, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1030
    .local v9, "y":F
    invoke-direct {v0, v8, v9, v7}, Ltds/androidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1033
    iget v10, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v10, :cond_5d

    .line 1034
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v4, v7

    .line 1035
    .local v4, "edgesTouched":I
    iget v10, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v11, v4, v10

    if-eqz v11, :cond_73

    .line 1036
    iget-object v11, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v10, v4

    invoke-virtual {v11, v10, v7}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_73

    .line 1038
    .end local v4    # "edgesTouched":I
    :cond_5d
    if-ne v10, v4, :cond_73

    .line 1040
    float-to-int v4, v8

    float-to-int v10, v9

    invoke-virtual {v0, v4, v10}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1041
    .local v4, "toCapture":Landroid/view/View;
    iget-object v10, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v4, v10, :cond_6c

    .line 1042
    invoke-virtual {v0, v4, v7}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1044
    .end local v4    # "toCapture":Landroid/view/View;
    :cond_6c
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_177

    .line 1038
    :cond_73
    :goto_73
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_177

    .line 1049
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_7a
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v4, :cond_133

    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    if-nez v4, :cond_89

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v5, 0x0

    goto/16 :goto_177

    .line 1052
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 1053
    .local v4, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8e
    if-ge v7, v4, :cond_128

    .line 1054
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1057
    .local v8, "pointerId":I
    invoke-direct {v0, v8}, Ltds/androidx/customview/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v9

    if-nez v9, :cond_a2

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    goto/16 :goto_11e

    .line 1059
    :cond_a2
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1060
    .local v9, "x":F
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1061
    .local v10, "y":F
    iget-object v11, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v8

    sub-float v11, v9, v11

    .line 1062
    .local v11, "dx":F
    iget-object v12, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v8

    sub-float v12, v10, v12

    .line 1064
    .local v12, "dy":F
    float-to-int v13, v9

    float-to-int v14, v10

    invoke-virtual {v0, v13, v14}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 1065
    .local v13, "toCapture":Landroid/view/View;
    if-eqz v13, :cond_c6

    invoke-direct {v0, v13, v11, v12}, Ltds/androidx/customview/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v14

    if-eqz v14, :cond_c6

    const/4 v14, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v14, 0x0

    .line 1066
    .local v14, "pastSlop":Z
    :goto_c7
    if-eqz v14, :cond_106

    .line 1072
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1073
    .local v15, "oldLeft":I
    float-to-int v5, v11

    add-int/2addr v5, v15

    .line 1074
    .local v5, "targetLeft":I
    iget-object v6, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    float-to-int v2, v11

    invoke-virtual {v6, v13, v5, v2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1076
    .local v2, "newLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1077
    .local v6, "oldTop":I
    move/from16 v17, v3

    .end local v3    # "actionIndex":I
    .restart local v17    # "actionIndex":I
    float-to-int v3, v12

    add-int/2addr v3, v6

    .line 1078
    .local v3, "targetTop":I
    move/from16 v18, v4

    .end local v4    # "pointerCount":I
    .local v18, "pointerCount":I
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    move/from16 v19, v5

    .end local v5    # "targetLeft":I
    .local v19, "targetLeft":I
    float-to-int v5, v12

    invoke-virtual {v4, v13, v3, v5}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1080
    .local v4, "newTop":I
    iget-object v5, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v5, v13}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v5

    .line 1081
    .local v5, "hDragRange":I
    move/from16 v20, v3

    .end local v3    # "targetTop":I
    .local v20, "targetTop":I
    iget-object v3, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, v13}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    .line 1082
    .local v3, "vDragRange":I
    if-eqz v5, :cond_ff

    if-lez v5, :cond_10c

    if-ne v2, v15, :cond_10c

    :cond_ff
    if-eqz v3, :cond_12e

    if-lez v3, :cond_10c

    if-ne v4, v6, :cond_10c

    .line 1084
    goto :goto_12e

    .line 1066
    .end local v5    # "hDragRange":I
    .end local v6    # "oldTop":I
    .end local v15    # "oldLeft":I
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .end local v19    # "targetLeft":I
    .end local v20    # "targetTop":I
    .local v2, "action":I
    .local v3, "actionIndex":I
    .local v4, "pointerCount":I
    :cond_106
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1087
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v4    # "pointerCount":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v18    # "pointerCount":I
    :cond_10c
    invoke-direct {v0, v11, v12, v8}, Ltds/androidx/customview/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1088
    iget v2, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_115

    .line 1090
    goto :goto_12e

    .line 1093
    :cond_115
    if-eqz v14, :cond_11e

    invoke-virtual {v0, v13, v8}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 1094
    goto :goto_12e

    .line 1053
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    :cond_11e
    :goto_11e
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_8e

    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    .restart local v4    # "pointerCount":I
    :cond_128
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .line 1097
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v4    # "pointerCount":I
    .end local v7    # "i":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v18    # "pointerCount":I
    :cond_12e
    :goto_12e
    invoke-direct/range {p0 .. p1}, Ltds/androidx/customview/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1098
    const/4 v5, 0x0

    goto :goto_177

    .line 1049
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_133
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    const/4 v5, 0x0

    goto :goto_177

    .line 1109
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_139
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/customview/widget/ViewDragHelper;->cancel()V

    const/4 v5, 0x0

    goto :goto_177

    .line 1006
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :pswitch_142
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1007
    .local v2, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1008
    .local v3, "y":F
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1009
    .local v6, "pointerId":I
    invoke-direct {v0, v2, v3, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1011
    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v0, v7, v8}, Ltds/androidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1014
    .local v7, "toCapture":Landroid/view/View;
    iget-object v8, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v8, :cond_167

    iget v8, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-ne v8, v4, :cond_167

    .line 1015
    invoke-virtual {v0, v7, v6}, Ltds/androidx/customview/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1018
    :cond_167
    iget-object v4, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v4, v6

    .line 1019
    .local v4, "edgesTouched":I
    iget v8, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mTrackingEdges:I

    and-int v9, v4, v8

    if-eqz v9, :cond_177

    .line 1020
    iget-object v9, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    and-int/2addr v8, v4

    invoke-virtual {v9, v8, v6}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1114
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "edgesTouched":I
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    :cond_177
    :goto_177
    iget v2, v0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17d

    move v5, v3

    :cond_17d
    return v5

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_142
        :pswitch_139
        :pswitch_7a
        :pswitch_139
        :pswitch_24
        :pswitch_39
        :pswitch_2b
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .line 579
    iput-object p1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Ltds/androidx/customview/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 583
    .local v0, "continueSliding":Z
    if-nez v0, :cond_17

    iget v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_17

    iget-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 589
    :cond_17
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 5
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 935
    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_a

    .line 937
    return v1

    .line 939
    :cond_a
    if-eqz p1, :cond_1a

    iget-object v0, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mCallback:Ltds/androidx/customview/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 940
    iput p2, p0, Ltds/androidx/customview/widget/ViewDragHelper;->mActivePointerId:I

    .line 941
    invoke-virtual {p0, p1, p2}, Ltds/androidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 942
    return v1

    .line 944
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
