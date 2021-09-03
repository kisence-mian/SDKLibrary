.class Ltds/androidx/recyclerview/widget/ConcatAdapterController;
.super Ljava/lang/Object;
.source "ConcatAdapterController.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    }
.end annotation


# instance fields
.field private mAttachedRecyclerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ltds/androidx/recyclerview/widget/RecyclerView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBinderLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

.field private mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

.field private final mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

.field private final mStableIdStorage:Ltds/androidx/recyclerview/widget/StableIdStorage;

.field private final mViewTypeStorage:Ltds/androidx/recyclerview/widget/ViewTypeStorage;

.field private mWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ConcatAdapter;Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;)V
    .registers 5
    .param p1, "concatAdapter"    # Ltds/androidx/recyclerview/widget/ConcatAdapter;
    .param p2, "config"    # Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    .line 70
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 83
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    .line 86
    iget-boolean v0, p2, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    if-eqz v0, :cond_2d

    .line 87
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Ltds/androidx/recyclerview/widget/ViewTypeStorage;

    goto :goto_34

    .line 89
    :cond_2d
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Ltds/androidx/recyclerview/widget/ViewTypeStorage;

    .line 93
    :goto_34
    iget-object v0, p2, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 94
    iget-object v0, p2, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne v0, v1, :cond_46

    .line 95
    new-instance v0, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Ltds/androidx/recyclerview/widget/StableIdStorage;

    goto :goto_61

    .line 96
    :cond_46
    iget-object v0, p2, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne v0, v1, :cond_54

    .line 97
    new-instance v0, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Ltds/androidx/recyclerview/widget/StableIdStorage;

    goto :goto_61

    .line 98
    :cond_54
    iget-object v0, p2, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne v0, v1, :cond_62

    .line 99
    new-instance v0, Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Ltds/androidx/recyclerview/widget/StableIdStorage;

    .line 103
    :goto_61
    return-void

    .line 101
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown stable id mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateAndUpdateStateRestorationPolicy()V
    .registers 3

    .line 284
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->computeStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    .line 285
    .local v0, "newPolicy":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->getStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 286
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->internalSetStateRestorationPolicy(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    .line 288
    :cond_11
    return-void
.end method

.method private computeStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .registers 5

    .line 291
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 292
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 293
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getStateRestorationPolicy()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v2

    .line 294
    .local v2, "strategy":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    sget-object v3, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v3, :cond_1f

    .line 296
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0

    .line 297
    :cond_1f
    sget-object v3, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v2, v3, :cond_2c

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    if-nez v3, :cond_2c

    .line 299
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0

    .line 301
    .end local v1    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .end local v2    # "strategy":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    :cond_2c
    goto :goto_6

    .line 302
    :cond_2d
    sget-object v0, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method private countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I
    .registers 6
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "count":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 204
    .local v2, "item":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eq v2, p1, :cond_1b

    .line 205
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 209
    .end local v2    # "item":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_7

    .line 210
    :cond_1b
    return v0
.end method

.method private findWrapperAndLocalPosition(I)Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    .registers 7
    .param p1, "globalPosition"    # I

    .line 335
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    if-eqz v0, :cond_c

    .line 336
    new-instance v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;-><init>()V

    .local v0, "result":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    goto :goto_13

    .line 338
    .end local v0    # "result":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    :cond_c
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    .line 339
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 341
    .restart local v0    # "result":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    :goto_13
    move v1, p1

    .line 342
    .local v1, "localPosition":I
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 343
    .local v3, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v4

    if-le v4, v1, :cond_31

    .line 344
    iput-object v3, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 345
    iput v1, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    .line 346
    goto :goto_37

    .line 348
    :cond_31
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v4

    sub-int/2addr v1, v4

    .line 349
    .end local v3    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_1a

    .line 350
    :cond_37
    :goto_37
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    if-eqz v2, :cond_3c

    .line 353
    return-object v0

    .line 351
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find wrapper for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findWrapperFor(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)",
            "Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;"
        }
    .end annotation

    .line 107
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->indexOfWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    .line 108
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 109
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_9
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    return-object v1
.end method

