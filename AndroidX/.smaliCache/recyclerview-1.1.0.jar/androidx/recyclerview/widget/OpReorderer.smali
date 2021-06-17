.class Landroidx/recyclerview/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroidx/recyclerview/widget/OpReorderer$Callback;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    .line 27
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 213
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1c

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 216
    .local v2, "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    .line 217
    if-eqz v0, :cond_19

    .line 218
    return v1

    .line 221
    :cond_18
    const/4 v0, 0x1

    .line 214
    .end local v2    # "op1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 224
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 155
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "offset":I
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_9

    .line 158
    add-int/lit8 v0, v0, -0x1

    .line 160
    :cond_9
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_11

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_11
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1e

    .line 164
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 166
    :cond_1e
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2b

    .line 167
    iget v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 169
    :cond_2b
    iget v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 170
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .registers 12
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 39
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 40
    .local v0, "moveOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 41
    .local v7, "nextOp":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v1, v7, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v1, :pswitch_data_32

    :pswitch_12
    goto :goto_31

    .line 49
    :pswitch_13
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    goto :goto_31

    .line 43
    :pswitch_1d
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 44
    goto :goto_31

    .line 46
    :pswitch_27
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 47
    nop

    .line 52
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1d
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    move v1, v0

    .local v1, "badMove":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    .line 34
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 36
    :cond_e
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 58
    .local v0, "extraRm":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 61
    .local v1, "revertedMove":Z
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "moveIsBackwards":Z
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v5, :cond_2d

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    .line 65
    const/4 v1, 0x1

    goto :goto_2d

    .line 68
    .end local v2    # "moveIsBackwards":Z
    :cond_1b
    const/4 v2, 0x1

    .line 69
    .restart local v2    # "moveIsBackwards":Z
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v4

    if-ne v3, v5, :cond_2d

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2d

    .line 71
    const/4 v1, 0x1

    .line 76
    :cond_2d
    :goto_2d
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x2

    if-ge v3, v5, :cond_3a

    .line 77
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    iput v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_59

    .line 78
    :cond_3a
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_59

    .line 80
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 81
    iput v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 82
    iput v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 83
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v3, :cond_58

    .line 84
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 88
    :cond_58
    return-void

    .line 92
    :cond_59
    :goto_59
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v5, :cond_65

    .line 93
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v3, v4

    iput v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_87

    .line 94
    :cond_65
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_87

    .line 95
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v5

    iget v5, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v5

    .line 97
    .local v3, "remaining":I
    iget-object v5, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v7, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v4

    const/4 v4, 0x0

    invoke-interface {v5, v6, v7, v3, v4}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 98
    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 102
    .end local v3    # "remaining":I
    :cond_87
    :goto_87
    if-eqz v1, :cond_95

    .line 103
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {v3, p3}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 106
    return-void

    .line 110
    :cond_95
    if-eqz v2, :cond_ce

    .line 111
    if-eqz v0, :cond_b3

    .line 112
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_a6

    .line 113
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 115
    :cond_a6
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_b3

    .line 116
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 119
    :cond_b3
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_c0

    .line 120
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_c0
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v3, v4, :cond_104

    .line 123
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_104

    .line 126
    :cond_ce
    if-eqz v0, :cond_ea

    .line 127
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_dd

    .line 128
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 130
    :cond_dd
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_ea

    .line 131
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 134
    :cond_ea
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_f7

    .line 135
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_f7
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v3, v4, :cond_104

    .line 138
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v4

    iput v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 142
    :cond_104
    :goto_104
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_111

    .line 144
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    .line 146
    :cond_111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    :goto_114
    if-eqz v0, :cond_119

    .line 149
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    :cond_119
    return-void
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;ILandroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 176
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, "extraUp1":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 179
    .local v1, "extraUp2":Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v2, v3, :cond_10

    .line 180
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v5

    iput v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_28

    .line 181
    :cond_10
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_28

    .line 183
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v5

    iput v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 184
    iget-object v2, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v2, v4, v3, v5, v6}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 187
    :cond_28
    :goto_28
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v3, :cond_34

    .line 188
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v5

    iput v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_55

    .line 189
    :cond_34
    iget v2, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v6

    if-ge v2, v3, :cond_55

    .line 190
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    iget v3, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    .line 192
    .local v2, "remaining":I
    iget-object v3, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    iget v6, p3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v6, v5

    iget-object v5, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v4, v6, v2, v5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    .line 195
    iget v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 197
    .end local v2    # "remaining":I
    :cond_55
    :goto_55
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v2, p5, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v2, :cond_60

    .line 199
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 201
    :cond_60
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Landroidx/recyclerview/widget/OpReorderer;->mCallback:Landroidx/recyclerview/widget/OpReorderer$Callback;

    invoke-interface {v2, p5}, Landroidx/recyclerview/widget/OpReorderer$Callback;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 204
    :goto_68
    if-eqz v0, :cond_6d

    .line 205
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    :cond_6d
    if-eqz v1, :cond_72

    .line 208
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    :cond_72
    return-void
.end method
