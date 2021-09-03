.class public abstract Ltds/androidx/recyclerview/widget/ListAdapter;
.super Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/AsyncListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListener:Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ltds/androidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "config":Ltds/androidx/recyclerview/widget/AsyncDifferConfig;, "Ltds/androidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Ltds/androidx/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/ListAdapter$1;-><init>(Ltds/androidx/recyclerview/widget/ListAdapter;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mListener:Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;

    .line 115
    new-instance v1, Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    new-instance v2, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v2, p0}, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v1, v2, p1}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;-><init>(Ltds/androidx/recyclerview/widget/ListUpdateCallback;Ltds/androidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    .line 116
    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->addListListener(Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "diffCallback":Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;, "Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 97
    new-instance v0, Ltds/androidx/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/ListAdapter$1;-><init>(Ltds/androidx/recyclerview/widget/ListAdapter;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mListener:Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;

    .line 108
    new-instance v1, Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    new-instance v2, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v2, p0}, Ltds/androidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v3, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v3, p1}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Ltds/androidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 109
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Ltds/androidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;-><init>(Ltds/androidx/recyclerview/widget/ListUpdateCallback;Ltds/androidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    .line 110
    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->addListListener(Ltds/androidx/recyclerview/widget/AsyncListDiffer$ListListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 155
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "previousList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "currentList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 146
    .local p0, "this":Ltds/androidx/recyclerview/widget/ListAdapter;, "Ltds/androidx/recyclerview/widget/ListAdapter<TT;TVH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ListAdapter;->mDiffer:Ltds/androidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
