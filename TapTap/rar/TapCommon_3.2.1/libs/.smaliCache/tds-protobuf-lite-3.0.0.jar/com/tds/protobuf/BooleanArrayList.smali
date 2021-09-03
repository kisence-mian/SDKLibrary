.class final Lcom/tds/protobuf/BooleanArrayList;
.super Lcom/tds/protobuf/AbstractProtobufList;
.source "BooleanArrayList.java"

# interfaces
.implements Lcom/tds/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/tds/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/tds/protobuf/BooleanArrayList;


# instance fields
.field private array:[Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/tds/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/tds/protobuf/BooleanArrayList;-><init>()V

    sput-object v0, Lcom/tds/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/tds/protobuf/BooleanArrayList;

    .line 50
    invoke-virtual {v0}, Lcom/tds/protobuf/BooleanArrayList;->makeImmutable()V

    .line 51
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tds/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 73
    return-void
.end method

.method private constructor <init>([ZI)V
    .registers 3
    .param p1, "other"    # [Z
    .param p2, "size"    # I

    .line 79
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractProtobufList;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    .line 81
    iput p2, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    .line 82
    return-void
.end method

.method private addBoolean(IZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 171
    invoke-virtual {p0}, Lcom/tds/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 172
    if-ltz p1, :cond_3e

    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_3e

    .line 176
    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 178
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 181
    :cond_15
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 182
    .local v0, "length":I
    new-array v2, v0, [Z

    .line 185
    .local v2, "newArray":[Z
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iput-object v2, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    .line 192
    .end local v0    # "length":I
    .end local v2    # "newArray":[Z
    :goto_2d
    iget-object v0, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    .line 193
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    .line 194
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    .line 195
    return-void

    .line 173
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyList()Lcom/tds/protobuf/BooleanArrayList;
    .registers 1

    .line 54
    sget-object v0, Lcom/tds/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/tds/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 4
    .param p1, "index"    # I

    .line 264
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 267
    return-void

    .line 265
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 270
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

    iget v1, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Boolean;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;

    .line 156
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tds/protobuf/BooleanArrayList;->addBoolean(IZ)V

    .line 157
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 199
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 201
    if-eqz p1, :cond_45

    .line 206
    instance-of v0, p1, Lcom/tds/protobuf/BooleanArrayList;

    if-nez v0, :cond_e

    .line 207
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 210
    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/BooleanArrayList;

    .line 211
    .local v0, "list":Lcom/tds/protobuf/BooleanArrayList;
    iget v1, v0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 212
    return v2

    .line 215
    :cond_17
    const v3, 0x7fffffff

    iget v4, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, v4

    .line 216
    .local v3, "overflow":I
    if-lt v3, v1, :cond_3f

    .line 221
    add-int/2addr v4, v1

    .line 222
    .local v4, "newSize":I
    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    array-length v5, v1

    if-le v4, v5, :cond_2b

    .line 223
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    .line 226
    :cond_2b
    iget-object v1, v0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    iget-object v5, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    iget v6, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    iget v7, v0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    invoke-static {v1, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iput v4, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    .line 228
    iget v1, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    .line 229
    return v2

    .line 218
    .end local v4    # "newSize":I
    :cond_3f
    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1

    .line 202
    .end local v0    # "list":Lcom/tds/protobuf/BooleanArrayList;
    .end local v3    # "overflow":I
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public addBoolean(Z)V
    .registers 3
    .param p1, "element"    # Z

    .line 164
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    invoke-direct {p0, v0, p1}, Lcom/tds/protobuf/BooleanArrayList;->addBoolean(IZ)V

    .line 165
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 87
    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/BooleanArrayList;

    if-nez v1, :cond_d

    .line 90
    invoke-super {p0, p1}, Lcom/tds/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/BooleanArrayList;

    .line 93
    .local v1, "other":Lcom/tds/protobuf/BooleanArrayList;
    iget v2, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    iget v3, v1, Lcom/tds/protobuf/BooleanArrayList;->size:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_18

    .line 94
    return v4

    .line 97
    :cond_18
    iget-object v2, v1, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    .line 98
    .local v2, "arr":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget v5, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-ge v3, v5, :cond_2b

    .line 99
    iget-object v5, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v5, v5, v3

    aget-boolean v6, v2, v3

    if-eq v5, v6, :cond_28

    .line 100
    return v4

    .line 98
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 104
    .end local v3    # "i":I
    :cond_2b
    return v0
.end method

.method public get(I)Ljava/lang/Boolean;
    .registers 3
    .param p1, "index"    # I

    .line 126
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 131
    invoke-direct {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 132
    iget-object v0, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v3, v3, v1

    invoke-static {v3}, Lcom/tds/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int v0, v2, v3

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$BooleanList;
    .registers 5
    .param p1, "capacity"    # I

    .line 118
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_12

    .line 121
    new-instance v0, Lcom/tds/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget v2, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/BooleanArrayList;-><init>([ZI)V

    return-object v0

    .line 119
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Boolean;
    .registers 6
    .param p1, "index"    # I

    .line 248
    invoke-virtual {p0}, Lcom/tds/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 249
    invoke-direct {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 250
    iget-object v0, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 251
    .local v1, "value":Z
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    .line 253
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/tds/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    if-ge v0, v1, :cond_2f

    .line 236
    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 237
    iget-object v1, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v1, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    .line 239
    iget v1, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/protobuf/BooleanArrayList;->modCount:I

    .line 240
    return v2

    .line 235
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 243
    .end local v0    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Boolean;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 44
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "element"    # Z

    .line 147
    invoke-virtual {p0}, Lcom/tds/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 148
    invoke-direct {p0, p1}, Lcom/tds/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 149
    iget-object v0, p0, Lcom/tds/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 150
    .local v1, "previousValue":Z
    aput-boolean p2, v0, p1

    .line 151
    return v1
.end method

.method public size()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/tds/protobuf/BooleanArrayList;->size:I

    return v0
.end method
