.class public Landroidx/recyclerview/widget/DefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;,
        Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 199
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 200
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 201
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 400
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 401
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 402
    .local v1, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 403
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 404
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 400
    .end local v1    # "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 408
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 3
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 411
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_9

    .line 412
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 414
    :cond_9
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_12

    .line 415
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 417
    :cond_12
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "oldItem":Z
    iget-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_9

    .line 421
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_10

    .line 422
    :cond_9
    iget-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_27

    .line 423
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 424
    const/4 v0, 0x1

    .line 428
    :goto_10
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 429
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 430
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 432
    const/4 v1, 0x1

    return v1

    .line 426
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 522
    sget-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 523
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 525
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 526
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 527
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 222
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 223
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 229
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 230
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 231
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$5;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 24
    .param p1, "oldHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 321
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-ne v14, v15, :cond_19

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 326
    :cond_19
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 327
    .local v0, "prevTranslationX":F
    iget-object v1, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 328
    .local v1, "prevTranslationY":F
    iget-object v2, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 329
    .local v2, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 330
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 331
    .local v3, "deltaX":I
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 333
    .local v4, "deltaY":I
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 334
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 336
    if-eqz v15, :cond_60

    .line 338
    invoke-direct {v6, v15}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 339
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 343
    :cond_60
    iget-object v5, v6, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v7, v13

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v16, v0

    move-object v0, v13

    .end local v0    # "prevTranslationX":F
    .local v16, "prevTranslationX":F
    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 10
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 348
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 349
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_9

    :cond_7
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 350
    .local v2, "view":Landroid/view/View;
    :goto_9
    iget-object v3, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 351
    .local v3, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_f

    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 352
    .local v1, "newView":Landroid/view/View;
    :cond_f
    const/4 v4, 0x0

    if-eqz v2, :cond_47

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 354
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 353
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 355
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget v6, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    iget v6, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 374
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 376
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_47
    if-eqz v1, :cond_76

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 378
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$8;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 395
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 397
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_76
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 21
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 257
    move-object/from16 v6, p1

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 258
    .local v7, "view":Landroid/view/View;
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v8, p2, v0

    .line 259
    .end local p2    # "fromX":I
    .local v8, "fromX":I
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int v9, p3, v0

    .line 260
    .end local p3    # "fromY":I
    .local v9, "fromY":I
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 261
    sub-int v10, p4, v8

    .line 262
    .local v10, "deltaX":I
    sub-int v11, p5, v9

    .line 263
    .local v11, "deltaY":I
    if-nez v10, :cond_26

    if-nez v11, :cond_26

    .line 264
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_26
    if-eqz v10, :cond_2d

    .line 268
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 270
    :cond_2d
    if-eqz v11, :cond_34

    .line 271
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 273
    :cond_34
    move-object v12, p0

    iget-object v13, v12, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v14, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 21
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 278
    move-object/from16 v7, p1

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 279
    .local v8, "view":Landroid/view/View;
    sub-int v9, p4, p2

    .line 280
    .local v9, "deltaX":I
    sub-int v10, p5, p3

    .line 281
    .local v10, "deltaY":I
    const/4 v0, 0x0

    if-eqz v9, :cond_12

    .line 282
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 284
    :cond_12
    if-eqz v10, :cond_1b

    .line 285
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 290
    :cond_1b
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 291
    .local v11, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v12, p0

    iget-object v0, v12, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move-object v4, v8

    move v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 316
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 193
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 665
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

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

.method cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 642
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 641
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 644
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .registers 2

    .line 550
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 551
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 553
    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 10
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 437
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 439
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 441
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 442
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 443
    .local v3, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_2e

    .line 444
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 446
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 447
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 441
    .end local v3    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 450
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 451
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_46

    .line 452
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 453
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 455
    :cond_46
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 456
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 457
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 460
    :cond_54
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5c
    if-ltz v1, :cond_77

    .line 461
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 462
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 463
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 464
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 467
    .end local v1    # "i":I
    :cond_77
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_7f
    if-ltz v1, :cond_b9

    .line 468
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 469
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_8f
    if-ltz v5, :cond_b6

    .line 470
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 471
    .local v6, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_b3

    .line 472
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 474
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 475
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 477
    iget-object v7, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 469
    .end local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    .line 467
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 483
    .end local v1    # "i":I
    :cond_b9
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_c1
    if-ltz v1, :cond_e5

    .line 484
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 485
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 486
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 487
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 488
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 489
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 496
    .end local v1    # "i":I
    :cond_e5
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 514
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 519
    return-void
