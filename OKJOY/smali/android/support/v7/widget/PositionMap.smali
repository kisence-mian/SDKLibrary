.class Landroid/support/v7/widget/PositionMap;
.super Ljava/lang/Object;
.source "PositionMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v7/widget/PositionMap;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 48
    if-nez p1, :cond_13

    .line 49
    sget-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 50
    sget-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 56
    :goto_10
    iput v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 57
    return-void

    .line 52
    :cond_13
    invoke-static {p1}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result p1

    .line 53
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 54
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 151
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 152
    .local v2, "n":I
    const/4 v3, 0x0

    .line 153
    .local v3, "o":I
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 154
    .local v1, "keys":[I
    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 156
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 157
    aget-object v4, v5, v0

    .line 159
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1d

    .line 160
    if-eq v0, v3, :cond_1b

    .line 161
    aget v6, v1, v0

    aput v6, v1, v3

    .line 162
    aput-object v4, v5, v3

    .line 163
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 166
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 156
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 170
    .end local v4    # "val":Ljava/lang/Object;
    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 171
    iput v3, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 174
    return-void
.end method

.method static idealBooleanArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 406
    invoke-static {p0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method static idealByteArraySize(I)I
    .registers 4
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 398
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 399
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 400
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 402
    .end local p0    # "need":I
    :cond_10
    return p0

    .line 398
    .restart local p0    # "need":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static idealCharArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 414
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static idealFloatArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 422
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealIntArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 418
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealLongArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 430
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static idealObjectArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 426
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static idealShortArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 410
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 10
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 335
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v5, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_13

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/PositionMap;->put(ILjava/lang/Object;)V

    .line 362
    :goto_12
    return-void

    .line 340
    :cond_13
    iget-boolean v4, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v4, :cond_21

    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_21

    .line 341
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 344
    :cond_21
    iget v3, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 345
    .local v3, "pos":I
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_46

    .line 346
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v0

    .line 348
    .local v0, "n":I
    new-array v1, v0, [I

    .line 349
    .local v1, "nkeys":[I
    new-array v2, v0, [Ljava/lang/Object;

    .line 352
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 356
    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 359
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_46
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v4, v3

    .line 360
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 361
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v4, 0x0

    .line 319
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 320
    .local v1, "n":I
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 322
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_e

    .line 323
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 326
    :cond_e
    iput v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    .line 327
    iput-boolean v4, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 328
    return-void
.end method

.method public clone()Landroid/support/v7/widget/PositionMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/PositionMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "clone":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/PositionMap;

    move-object v1, v0

    .line 65
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 66
    iget-object v2, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 70
    :goto_1d
    return-object v1

    .line 67
    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->clone()Landroid/support/v7/widget/PositionMap;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 100
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 102
    .local v0, "i":I
    if-ltz v0, :cond_1b

    .line 103
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    .line 104
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 108
    :cond_1b
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/PositionMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 89
    .local v0, "i":I
    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    .line 92
    .end local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_12
    :goto_12
    return-object p2

    .restart local p2    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_13
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_12
.end method

.method public indexOfKey(I)I
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 286
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 287
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 290
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v1, :cond_7

    .line 305
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 308
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v1, :cond_16

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    .line 312
    .end local v0    # "i":I
    :goto_12
    return v0

    .line 308
    .restart local v0    # "i":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 312
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public insertKeyRange(II)V
    .registers 3
    .param p1, "keyStart"    # I
    .param p2, "count"    # I

    .prologue
    .line 142
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    return-void
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 246
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 247
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 250
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 11
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 182
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v5, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v0

    .line 184
    .local v0, "i":I
    if-ltz v0, :cond_10

    .line 185
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 226
    :goto_f
    return-void

    .line 187
    :cond_10
    xor-int/lit8 v0, v0, -0x1

    .line 189
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v0, v4, :cond_27

    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_27

    .line 190
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v4, v0

    .line 191
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_f

    .line 195
    :cond_27
    iget-boolean v4, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v4, :cond_3f

    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3f

    .line 196
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 199
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget v5, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    invoke-static {v4, v5, p1}, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->binarySearch([III)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 202
    :cond_3f
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_66

    .line 203
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v7/widget/PositionMap;->idealIntArraySize(I)I

    move-result v1

    .line 205
    .local v1, "n":I
    new-array v2, v1, [I

    .line 206
    .local v2, "nkeys":[I
    new-array v3, v1, [Ljava/lang/Object;

    .line 209
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v2, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    .line 213
    iput-object v3, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    .line 216
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_66
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_83

    .line 218
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_83
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mKeys:[I

    aput p1, v4, v0

    .line 223
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 224
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    goto/16 :goto_f
.end method

.method public remove(I)V
    .registers 2
    .param p1, "key"    # I

    .prologue
    .line 114
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/PositionMap;->delete(I)V

    .line 115
    return-void
.end method

.method public removeAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 121
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v7/widget/PositionMap;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    .line 125
    :cond_11
    return-void
.end method

.method public removeAtRange(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 134
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget v2, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_11

    .line 136
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->removeAt(I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 138
    :cond_11
    return-void
.end method

.method public removeKeyRange(Ljava/util/ArrayList;II)V
    .registers 4
    .param p2, "keyStart"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p1, "removedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 274
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 277
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 278
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 233
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 234
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 237
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 373
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 374
    const-string v4, "{}"

    .line 394
    :goto_8
    return-object v4

    .line 377
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v4, p0, Landroid/support/v7/widget/PositionMap;->mSize:I

    if-ge v1, v4, :cond_41

    .line 380
    if-lez v1, :cond_23

    .line 381
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->keyAt(I)I

    move-result v2

    .line 384
    .local v2, "key":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/PositionMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 387
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3b

    .line 388
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 390
    :cond_3b
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 393
    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_41
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Landroid/support/v7/widget/PositionMap;, "Landroid/support/v7/widget/PositionMap<TE;>;"
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 261
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->gc()V

    .line 264
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
