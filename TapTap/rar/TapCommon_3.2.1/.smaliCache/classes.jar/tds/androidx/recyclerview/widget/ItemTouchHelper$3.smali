.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;
.super Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 21
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .line 632
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    move/from16 v0, p9

    iput v0, v8, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v0, p10

    iput-object v0, v8, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 635
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 636
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_8

    .line 637
    return-void

    .line 639
    :cond_8
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_1a

    .line 641
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_31

    .line 645
    :cond_1a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 647
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_31

    .line 650
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1, p0, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    .line 654
    :cond_31
    :goto_31
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_44

    .line 655
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 657
    :cond_44
    return-void
.end method
