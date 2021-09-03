.class Ltds/androidx/recyclerview/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 630
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "info"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 641
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->animateAppearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 642
    return-void
.end method

.method public processDisappeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 634
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 635
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->animateDisappearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 636
    return-void
.end method

.method public processPersistent(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 648
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1a

    .line 652
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 654
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_29

    .line 656
    :cond_1a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->animatePersistence(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 657
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 659
    :cond_29
    :goto_29
    return-void
.end method

.method public unused(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 663
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$4;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 664
    return-void
.end method
