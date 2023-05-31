.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
    .registers 10
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "animationType"    # I
    .param p3, "actionState"    # I
    .param p4, "startDx"    # F
    .param p5, "startDy"    # F
    .param p6, "targetX"    # F
    .param p7, "targetY"    # F

    .line 2400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2393
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2395
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2401
    iput p3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2402
    iput p2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2403
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2404
    iput p4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2405
    iput p5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2406
    iput p6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2407
    iput p7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2408
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 2409
    new-instance v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;

    invoke-direct {v1, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2416
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2417
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2419
    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 2431
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2432
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2470
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2471
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2462
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 2463
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2465
    :cond_a
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2466
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2476
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2458
    return-void
.end method

.method public setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .line 2422
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2423
    return-void
.end method

.method public setFraction(F)V
    .registers 2
    .param p1, "fraction"    # F

    .line 2435
    iput p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2436
    return-void
.end method

.method public start()V
    .registers 3

    .line 2426
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2427
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2428
    return-void
.end method

.method public update()V
    .registers 4

    .line 2443
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    iget v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_13

    .line 2444
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_1a

    .line 2446
    :cond_13
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2448
    :goto_1a
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    iget v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_2d

    .line 2449
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_34

    .line 2451
    :cond_2d
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2453
    :goto_34
    return-void
.end method
