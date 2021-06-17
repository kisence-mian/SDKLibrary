.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/collection/CircularArray;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 58
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2d

    .line 62
    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_25

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 70
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .local v0, "arrayCapacity":I
    goto :goto_1a

    .line 72
    .end local v0    # "arrayCapacity":I
    :cond_19
    move v0, p1

    .line 75
    .restart local v0    # "arrayCapacity":I
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 76
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 77
    return-void

    .line 63
    .end local v0    # "arrayCapacity":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleCapacity()V
    .registers 8

    .line 30
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v1, v0

    .line 31
    .local v1, "n":I
    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v3, v1, v2

    .line 32
    .local v3, "r":I
    shl-int/lit8 v4, v1, 0x1

    .line 33
    .local v4, "newCapacity":I
    if-ltz v4, :cond_26

    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    .line 37
    .local v5, "a":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/CircularArray;->mHead:I

    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    .line 40
    iput v6, p0, Landroidx/collection/CircularArray;->mHead:I

    .line 41
    iput v1, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 42
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 43
    return-void

    .line 34
    .end local v5    # "a":[Ljava/lang/Object;
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Max array capacity exceeded"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    .line 85
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 86
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, v1, :cond_14

    .line 87
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 89
    :cond_14
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    aput-object p1, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 98
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    if-ne v0, v1, :cond_14

    .line 99
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 101
    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    .line 138
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 139
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 240
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    if-ltz p1, :cond_13

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 243
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 241
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_b

    .line 218
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    .line 216
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_10

    .line 230
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 228
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 259
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public popFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 109
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_15

    .line 112
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 113
    .local v2, "result":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->mHead:I

    .line 115
    return-object v2

    .line 110
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public popLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 124
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v0, v1, :cond_15

    .line 127
    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    .line 128
    .local v0, "t":I
    iget-object v1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 129
    .local v2, "result":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 130
    iput v0, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 131
    return-object v2

    .line 125
    .end local v0    # "t":I
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromEnd(I)V
    .registers 8
    .param p1, "numOfElements"    # I

    .line 182
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    if-gtz p1, :cond_3

    .line 183
    return-void

    .line 185
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_3a

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "start":I
    iget v1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v1, :cond_10

    .line 190
    sub-int v0, v1, p1

    .line 192
    :cond_10
    move v1, v0

    .local v1, "i":I
    :goto_11
    iget v2, p0, Landroidx/collection/CircularArray;->mTail:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1d

    .line 193
    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 195
    .end local v1    # "i":I
    :cond_1d
    sub-int v1, v2, v0

    .line 196
    .local v1, "removed":I
    sub-int/2addr p1, v1

    .line 197
    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 198
    if-lez p1, :cond_39

    .line 200
    iget-object v2, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v2, v2

    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 201
    sub-int/2addr v2, p1

    .line 202
    .local v2, "newTail":I
    move v4, v2

    .local v4, "i":I
    :goto_2c
    iget v5, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge v4, v5, :cond_37

    .line 203
    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 205
    .end local v4    # "i":I
    :cond_37
    iput v2, p0, Landroidx/collection/CircularArray;->mTail:I

    .line 207
    .end local v2    # "newTail":I
    :cond_39
    return-void

    .line 186
    .end local v0    # "start":I
    .end local v1    # "removed":I
    :cond_3a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public removeFromStart(I)V
    .registers 7
    .param p1, "numOfElements"    # I

    .line 149
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    if-gtz p1, :cond_3

    .line 150
    return-void

    .line 152
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_3a

    .line 155
    iget-object v0, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v0, v0

    .line 156
    .local v0, "end":I
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v2, v0, v1

    if-ge p1, v2, :cond_14

    .line 157
    add-int v0, v1, p1

    .line 159
    :cond_14
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    .local v1, "i":I
    :goto_16
    const/4 v2, 0x0

    if-ge v1, v0, :cond_20

    .line 160
    iget-object v3, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 162
    .end local v1    # "i":I
    :cond_20
    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v3, v0, v1

    .line 163
    .local v3, "removed":I
    sub-int/2addr p1, v3

    .line 164
    add-int/2addr v1, v3

    iget v4, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v4

    iput v1, p0, Landroidx/collection/CircularArray;->mHead:I

    .line 165
    if-lez p1, :cond_39

    .line 167
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2e
    if-ge v1, p1, :cond_37

    .line 168
    iget-object v4, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 170
    .end local v1    # "i":I
    :cond_37
    iput p1, p0, Landroidx/collection/CircularArray;->mHead:I

    .line 172
    :cond_39
    return-void

    .line 153
    .end local v0    # "end":I
    .end local v3    # "removed":I
    :cond_3a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public size()I
    .registers 3

    .line 251
    .local p0, "this":Landroidx/collection/CircularArray;, "Landroidx/collection/CircularArray<TE;>;"
    iget v0, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v1, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