.end method

.method public endAnimations()V
    .registers 12

    .line 557
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_2a

    .line 559
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 560
    .local v3, "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 561
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 562
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 563
    iget-object v2, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 564
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 558
    .end local v3    # "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 566
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_32
    if-ltz v1, :cond_47

    .line 568
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 569
    .local v3, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 570
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    .end local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    .line 572
    .end local v1    # "i":I
    :cond_47
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_4f
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_6b

    .line 574
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 575
    .local v4, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 576
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 577
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    .end local v4    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 579
    .end local v1    # "i":I
    :cond_6b
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_73
    if-ltz v1, :cond_83

    .line 581
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 580
    add-int/lit8 v1, v1, -0x1

    goto :goto_73

    .line 583
    .end local v1    # "i":I
    :cond_83
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 585
    return-void

    .line 588
    :cond_8f
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 589
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_97
    if-ltz v4, :cond_d2

    .line 590
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 591
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 592
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_a7
    if-ltz v6, :cond_cf

    .line 593
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 594
    .local v7, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v8, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 595
    .local v8, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 596
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 597
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 598
    iget-object v10, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 599
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 601
    iget-object v10, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    .end local v7    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v8    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_cc
    add-int/lit8 v6, v6, -0x1

    goto :goto_a7

    .line 589
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_cf
    add-int/lit8 v4, v4, -0x1

    goto :goto_97

    .line 605
    .end local v4    # "i":I
    :cond_d2
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 606
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_da
    if-ltz v2, :cond_10e

    .line 607
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 608
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 609
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_ea
    if-ltz v5, :cond_10b

    .line 610
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 611
    .local v6, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 612
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 613
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 614
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 615
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_108

    .line 616
    iget-object v8, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 609
    .end local v6    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_108
    add-int/lit8 v5, v5, -0x1

    goto :goto_ea

    .line 606
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_10b
    add-int/lit8 v2, v2, -0x1

    goto :goto_da

    .line 620
    .end local v2    # "i":I
    :cond_10e
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 621
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_116
    if-ltz v2, :cond_142

    .line 622
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 623
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_126
    if-ltz v4, :cond_13f

    .line 625
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 626
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 627
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_13c
    add-int/lit8 v4, v4, -0x1

    goto :goto_126

    .line 621
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_13f
    add-int/lit8 v2, v2, -0x1

    goto :goto_116

    .line 632
    .end local v2    # "i":I
    :cond_142
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 633
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 634
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 635
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 637
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 638
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 531
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 531
    :goto_5c
    return v0
.end method

.method public runPendingAnimations()V
    .registers 16

    .line 102
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 103
    .local v0, "removalsPending":Z
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 104
    .local v1, "movesPending":Z
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 105
    .local v2, "changesPending":Z
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 106
    .local v3, "additionsPending":Z
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    .line 108
    return-void

    .line 111
    :cond_29
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 112
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 113
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_2f

    .line 114
    :cond_3f
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v4, 0x0

    if-eqz v1, :cond_77

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 121
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 132
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_74

    .line 133
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 134
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v7, v6, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    .end local v7    # "view":Landroid/view/View;
    goto :goto_77

    .line 136
    :cond_74
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 140
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_77
    :goto_77
    if-eqz v2, :cond_a9

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 155
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_a6

    .line 156
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 157
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-static {v8, v6, v9, v10}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 158
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_a9

    .line 159
    :cond_a6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 163
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_a9
    :goto_a9
    if-eqz v3, :cond_f7

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 168
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 178
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_cf

    if-nez v1, :cond_cf

    if-eqz v2, :cond_cb

    goto :goto_cf

    .line 186
    :cond_cb
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_f7

    .line 179
    :cond_cf
    :goto_cf
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_d9

    :cond_d8
    move-wide v9, v7

    .line 180
    .local v9, "removeDuration":J
    :goto_d9
    if-eqz v1, :cond_e0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_e1

    :cond_e0
    move-wide v11, v7

    .line 181
    .local v11, "moveDuration":J
    :goto_e1
    if-eqz v2, :cond_e7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 182
    .local v7, "changeDuration":J
    :cond_e7
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 183
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 184
    .local v4, "view":Landroid/view/View;
    invoke-static {v4, v6, v13, v14}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 189
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    :cond_f7
    :goto_f7
    return-void
.end method
