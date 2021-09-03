.class public Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 12240
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12241
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 12249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 12250
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12225
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12229
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12233
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12261
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12262
    iput p2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12263
    iput p3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12264
    iput-object p4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12265
    return-void
.end method

.method private validate()V
    .registers 3

    .line 12315
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 12316
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12318
    :cond_12
    :goto_12
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_17

    .line 12321
    return-void

    .line 12319
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .line 12344
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .registers 2

    .line 12325
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .registers 2

    .line 12335
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .line 12354
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .registers 2

    .line 12287
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public jumpTo(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .line 12283
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12284
    return-void
.end method

.method runIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 8
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 12291
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 12292
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12293
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12294
    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12295
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12296
    return-void

    .line 12298
    .end local v0    # "position":I
    :cond_10
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_38

    .line 12299
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 12300
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 12301
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12302
    const/16 v2, 0xa

    if-le v0, v2, :cond_35

    .line 12305
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12308
    :cond_35
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_3a

    .line 12310
    :cond_38
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12312
    :goto_3a
    return-void
.end method

.method public setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 12348
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12349
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12350
    return-void
.end method

.method public setDx(I)V
    .registers 3
    .param p1, "dx"    # I

    .line 12329
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12330
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12331
    return-void
.end method

.method public setDy(I)V
    .registers 3
    .param p1, "dy"    # I

    .line 12339
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12340
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12341
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12365
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12366
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12367
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 12380
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12381
    iput p2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12382
    iput p3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12383
    iput-object p4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12384
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12385
    return-void
.end method
