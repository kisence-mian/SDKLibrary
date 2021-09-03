.class Ltds/androidx/recyclerview/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;->initAdapterManager()V
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

    .line 983
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 7
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 1028
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_42

    goto :goto_41

    .line 1040
    :sswitch_6
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Ltds/androidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_41

    .line 1036
    :sswitch_15
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Ltds/androidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 1038
    goto :goto_41

    .line 1033
    :sswitch_25
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 1034
    goto :goto_41

    .line 1030
    :sswitch_33
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 1031
    nop

    .line 1043
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_33
        0x2 -> :sswitch_25
        0x4 -> :sswitch_15
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method public findViewHolder(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "position"    # I

    .line 986
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 987
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 988
    return-object v1

    .line 992
    :cond_b
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iget-object v3, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 996
    return-object v1

    .line 998
    :cond_18
    return-object v0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 1018
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 1020
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1052
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 1053
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1054
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .registers 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1058
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 1060
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1061
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 1003
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 1004
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1005
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 1006
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1011
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 1012
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$6;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1013
    return-void
.end method

.method public onDispatchFirstPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 1024
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 1025
    return-void
.end method

.method public onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 1047
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 1048
    return-void
.end method
