.class Ltds/androidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;,
        Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/collection/SimpleArrayMap<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/collection/LongSparseArray<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ltds/androidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Ltds/androidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    .line 48
    new-instance v0, Ltds/androidx/collection/LongSparseArray;

    invoke-direct {v0}, Ltds/androidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 7
    .param p1, "vh"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .line 102
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 103
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 104
    return-object v1

    .line 106
    :cond_a
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Ltds/androidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 107
    .local v2, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-eqz v2, :cond_42

    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_42

    .line 108
    iget v1, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    not-int v3, p2

    and-int/2addr v1, v3

    iput v1, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 110
    const/4 v1, 0x4

    if-ne p2, v1, :cond_25

    .line 111
    iget-object v1, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .local v1, "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_2b

    .line 112
    .end local v1    # "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_25
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3a

    .line 113
    iget-object v1, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 118
    .restart local v1    # "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_2b
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_39

    .line 119
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v0}, Ltds/androidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 120
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 122
    :cond_39
    return-object v1

    .line 115
    .end local v1    # "info":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must provide flag PRE or POST"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_42
    return-object v1
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 146
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 147
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 148
    invoke-static {}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 149
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_13
    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 152
    iput-object p2, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 153
    return-void
.end method

.method addToDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 199
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 200
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 201
    invoke-static {}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 202
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_13
    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 205
    return-void
.end method

.method addToOldChangeHolders(JLtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "key"    # J
    .param p3, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 133
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 134
    return-void
.end method

.method addToPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 183
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 184
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 185
    invoke-static {}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 186
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_13
    iput-object p2, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 189
    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 190
    return-void
.end method

.method addToPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 65
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 66
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_13

    .line 67
    invoke-static {}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 68
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Ltds/androidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_13
    iput-object p2, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 71
    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 72
    return-void
.end method

.method clear()V
    .registers 2

    .line 55
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Ltds/androidx/collection/SimpleArrayMap;->clear()V

    .line 56
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ltds/androidx/collection/LongSparseArray;->clear()V

    .line 57
    return-void
.end method

.method getFromOldChangeHolders(J)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "key"    # J

    .line 174
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 75
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 76
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget v2, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method isInPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 162
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 163
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_12

    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method onDetach()V
    .registers 1

    .line 274
    invoke-static {}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 275
    return-void
.end method

.method public onViewDetached(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 278
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 279
    return-void
.end method

.method popFromPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 98
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .param p1, "vh"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 87
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V
    .registers 7
    .param p1, "callback"    # Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    .line 220
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Ltds/androidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_8
    if-ltz v0, :cond_7b

    .line 221
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Ltds/androidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 222
    .local v1, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0}, Ltds/androidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 223
    .local v2, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_24

    .line 225
    invoke-interface {p1, v1}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 226
    :cond_24
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3a

    .line 228
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_32

    .line 231
    invoke-interface {p1, v1}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 233
    :cond_32
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 235
    :cond_3a
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_49

    .line 237
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 238
    :cond_49
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_58

    .line 240
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processPersistent(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 241
    :cond_58
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_65

    .line 243
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 244
    :cond_65
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_73

    .line 246
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 247
    :cond_73
    iget v3, v2, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 252
    :goto_75
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 220
    .end local v1    # "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v2    # "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 254
    .end local v0    # "index":I
    :cond_7b
    return-void
.end method

.method removeFromDisappearedInLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 212
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 213
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_b

    .line 214
    return-void

    .line 216
    :cond_b
    iget v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 217
    return-void
.end method

.method removeViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 261
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v0}, Ltds/androidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1b

    .line 262
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Ltds/androidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 263
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Ltds/androidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Ltds/androidx/collection/LongSparseArray;->removeAt(I)V

    .line 264
    goto :goto_1b

    .line 261
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 267
    .end local v0    # "i":I
    :cond_1b
    :goto_1b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Ltds/androidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Ltds/androidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 268
    .local v0, "info":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_28

    .line 269
    invoke-static {v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    .line 271
    :cond_28
    return-void
.end method
