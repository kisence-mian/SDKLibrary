.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/collection/CircularIntArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2b

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_23

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 71
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .local v0, "arrayCapacity":I
    goto :goto_1a

    .line 73
    .end local v0    # "arrayCapacity":I
    :cond_19
    move v0, p1

    .line 76
    .restart local v0    # "arrayCapacity":I
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 78
    return-void

    .line 64
    .end local v0    # "arrayCapacity":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleCapacity()V
    .registers 8

    .line 31
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    array-length v1, v0

    .line 32
    .local v1, "n":I
    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    sub-int v3, v1, v2

    .line 33
    .local v3, "r":I
    shl-int/lit8 v4, v1, 0x1

    .line 34
    .local v4, "newCapacity":I
    if-ltz v4, :cond_23

    .line 37
    new-array v5, v4, [I

    .line 38
    .local v5, "a":[I
    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v5, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 41
    iput v6, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 42
    iput v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 43
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 44
    return-void

    .line 35
    .end local v5    # "a":[I
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Max array capacity exceeded"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFirst(I)V
    .registers 4
    .param p1, "e"    # I

    .line 85
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 86
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    aput p1, v1, v0

    .line 87
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_14

    .line 88
    invoke-direct {p0}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    .line 90
    :cond_14
    return-void
.end method

.method public addLast(I)V
    .registers 4
    .param p1, "e"    # I

    .line 97
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    aput p1, v0, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 99
    iget v1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    if-ne v0, v1, :cond_14

    .line 100
    invoke-direct {p0}, Landroidx/collection/CircularIntArray;->doubleCapacity()V

    .line 102
    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    .line 133
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 134
    return-void
.end method

.method public get(I)I
    .registers 5
    .param p1, "n"    # I

    .line 197
    if-ltz p1, :cond_13

    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 198
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 197
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()I
    .registers 3

    .line 176
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_b

    .line 177
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    aget v0, v1, v0

    return v0

    .line 176
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()I
    .registers 4

    .line 186
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_10

    .line 187
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 186
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 214
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public popFirst()I
    .registers 4

    .line 110
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_12

    .line 111
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    aget v1, v1, v0

    .line 112
    .local v1, "result":I
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v2

    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 113
    return v1

    .line 110
    .end local v1    # "result":I
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public popLast()I
    .registers 3

    .line 122
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_12

    .line 123
    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    .line 124
    .local v0, "t":I
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    aget v1, v1, v0

    .line 125
    .local v1, "result":I
    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 126
    return v1

    .line 122
    .end local v0    # "t":I
    .end local v1    # "result":I
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromEnd(I)V
    .registers 4
    .param p1, "numOfElements"    # I

    .line 161
    if-gtz p1, :cond_3

    .line 162
    return-void

    .line 164
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 167
    iget v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 168
    return-void

    .line 165
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromStart(I)V
    .registers 4
    .param p1, "numOfElements"    # I

    .line 144
    if-gtz p1, :cond_3

    .line 145
    return-void

    .line 147
    :cond_3
    invoke-virtual {p0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 150
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 151
    return-void

    .line 148
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 3

    .line 206
    iget v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
