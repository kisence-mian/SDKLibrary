.class final Lcom/tds/protobuf/DoubleArrayList;
.super Lcom/tds/protobuf/AbstractProtobufList;
.source "DoubleArrayList.java"

# interfaces
.implements Lcom/tds/protobuf/Internal$DoubleList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/tds/protobuf/Internal$DoubleList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/tds/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/tds/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/tds/protobuf/DoubleArrayList;-><init>()V

    sput-object v0, Lcom/tds/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/tds/protobuf/DoubleArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/tds/protobuf/DoubleArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tds/protobuf/DoubleArrayList;-><init>([DI)V

    .line 73
    return-void
.end method

.method private constructor <init>([DI)V
    .registers 3
    .param p1, "other"    # [D
    .param p2, "size"    # I

    .line 79
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractProtobufList;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    .line 81
    iput p2, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    .line 82
    return-void
.end method

.method private addDouble(ID)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 172
    invoke-virtual {p0}, Lcom/tds/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 173
    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_3e

    .line 177
    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 179
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 182
    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 183
    .local v0, "length":I
    new-array v2, v0, [D

    .line 186
    .local v2, "newArray":[D
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iput-object v2, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    .line 193
    .end local v0    # "length":I
    .end local v2    # "newArray":[D
    :goto_2d
    iget-object v0, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    .line 194
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    .line 195
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    .line 196
    return-void

    .line 174
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/tds/protobuf/DoubleArrayList;
    .registers 1

    .line 54
    sget-object v0, Lcom/tds/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/tds/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 265
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 268
    return-void

    .line 266
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Double;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 157
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 158
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 200
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 202
    if-eqz p1, :cond_45

    .line 207
    instance-of v0, p1, Lcom/tds/protobuf/DoubleArrayList;

    if-nez v0, :cond_e

    .line 208
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 211
    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/DoubleArrayList;

    .line 212
    .local v0, "list":Lcom/tds/protobuf/DoubleArrayList;
    iget v1, v0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 213
    return v2

    .line 216
    :cond_17
    const v3, 0x7fffffff

    iget v4, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v4

    .line 217
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3f

    .line 222
    add-int/2addr v4, v1

    .line 223
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    array-length v5, v1

    if-le v4, v5, :cond_2b

    .line 224
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    .line 227
    :cond_2b
    iget-object v1, v0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    iget-object v5, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    iget v6, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    iget v7, v0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput v4, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    .line 229
    iget v1, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    .line 230
    return v2

    .line 219
    .end local v4    # "newSize":I
    :cond_3f
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 203
    .end local v0    # "list":Lcom/tds/protobuf/DoubleArrayList;
    .end local v3    # "overflow":I
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public addDouble(D)V
    .registers 4
    .param p1, "element"    # D

    .line 165
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/tds/protobuf/DoubleArrayList;->addDouble(ID)V

    .line 166
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 87
    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/DoubleArrayList;

    if-nez v1, :cond_d

    .line 90
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/DoubleArrayList;

    .line 93
    .local v1, "other":Lcom/tds/protobuf/DoubleArrayList;
    iget v2, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    iget v3, v1, Lcom/tds/protobuf/DoubleArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 94
    return v4

    .line 97
    :cond_18
    iget-object v2, v1, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    .line 98
    .local v2, "arr":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-ge v3, v5, :cond_2d

    .line 99
    iget-object v5, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v5, v5, v3

    aget-wide v7, v2, v3

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2a

    .line 100
    return v4

    .line 98
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 104
    .end local v3    # "i":I
    :cond_2d
    return v0
.end method

.method public get(I)Ljava/lang/Double;
    .registers 4
    .param p1, "index"    # I

    .line 127
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "index"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 133
    iget-object v0, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_19

    .line 111
    iget-object v2, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 112
    .local v2, "bits":J
    mul-int/lit8 v4, v0, 0x1f

    invoke-static {v2, v3}, Lcom/tds/protobuf/Internal;->hashLong(J)I

    move-result v5

    add-int v0, v4, v5

    .line 110
    .end local v2    # "bits":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$DoubleList;
    .registers 5
    .param p1, "capacity"    # I

    .line 119
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 122
    new-instance v0, Lcom/tds/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget v2, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    .line 120
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Double;
    .registers 7
    .param p1, "index"    # I

    .line 249
    invoke-virtual {p0}, Lcom/tds/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 250
    invoke-direct {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 251
    iget-object v0, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 252
    .local v1, "value":D
    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    .line 254
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lcom/tds/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    if-ge v0, v1, :cond_2f

    .line 237
    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 238
    iget-object v1, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget v1, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    .line 240
    iget v1, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/DoubleArrayList;->modCount:I

    .line 241
    return v2

    .line 236
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 244
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Double;

    .line 143
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tds/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)D
    .registers 7
    .param p1, "index"    # I
    .param p2, "element"    # D

    .line 148
    invoke-virtual {p0}, Lcom/tds/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 149
    invoke-direct {p0, p1}, Lcom/tds/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 150
    iget-object v0, p0, Lcom/tds/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 151
    .local v1, "previousValue":D
    aput-wide p2, v0, p1

    .line 152
    return-wide v1
.end method

.method public size()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/tds/protobuf/DoubleArrayList;->size:I

    return v0
.end method
