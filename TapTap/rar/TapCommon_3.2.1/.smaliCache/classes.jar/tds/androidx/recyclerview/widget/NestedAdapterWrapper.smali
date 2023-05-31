.class Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;
    }
.end annotation


# instance fields
.field public final adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterObserver:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCachedItemCount:I

.field final mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

.field private final mStableIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

.field private final mViewTypeLookup:Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;Ltds/androidx/recyclerview/widget/ViewTypeStorage;Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V
    .registers 6
    .param p2, "callback"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;
    .param p3, "viewTypeStorage"    # Ltds/androidx/recyclerview/widget/ViewTypeStorage;
    .param p4, "stableIdLookup"    # Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;",
            "Ltds/androidx/recyclerview/widget/ViewTypeStorage;",
            "Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;",
            ")V"
        }
    .end annotation

    .line 126
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$1;-><init>(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 127
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 128
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;

    .line 129
    invoke-interface {p3, p0}, Ltds/androidx/recyclerview/widget/ViewTypeStorage;->createViewTypeWrapper(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    .line 130
    iput-object p4, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 131
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 132
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 133
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 137
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 138
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->dispose()V

    .line 139
    return-void
.end method

.method getCachedItemCount()I
    .registers 2

    .line 142
    iget v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .registers 6
    .param p1, "localPosition"    # I

    .line 161
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 162
    .local v0, "localItemId":J
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    invoke-interface {v2, v0, v1}, Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;->localToGlobal(J)J

    move-result-wide v2

    return-wide v2
.end method

.method getItemViewType(I)I
    .registers 4
    .param p1, "localPosition"    # I

    .line 146
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-interface {v0, v1}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->localToGlobal(I)I

    move-result v0

    return v0
.end method

.method onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "localPosition"    # I

    .line 157
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 158
    return-void
.end method

.method onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "globalViewType"    # I

    .line 152
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;

    invoke-interface {v0, p2}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;->globalToLocal(I)I

    move-result v0

    .line 153
    .local v0, "localType":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method
