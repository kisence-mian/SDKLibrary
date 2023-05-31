.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$anim:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    .line 697
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 700
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 702
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    .line 704
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemAnimator()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 708
    .local v0, "animator":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_32

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_32
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    .line 709
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_48

    .line 710
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_4f

    .line 712
    :cond_48
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 715
    .end local v0    # "animator":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
    :cond_4f
    :goto_4f
    return-void
.end method
