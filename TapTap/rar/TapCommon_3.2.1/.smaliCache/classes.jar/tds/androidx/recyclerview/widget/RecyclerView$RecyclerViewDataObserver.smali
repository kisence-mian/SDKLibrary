.class Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 5657
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 5658
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 5662
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5663
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5665
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 5666
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_21

    .line 5667
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 5669
    :cond_21
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 5673
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5674
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5675
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5677
    :cond_13
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5681
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5682
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5683
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5685
    :cond_13
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 5697
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5698
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5699
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5701
    :cond_13
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 5689
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5690
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5691
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 5693
    :cond_13
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .registers 3

    .line 5714
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_7

    .line 5715
    return-void

    .line 5720
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5721
    .local v0, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5722
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 5724
    :cond_18
    return-void
.end method

.method triggerUpdateProcessor()V
    .registers 3

    .line 5704
    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_18

    .line 5705
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_22

    .line 5707
    :cond_18
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5708
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 5710
    :goto_22
    return-void
.end method
