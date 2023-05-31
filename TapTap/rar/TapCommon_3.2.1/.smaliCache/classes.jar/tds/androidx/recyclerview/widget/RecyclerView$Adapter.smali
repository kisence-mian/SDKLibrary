.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

.field private mStateRestorationPolicy:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7133
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7134
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 7135
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 7136
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 7
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7282
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 7283
    .local v0, "rootBind":Z
    :goto_8
    if-eqz v0, :cond_22

    .line 7284
    iput p2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 7285
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 7286
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 7288
    :cond_18
    const/16 v2, 0x207

    invoke-virtual {p1, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 7291
    const-string v2, "RV OnBindView"

    invoke-static {v2}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7293
    :cond_22
    iput-object p0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7294
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 7295
    if-eqz v0, :cond_42

    .line 7296
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 7297
    iget-object v2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 7298
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_3f

    .line 7299
    move-object v3, v2

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7301
    :cond_3f
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 7303
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    return-void
.end method

.method canRestoreState()Z
    .registers 4

    .line 7770
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$7;->$SwitchMap$tds$androidx$recyclerview$widget$RecyclerView$Adapter$StateRestorationPolicy:[I

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1a

    .line 7776
    return v1

    .line 7774
    :pswitch_10
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 7772
    :pswitch_19
    return v2

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 7251
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    :try_start_0
    const-string v0, "RV CreateView"

    invoke-static {v0}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 7252
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7253
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_18

    .line 7258
    iput p2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_20

    .line 7259
    nop

    .line 7261
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 7259
    return-object v0

    .line 7254
    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .end local p1    # "parent":Landroid/view/ViewGroup;
    .end local p2    # "viewType":I
    throw v1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    .line 7261
    .end local v0    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    .restart local p0    # "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    .restart local p2    # "viewType":I
    :catchall_20
    move-exception v0

    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 7262
    throw v0
.end method

.method public findRelativeAdapterPositionIn(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 5
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "localPosition"    # I
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

    .line 7236
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-ne p1, p0, :cond_3

    .line 7237
    return p3

    .line 7239
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 7346
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 7318
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .registers 2

    .line 7759
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public final hasObservers()Z
    .registers 2

    .line 7456
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    .line 7364
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .registers 2

    .line 7541
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 7542
    return-void
.end method

.method public final notifyItemChanged(I)V
    .registers 4
    .param p1, "position"    # I

    .line 7556
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7557
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 7583
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7584
    return-void
.end method

.method public final notifyItemInserted(I)V
    .registers 4
    .param p1, "position"    # I

    .line 7646
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7647
    return-void
.end method

.method public final notifyItemMoved(II)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 7661
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 7662
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7600
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 7601
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 7630
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 7631
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7679
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 7680
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 7712
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7713
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .registers 4
    .param p1, "position"    # I

    .line 7695
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 7696
    return-void
.end method

.method public onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 7500
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7214
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 7215
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 7509
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 7422
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7436
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7448
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 7385
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public registerAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3
    .param p1, "observer"    # Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7475
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 7476
    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 4
    .param p1, "hasStableIds"    # Z

    .line 7330
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7334
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 7335
    return-void

    .line 7331
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStateRestorationPolicy(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V
    .registers 3
    .param p1, "strategy"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7746
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7747
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    .line 7748
    return-void
.end method

.method public unregisterAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3
    .param p1, "observer"    # Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7488
    .local p0, "this":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 7489
    return-void
.end method
