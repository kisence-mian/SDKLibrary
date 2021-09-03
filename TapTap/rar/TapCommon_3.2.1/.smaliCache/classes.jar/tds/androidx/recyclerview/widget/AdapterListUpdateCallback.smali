.class public final Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2
    .param p1, "adapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 37
    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onInserted(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 42
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 43
    return-void
.end method

.method public onMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 54
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 55
    return-void
.end method

.method public onRemoved(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 48
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 49
    return-void
.end method
