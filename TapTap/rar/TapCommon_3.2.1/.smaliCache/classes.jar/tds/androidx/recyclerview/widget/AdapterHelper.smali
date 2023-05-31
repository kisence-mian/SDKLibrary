.class final Ltds/androidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;,
        Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Ltds/androidx/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Ltds/androidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/core/util/Pools$Pool<",
            "Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;)V
    .registers 3
    .param p1, "callback"    # Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;-><init>(Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .registers 5
    .param p1, "callback"    # Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;
    .param p2, "disableRecycler"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ltds/androidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ltds/androidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ltds/androidx/core/util/Pools$Pool;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 76
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    .line 77
    iput-boolean p2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    .line 78
    new-instance v0, Ltds/androidx/recyclerview/widget/OpReorderer;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/OpReorderer;-><init>(Ltds/androidx/recyclerview/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ltds/androidx/recyclerview/widget/OpReorderer;

    .line 79
    return-void
.end method

.method private applyAdd(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 432
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 433
    return-void
.end method

.method private applyMove(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 2
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 130
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 131
    return-void
.end method

.method private applyRemove(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 134
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 135
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 136
    .local v1, "tmpCount":I
    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 137
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 138
    .local v3, "type":I
    iget v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_b
    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ge v4, v2, :cond_41

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "typeChanged":Z
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v8, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 141
    .local v8, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v9, 0x1

    if-nez v8, :cond_2c

    invoke-direct {p0, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v10

    if-eqz v10, :cond_20

    goto :goto_2c

    .line 159
    :cond_20
    if-ne v3, v9, :cond_2a

    .line 162
    invoke-virtual {p0, v6, v0, v1, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 163
    .local v5, "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 164
    const/4 v7, 0x1

    .line 166
    .end local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_37

    .line 148
    :cond_2c
    :goto_2c
    if-nez v3, :cond_36

    .line 151
    invoke-virtual {p0, v6, v0, v1, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 152
    .restart local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 153
    const/4 v7, 0x1

    .line 155
    .end local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_36
    const/4 v3, 0x1

    .line 168
    :goto_37
    if-eqz v7, :cond_3d

    .line 169
    sub-int/2addr v4, v1

    .line 170
    sub-int/2addr v2, v1

    .line 171
    const/4 v1, 0x1

    goto :goto_3f

    .line 173
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 138
    .end local v7    # "typeChanged":Z
    .end local v8    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_3f
    add-int/2addr v4, v9

    goto :goto_b

    .line 176
    .end local v4    # "position":I
    :cond_41
    iget v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_4c

    .line 177
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 178
    invoke-virtual {p0, v6, v0, v1, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 180
    :cond_4c
    if-nez v3, :cond_52

    .line 181
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_55

    .line 183
    :cond_52
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 185
    :goto_55
    return-void
.end method

.method private applyUpdate(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 11
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 188
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 189
    .local v0, "tmpStart":I
    const/4 v1, 0x0

    .line 190
    .local v1, "tmpCount":I
    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    .line 191
    .local v2, "tmpEnd":I
    const/4 v3, -0x1

    .line 192
    .local v3, "type":I
    iget v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "position":I
    :goto_b
    const/4 v5, 0x4

    if-ge v4, v2, :cond_40

    .line 193
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v6, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 194
    .local v6, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v7, 0x1

    if-nez v6, :cond_2d

    invoke-direct {p0, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_2d

    .line 204
    :cond_1e
    if-ne v3, v7, :cond_2b

    .line 205
    iget-object v8, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 207
    .local v5, "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 208
    const/4 v1, 0x0

    .line 209
    move v0, v4

    .line 211
    .end local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_2b
    const/4 v3, 0x0

    goto :goto_3b

    .line 195
    :cond_2d
    :goto_2d
    if-nez v3, :cond_3a

    .line 196
    iget-object v8, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v1, v8}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 198
    .restart local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-direct {p0, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 199
    const/4 v1, 0x0

    .line 200
    move v0, v4

    .line 202
    .end local v5    # "newOp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_3a
    const/4 v3, 0x1

    .line 213
    :goto_3b
    nop

    .end local v6    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/2addr v1, v7

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 215
    .end local v4    # "position":I
    :cond_40
    iget v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v1, v4, :cond_4d

    .line 216
    iget-object v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 217
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 218
    invoke-virtual {p0, v5, v0, v1, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 220
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_4d
    if-nez v3, :cond_53

    .line 221
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_56

    .line 223
    :cond_53
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 225
    :goto_56
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .registers 9
    .param p1, "position"    # I

    .line 411
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3f

    .line 413
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 414
    .local v2, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_23

    .line 415
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v3, v4}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_3c

    .line 416
    return v5

    .line 418
    :cond_23
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v3, v5, :cond_3c

    .line 420
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 421
    .local v3, "end":I
    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .local v4, "pos":I
    :goto_2e
    if-ge v4, v3, :cond_3c

    .line 422
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v4, v6}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_39

    .line 423
    return v5

    .line 421
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 412
    .end local v2    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .end local v3    # "end":I
    .end local v4    # "pos":I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 428
    .end local v1    # "i":I
    :cond_3f
    const/4 v1, 0x0

    return v1
.end method

.method private dispatchAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 231
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8d

    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8d

    .line 245
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 249
    .local v0, "tmpStart":I
    const/4 v2, 0x1

    .line 250
    .local v2, "tmpCnt":I
    iget v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 252
    .local v3, "offsetPositionForPartial":I
    iget v4, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_96

    .line 260
    :pswitch_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op should be remove or update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :pswitch_34
    const/4 v4, 0x1

    .line 255
    .local v4, "positionMultiplier":I
    goto :goto_38

    .line 257
    .end local v4    # "positionMultiplier":I
    :pswitch_36
    const/4 v4, 0x0

    .line 258
    .restart local v4    # "positionMultiplier":I
    nop

    .line 262
    :goto_38
    const/4 v5, 0x1

    .local v5, "p":I
    :goto_39
    iget v6, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v5, v6, :cond_79

    .line 263
    iget v6, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    .line 264
    .local v6, "pos":I
    iget v7, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v6, v7}, Ltds/androidx/recyclerview/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 268
    .local v7, "updatedPos":I
    const/4 v8, 0x0

    .line 269
    .local v8, "continuous":Z
    iget v9, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_a0

    :pswitch_4f
    goto :goto_5b

    .line 271
    :pswitch_50
    add-int/lit8 v9, v0, 0x1

    if-ne v7, v9, :cond_55

    move v10, v1

    :cond_55
    move v8, v10

    .line 272
    goto :goto_5b

    .line 274
    :pswitch_57
    if-ne v7, v0, :cond_5a

    move v10, v1

    :cond_5a
    move v8, v10

    .line 277
    :goto_5b
    if-eqz v8, :cond_60

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 281
    :cond_60
    iget v9, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v10, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v2, v10}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v9

    .line 285
    .local v9, "tmp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v9, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 286
    invoke-virtual {p0, v9}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 287
    iget v10, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_74

    .line 288
    add-int/2addr v3, v2

    .line 290
    :cond_74
    move v0, v7

    .line 291
    const/4 v2, 0x1

    .line 262
    .end local v6    # "pos":I
    .end local v7    # "updatedPos":I
    .end local v8    # "continuous":Z
    .end local v9    # "tmp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 294
    .end local v5    # "p":I
    :cond_79
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 295
    .local v1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 296
    if-lez v2, :cond_8c

    .line 297
    iget v5, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v5, v0, v2, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 301
    .local v5, "tmp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-virtual {p0, v5, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 302
    invoke-virtual {p0, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 312
    .end local v5    # "tmp":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_8c
    return-void

    .line 232
    .end local v0    # "tmpStart":I
    .end local v1    # "payload":Ljava/lang/Object;
    .end local v2    # "tmpCnt":I
    .end local v3    # "offsetPositionForPartial":I
    .end local v4    # "positionMultiplier":I
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_36
        :pswitch_1b
        :pswitch_34
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_57
        :pswitch_4f
        :pswitch_50
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 6
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 439
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_4e

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :sswitch_23
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 446
    goto :goto_4d

    .line 452
    :sswitch_2d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 453
    goto :goto_4d

    .line 448
    :sswitch_39
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 450
    goto :goto_4d

    .line 442
    :sswitch_43
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 443
    nop

    .line 457
    :goto_4d
    return-void

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_39
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_23
    .end sparse-switch
.end method

.method private updatePositionWithPostponed(II)I
    .registers 11
    .param p1, "pos"    # I
    .param p2, "cmd"    # I

    .line 330
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ltz v1, :cond_9a

    .line 332
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 333
    .local v4, "postponed":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v5, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v6, 0x2

    if-ne v5, v2, :cond_73

    .line 335
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v5, :cond_25

    .line 336
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 337
    .local v2, "start":I
    iget v5, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .local v5, "end":I
    goto :goto_29

    .line 339
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_25
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 340
    .restart local v2    # "start":I
    iget v5, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 342
    .restart local v5    # "end":I
    :goto_29
    if-lt p1, v2, :cond_55

    if-gt p1, v5, :cond_55

    .line 344
    iget v7, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v7, :cond_43

    .line 345
    if-ne p2, v3, :cond_39

    .line 346
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_40

    .line 347
    :cond_39
    if-ne p2, v6, :cond_40

    .line 348
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 351
    :cond_40
    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_72

    .line 353
    :cond_43
    if-ne p2, v3, :cond_4b

    .line 354
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_52

    .line 355
    :cond_4b
    if-ne p2, v6, :cond_52

    .line 356
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 359
    :cond_52
    :goto_52
    add-int/lit8 p1, p1, -0x1

    goto :goto_72

    .line 361
    :cond_55
    iget v7, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v7, :cond_72

    .line 363
    if-ne p2, v3, :cond_66

    .line 364
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 365
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_72

    .line 366
    :cond_66
    if-ne p2, v6, :cond_72

    .line 367
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 368
    iget v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v6, v3

    iput v6, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 371
    .end local v2    # "start":I
    .end local v5    # "end":I
    :cond_72
    :goto_72
    goto :goto_96

    .line 372
    :cond_73
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_87

    .line 373
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v3, :cond_7f

    .line 374
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_96

    .line 375
    :cond_7f
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_96

    .line 376
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_96

    .line 379
    :cond_87
    if-ne p2, v3, :cond_8f

    .line 380
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v3

    iput v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_96

    .line 381
    :cond_8f
    if-ne p2, v6, :cond_96

    .line 382
    iget v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    iput v2, v4, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 331
    .end local v4    # "postponed":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_96
    :goto_96
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8

    .line 395
    .end local v1    # "i":I
    :cond_9a
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .restart local v1    # "i":I
    :goto_a1
    if-ltz v1, :cond_d1

    .line 396
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 397
    .local v3, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v4, v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v2, :cond_c2

    .line 398
    iget v4, v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v4, v5, :cond_b9

    iget v4, v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v4, :cond_ce

    .line 399
    :cond_b9
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_ce

    .line 402
    :cond_c2
    iget v4, v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v4, :cond_ce

    .line 403
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 395
    .end local v3    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_ce
    :goto_ce
    add-int/lit8 v1, v1, -0x1

    goto :goto_a1

    .line 407
    .end local v1    # "i":I
    :cond_d1
    return p1
.end method


# virtual methods
.method varargs addUpdateOp([Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)Ltds/androidx/recyclerview/widget/AdapterHelper;
    .registers 3
    .param p1, "ops"    # [Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 82
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public applyPendingUpdatesToPosition(I)I
    .registers 7
    .param p1, "position"    # I

    .line 588
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 589
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_46

    .line 590
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 591
    .local v2, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_48

    goto :goto_43

    .line 607
    :sswitch_17
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1e

    .line 608
    iget p1, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_43

    .line 610
    :cond_1e
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_24

    .line 611
    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_24
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_43

    .line 614
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 598
    :sswitch_2b
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 599
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 600
    .local v3, "end":I
    if-le v3, p1, :cond_38

    .line 601
    const/4 v4, -0x1

    return v4

    .line 603
    :cond_38
    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v4

    .line 604
    .end local v3    # "end":I
    goto :goto_43

    .line 593
    :sswitch_3c
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 594
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 589
    .end local v2    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 620
    .end local v1    # "i":I
    :cond_46
    return p1

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_2b
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .registers 5

    .line 119
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 121
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-interface {v2, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 123
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 125
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .registers 8

    .line 557
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 558
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_62

    .line 560
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 561
    .local v2, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_6c

    goto :goto_58

    .line 575
    :sswitch_1a
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 576
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_58

    .line 571
    :sswitch_29
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 572
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v6, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 573
    goto :goto_58

    .line 567
    :sswitch_3a
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 568
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 569
    goto :goto_58

    .line 563
    :sswitch_49
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v3, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 564
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v3, v4, v5}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 565
    nop

    .line 579
    :goto_58
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_5f

    .line 580
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 559
    .end local v2    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 583
    .end local v1    # "i":I
    :cond_62
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 584
    const/4 v1, 0x0

    iput v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 585
    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_49
        0x2 -> :sswitch_3a
        0x4 -> :sswitch_29
        0x8 -> :sswitch_1a
    .end sparse-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .registers 6
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .param p2, "offsetStart"    # I

    .line 315
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 316
    iget v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_26

    .line 324
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_12
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 322
    goto :goto_24

    .line 318
    :pswitch_1c
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mCallback:Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 319
    nop

    .line 327
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .registers 3
    .param p1, "position"    # I

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .registers 8
    .param p1, "position"    # I
    .param p2, "firstPostponedItem"    # I

    .line 472
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 473
    .local v0, "count":I
    move v1, p2

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_4c

    .line 474
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 475
    .local v2, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2b

    .line 476
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1e

    .line 477
    iget p1, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_49

    .line 479
    :cond_1e
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_24

    .line 480
    add-int/lit8 p1, p1, -0x1

    .line 482
    :cond_24
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v3, p1, :cond_49

    .line 483
    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    .line 486
    :cond_2b
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_49

    .line 487
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 488
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3d

    .line 489
    const/4 v3, -0x1

    return v3

    .line 491
    :cond_3d
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v3

    goto :goto_49

    .line 492
    :cond_41
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 493
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v3

    .line 473
    .end local v2    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 497
    .end local v1    # "i":I
    :cond_4c
    return p1
.end method

.method hasAnyUpdateTypes(I)Z
    .registers 3
    .param p1, "updateTypes"    # I

    .line 464
    iget v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method hasPendingUpdates()Z
    .registers 2

    .line 460
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasUpdates()Z
    .registers 2

    .line 624
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .registers 7
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0}, Ltds/androidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 728
    .local v0, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    if-nez v0, :cond_11

    .line 729
    new-instance v1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-direct {v1, p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_19

    .line 731
    :cond_11
    iput p1, v0, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 732
    iput p2, v0, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 733
    iput p3, v0, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 734
    iput-object p4, v0, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 736
    :goto_19
    return-object v0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 9
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 504
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 505
    return v0

    .line 507
    :cond_5
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v3

    iput v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 509
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method onItemRangeInserted(II)Z
    .registers 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 517
    return v0

    .line 519
    :cond_5
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v1

    iput v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 521
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method onItemRangeMoved(III)Z
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "itemCount"    # I

    .line 540
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 541
    return v0

    .line 543
    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_22

    .line 546
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, p1, p2, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 548
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_21

    move v0, v1

    :cond_21
    return v0

    .line 544
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Moving more than 1 item is not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onItemRangeRemoved(II)Z
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 528
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 529
    return v0

    .line 531
    :cond_5
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Ltds/androidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr v2, v4

    iput v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 533
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move v0, v1

    :cond_1e
    return v0
.end method

.method preProcess()V
    .registers 5

    .line 93
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Ltds/androidx/recyclerview/widget/OpReorderer;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_38

    .line 96
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 97
    .local v2, "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_3e

    goto :goto_2e

    .line 108
    :sswitch_1e
    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->applyMove(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2e

    .line 105
    :sswitch_22
    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->applyUpdate(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 106
    goto :goto_2e

    .line 102
    :sswitch_26
    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->applyRemove(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 103
    goto :goto_2e

    .line 99
    :sswitch_2a
    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->applyAdd(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 100
    nop

    .line 111
    :goto_2e
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_35

    .line 112
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 95
    .end local v2    # "op":Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 115
    .end local v1    # "i":I
    :cond_38
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    return-void

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_26
        0x4 -> :sswitch_22
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 3
    .param p1, "op"    # Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 741
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    .line 742
    const/4 v0, 0x0

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Ltds/androidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 745
    :cond_c
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 748
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 749
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Ltds/androidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 752
    .end local v1    # "i":I
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 753
    return-void
.end method

.method reset()V
    .registers 2

    .line 87
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 90
    return-void
.end method
