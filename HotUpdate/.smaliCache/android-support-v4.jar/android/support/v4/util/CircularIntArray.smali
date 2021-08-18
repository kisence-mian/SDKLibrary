.class public final Landroid/support/v4/util/CircularIntArray;
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

    .line 48
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/support/v4/util/CircularIntArray;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2b

    .line 61
    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_23

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 69
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .local v0, "arrayCapacity":I
    goto :goto_1a

    .line 71
    .end local v0    # "arrayCapacity":I
    :cond_19
    move v0, p1

    .line 74
    .restart local v0    # "arrayCapacity":I
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 75
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 76
    return-void

    .line 62
    .end local v0    # "arrayCapacity":I
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be <= 2^30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doubleCapacity()V
    .registers 8

    .line 29
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    array-length v1, v0

    .line 30
    .local v1, "n":I
    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int v3, v1, v2

    .line 31
    .local v3, "r":I
    shl-int/lit8 v4, v1, 0x1

    .line 32
    .local v4, "newCapacity":I
    if-ltz v4, :cond_23

    .line 35
    new-array v5, v4, [I

    .line 36
    .local v5, "a":[I
    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v5, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 39
    iput v6, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 40
    iput v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 41
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 42
    return-void

    .line 33
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

    .line 83
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 84
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aput p1, v1, v0

    .line 85
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_14

    .line 86
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 88
    :cond_14
    return-void
.end method

.method public addLast(I)V
    .registers 4
    .param p1, "e"    # I

    .line 95
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    aput p1, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 97
    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    if-ne v0, v1, :cond_14

    .line 98
    invoke-direct {p0}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 100
    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    .line 131
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 132
    return-void
.end method

.method public get(I)I
    .registers 5
    .param p1, "n"    # I

    .line 195
    if-ltz p1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 196
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 195
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()I
    .registers 3

    .line 174
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_b

    .line 175
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aget v0, v1, v0

    return v0

    .line 174
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLast()I
    .registers 4

    .line 184
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_10

    .line 185
    iget-object v0, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 184
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 212
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

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

    .line 108
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_12

    .line 109
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aget v1, v1, v0

    .line 110
    .local v1, "result":I
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v2

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 111
    return v1

    .line 108
    .end local v1    # "result":I
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public popLast()I
    .registers 3

    .line 120
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-eq v0, v1, :cond_12

    .line 121
    add-int/lit8 v1, v1, -0x1

    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    .line 122
    .local v0, "t":I
    iget-object v1, p0, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    aget v1, v1, v0

    .line 123
    .local v1, "result":I
    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 124
    return v1

    .line 120
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

    .line 159
    if-gtz p1, :cond_3

    .line 160
    return-void

    .line 162
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 165
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 166
    return-void

    .line 163
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeFromStart(I)V
    .registers 4
    .param p1, "numOfElements"    # I

    .line 142
    if-gtz p1, :cond_3

    .line 143
    return-void

    .line 145
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 148
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 149
    return-void

    .line 146
    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 3

    .line 204
    iget v0, p0, Landroid/support/v4/util/CircularIntArray;->mTail:I

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method
