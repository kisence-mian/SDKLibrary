.class Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;
.super Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 48
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 51
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 52
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 53
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 57
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 78
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    add-int/2addr v1, p2

    iput v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 79
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeInserted(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V

    .line 83
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    if-lez v0, :cond_2b

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 84
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_2b

    .line 85
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 87
    :cond_2b
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 105
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "moving more than 1 item is not supported in RecyclerView"

    invoke-static {v0, v1}, Ltds/androidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeMoved(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V

    .line 112
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 91
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    sub-int/2addr v1, p2

    iput v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 92
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onItemRangeRemoved(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V

    .line 97
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2c

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 98
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_2c

    .line 99
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 101
    :cond_2c
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .registers 3

    .line 116
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;->this$0:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;->onStateRestorationPolicyChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 119
    return-void
.end method
