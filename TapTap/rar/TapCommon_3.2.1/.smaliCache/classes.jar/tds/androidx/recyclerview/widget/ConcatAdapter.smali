.class public final Ltds/androidx/recyclerview/widget/ConcatAdapter;
.super Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ConcatAdapter"


# instance fields
.field private final mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 113
    .local p1, "adapters":Ljava/util/List;, "Ljava/util/List<+Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;>;"
    sget-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapter;-><init>(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V
    .registers 5
    .param p1, "config"    # Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;",
            "Ljava/util/List<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 125
    .local p2, "adapters":Ljava/util/List;, "Ljava/util/List<+Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 126
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-direct {v0, p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;-><init>(Ltds/androidx/recyclerview/widget/ConcatAdapter;Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 128
    .local v1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->addAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 129
    .end local v1    # "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    goto :goto_e

    .line 131
    :cond_1e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 132
    return-void
.end method

.method public varargs constructor <init>(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1, "config"    # Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;",
            "[",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 103
    .local p2, "adapters":[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapter;-><init>(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public varargs constructor <init>([Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 89
    .local p1, "adapters":[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    sget-object v0, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    invoke-direct {p0, v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapter;-><init>(Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;[Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    return-void
.end method


# virtual methods
.method public addAdapter(ILtds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 161
    .local p2, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->addAdapter(ILtds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public addAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 145
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->addAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public findRelativeAdapterPositionIn(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 5
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "globalPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I)I"
        }
    .end annotation

    .line 300
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getLocalAdapterPosition(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v0

    return v0
.end method

.method public getAdapters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getCopyOfAdapters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 238
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 226
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 177
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method internalSetStateRestorationPolicy(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .registers 2
    .param p1, "strategy"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 233
    invoke-super {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->setStateRestorationPolicy(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    .line 234
    return-void
.end method

.method public onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 263
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 264
    return-void
.end method

.method public onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 188
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 189
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 183
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 268
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 269
    return-void
.end method

.method public onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 243
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 248
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 249
    return-void
.end method

.method public onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 253
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 254
    return-void
.end method

.method public onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 258
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 259
    return-void
.end method

.method public removeAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 172
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapter;->mController:Ltds/androidx/recyclerview/widget/ConcatAdapterController;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->removeAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public setHasStableIds(Z)V
    .registers 4
    .param p1, "hasStableIds"    # Z

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStateRestorationPolicy(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .registers 4
    .param p1, "strategy"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