.method private getWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .registers 6
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 409
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 410
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_b

    .line 414
    return-object v0

    .line 411
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find wrapper for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seems like it is not bound by this adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private indexOfWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)I"
        }
    .end annotation

    .line 115
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 117
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-ne v2, p1, :cond_16

    .line 118
    return v1

    .line 116
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 121
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private isAttachedTo(Ltds/androidx/recyclerview/widget/RecyclerView;)Z
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 418
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 419
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    .line 420
    const/4 v0, 0x1

    return v0

    .line 422
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    :cond_1a
    goto :goto_6

    .line 423
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private releaseWrapperAndLocalPosition(Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V
    .registers 3
    .param p1, "wrapperAndLocalPosition"    # Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p1, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mInUse:Z

    .line 358
    const/4 v0, 0x0

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 359
    const/4 v0, -0x1

    iput v0, p1, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    .line 360
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mReusableHolder:Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    .line 361
    return-void
.end method


# virtual methods
.method addAdapter(ILtds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 140
    .local p2, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-ltz p1, :cond_77

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_77

    .line 144
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 145
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const-string v1, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v0, v1}, Ltds/androidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_27

    .line 149
    :cond_1a
    invoke-virtual {p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 150
    const-string v0, "ConcatAdapter"

    const-string v1, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_27
    :goto_27
    invoke-direct {p0, p2}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->findWrapperFor(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    move-result-object v0

    .line 155
    .local v0, "existing":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_2f

    .line 156
    const/4 v1, 0x0

    return v1

    .line 158
    :cond_2f
    new-instance v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Ltds/androidx/recyclerview/widget/ViewTypeStorage;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdStorage:Ltds/androidx/recyclerview/widget/StableIdStorage;

    .line 159
    invoke-interface {v3}, Ltds/androidx/recyclerview/widget/StableIdStorage;->createStableIdLookup()Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    move-result-object v3

    invoke-direct {v1, p2, p0, v2, v3}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/NestedAdapterWrapper$Callback;Ltds/androidx/recyclerview/widget/ViewTypeStorage;Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V

    .line 160
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 163
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 164
    .local v4, "recyclerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    if-eqz v4, :cond_5e

    .line 165
    invoke-virtual {p2, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 167
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    .end local v4    # "recyclerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_5e
    goto :goto_47

    .line 169
    :cond_5f
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v2

    if-lez v2, :cond_72

    .line 170
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    .line 171
    invoke-direct {p0, v1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v3

    .line 172
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v4

    .line 170
    invoke-virtual {v2, v3, v4}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeInserted(II)V

    .line 176
    :cond_72
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    .line 177
    const/4 v2, 0x1

    return v2

    .line 141
    .end local v0    # "existing":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .end local v1    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    :cond_77
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index must be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    .line 142
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Given:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 130
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->addAdapter(ILtds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v0

    return v0
.end method

.method public canRestoreState()Z
    .registers 4

    .line 371
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 372
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 373
    const/4 v0, 0x0

    return v0

    .line 375
    .end local v1    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    :cond_1c
    goto :goto_6

    .line 376
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 481
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-nez v0, :cond_c

    .line 482
    const/4 v1, 0x0

    return-object v1

    .line 484
    :cond_c
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v1
.end method

.method public getCopyOfAdapters()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 491
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v0, "adapters":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;>;"
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 493
    .local v2, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v2    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_1e

    .line 495
    :cond_30
    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "globalPosition"    # I

    .line 214
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object v0

    .line 215
    .local v0, "wrapperAndPos":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v2, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getItemId(I)J

    move-result-wide v1

    .line 216
    .local v1, "globalItemId":J
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    .line 217
    return-wide v1
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "globalPosition"    # I

    .line 315
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object v0

    .line 316
    .local v0, "wrapperAndPos":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v2, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getItemViewType(I)I

    move-result v1

    .line 317
    .local v1, "itemViewType":I
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    .line 318
    return v1
.end method

.method public getLocalAdapterPosition(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 10
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

    .line 456
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<+Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 457
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-nez v0, :cond_c

    .line 458
    const/4 v1, -0x1

    return v1

    .line 460
    :cond_c
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v1

    .line 462
    .local v1, "itemsBefore":I
    sub-int v2, p3, v1

    .line 464
    .local v2, "localPosition":I
    if-ltz v2, :cond_23

    iget-object v3, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 474
    iget-object v3, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p1, p2, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v3

    return v3

    .line 465
    :cond_23
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is out of bounds for the adapter with size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 468
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adapter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTotalCount()I
    .registers 5

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "total":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 309
    .local v2, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 310
    .end local v2    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_7

    .line 311
    :cond_19
    return v0
.end method

.method public hasStableIds()Z
    .registers 3

    .line 499
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mStableIdMode:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Ltds/androidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 427
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->isAttachedTo(Ltds/androidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    return-void

    .line 430
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 432
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 433
    .end local v1    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_17

    .line 434
    :cond_29
    return-void
.end method

.method public onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "globalPosition"    # I

    .line 364
    invoke-direct {p0, p2}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->findWrapperAndLocalPosition(I)Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;

    move-result-object v0

    .line 365
    .local v0, "wrapperAndPos":Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mWrapper:Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    iget v2, v0, Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;->mLocalPosition:I

    invoke-virtual {v1, p1, v2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 367
    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->releaseWrapperAndLocalPosition(Ltds/androidx/recyclerview/widget/ConcatAdapterController$WrapperAndLocalPosition;)V

    .line 368
    return-void
.end method

.method public onChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 3
    .param p1, "wrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 223
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyDataSetChanged()V

    .line 224
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    .line 225
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "globalViewType"    # I

    .line 322
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mViewTypeStorage:Ltds/androidx/recyclerview/widget/ViewTypeStorage;

    invoke-interface {v0, p2}, Ltds/androidx/recyclerview/widget/ViewTypeStorage;->getWrapperForGlobalType(I)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    move-result-object v0

    .line 323
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 437
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

    .line 438
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 439
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 440
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    .line 441
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2a

    .line 442
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 443
    goto :goto_2d

    .line 437
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 446
    .end local v0    # "i":I
    :cond_2d
    :goto_2d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 447
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 448
    .end local v1    # "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    goto :goto_33

    .line 449
    :cond_45
    return-void
.end method

.method public onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 399
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 400
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_11

    .line 404
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    return v1

    .line 401
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find wrapper for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seems like it is not bound by this adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onItemRangeChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .registers 7
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 230
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 231
    .local v0, "offset":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    add-int v2, p2, v0

    invoke-virtual {v1, v2, p3}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeChanged(II)V

    .line 235
    return-void
.end method

.method public onItemRangeChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V
    .registers 8
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 240
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 241
    .local v0, "offset":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    add-int v2, p2, v0

    invoke-virtual {v1, v2, p3, p4}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 246
    return-void
.end method

.method public onItemRangeInserted(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .registers 7
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 251
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 252
    .local v0, "offset":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    add-int v2, p2, v0

    invoke-virtual {v1, v2, p3}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeInserted(II)V

    .line 256
    return-void
.end method

.method public onItemRangeMoved(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .registers 8
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I

    .line 271
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 272
    .local v0, "offset":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    add-int v2, p2, v0

    add-int v3, p3, v0

    invoke-virtual {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemMoved(II)V

    .line 276
    return-void
.end method

.method public onItemRangeRemoved(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .registers 7
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 261
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v0

    .line 262
    .local v0, "offset":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    add-int v2, p2, v0

    invoke-virtual {v1, v2, p3}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeRemoved(II)V

    .line 266
    return-void
.end method

.method public onStateRestorationPolicyChanged(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)V
    .registers 2
    .param p1, "nestedAdapterWrapper"    # Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 280
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    .line 281
    return-void
.end method

.method public onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 380
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    move-result-object v0

    .line 381
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 382
    return-void
.end method

.method public onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 385
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->getWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    move-result-object v0

    .line 386
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 387
    return-void
.end method

.method public onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 390
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mBinderLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 391
    .local v0, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    if-eqz v0, :cond_10

    .line 395
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 396
    return-void

    .line 392
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find wrapper for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seems like it is not bound by this adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method removeAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)Z"
        }
    .end annotation

    .line 181
    .local p1, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;, "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->indexOfWrapper(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)I

    move-result v0

    .line 182
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 183
    const/4 v1, 0x0

    return v1

    .line 185
    :cond_9
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;

    .line 186
    .local v1, "wrapper":Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;
    invoke-direct {p0, v1}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->countItemsBefore(Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v2

    .line 187
    .local v2, "offset":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mWrappers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mConcatAdapter:Ltds/androidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->getCachedItemCount()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ltds/androidx/recyclerview/widget/ConcatAdapter;->notifyItemRangeRemoved(II)V

    .line 190
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->mAttachedRecyclerViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 191
    .local v4, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 192
    .local v5, "recyclerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    if-eqz v5, :cond_40

    .line 193
    invoke-virtual {p1, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 195
    .end local v4    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ltds/androidx/recyclerview/widget/RecyclerView;>;"
    .end local v5    # "recyclerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_40
    goto :goto_29

    .line 196
    :cond_41
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/NestedAdapterWrapper;->dispose()V

    .line 197
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ConcatAdapterController;->calculateAndUpdateStateRestorationPolicy()V

    .line 198
    const/4 v3, 0x1

    return v3
.end method
