.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field private static sBaseCache:[Ljava/lang/Object;

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mCollections:Landroidx/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroidx/collection/ArraySet;->INT:[I

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 240
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 241
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 247
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-nez p1, :cond_e

    .line 249
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 250
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_11

    .line 252
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 254
    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 255
    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 261
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "set":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    .line 262
    if-eqz p1, :cond_8

    .line 263
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 265
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    .line 272
    if-eqz p1, :cond_8

    .line 273
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 8
    .param p1, "size"    # I

    .line 160
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const-class v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_31

    .line 161
    monitor-enter v0

    .line 162
    :try_start_a
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2c

    .line 163
    nop

    .line 164
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 165
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 166
    aget-object v5, v4, v3

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 167
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 168
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 173
    monitor-exit v0

    return-void

    .line 175
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2c
    monitor-exit v0

    goto :goto_5c

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1

    .line 176
    :cond_31
    const/4 v4, 0x4

    if-ne p1, v4, :cond_5c

    .line 177
    monitor-enter v0

    .line 178
    :try_start_35
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_57

    .line 179
    nop

    .line 180
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 181
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 182
    aget-object v5, v4, v3

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 183
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 184
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 189
    monitor-exit v0

    return-void

    .line 191
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_57
    monitor-exit v0

    goto :goto_5c

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_59

    throw v1

    .line 194
    :cond_5c
    :goto_5c
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 195
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 200
    const-class v0, Landroidx/collection/ArraySet;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2d

    .line 201
    monitor-enter v0

    .line 202
    :try_start_e
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_28

    .line 203
    sget-object v1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 204
    aput-object p0, p1, v6

    .line 205
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1a
    if-lt v1, v3, :cond_21

    .line 206
    aput-object v2, p1, v1

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 208
    .end local v1    # "i":I
    :cond_21
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sget v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 215
    :cond_28
    monitor-exit v0

    goto :goto_51

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v1

    .line 216
    :cond_2d
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_51

    .line 217
    monitor-enter v0

    .line 218
    :try_start_32
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    if-ge v1, v5, :cond_4c

    .line 219
    sget-object v1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 220
    aput-object p0, p1, v6

    .line 221
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_3e
    if-lt v1, v3, :cond_45

    .line 222
    aput-object v2, p1, v1

    .line 221
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 224
    .end local v1    # "i":I
    :cond_45
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 225
    sget v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 231
    :cond_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_4e

    throw v1

    .line 233
    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Landroidx/collection/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    if-nez v0, :cond_b

    .line 635
    new-instance v0, Landroidx/collection/ArraySet$1;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$1;-><init>(Landroidx/collection/ArraySet;)V

    iput-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    .line 682
    :cond_b
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 83
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 86
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 87
    const/4 v1, -0x1

    return v1

    .line 90
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 93
    .local v1, "index":I
    if-gez v1, :cond_f

    .line 94
    return v1

    .line 98
    :cond_f
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 99
    return v1

    .line 104
    :cond_1a
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_1c
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    .line 105
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    .line 104
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 109
    :cond_32
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_34
    if-ltz v3, :cond_4a

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_4a

    .line 110
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    return v3

    .line 109
    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 117
    .end local v3    # "i":I
    :cond_4a
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method

.method private indexOfNull()I
    .registers 6

    .line 121
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 124
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 125
    const/4 v1, -0x1

    return v1

    .line 128
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 131
    .local v1, "index":I
    if-gez v1, :cond_10

    .line 132
    return v1

    .line 136
    :cond_10
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    .line 137
    return v1

    .line 142
    :cond_17
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_19
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    .line 143
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    .line 142
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 147
    :cond_2b
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2d
    if-ltz v3, :cond_3f

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_3f

    .line 148
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_3c

    return v3

    .line 147
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 155
    .end local v3    # "i":I
    :cond_3f
    xor-int/lit8 v3, v2, -0x1

    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 359
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_8

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "hash":I
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v1

    .local v1, "index":I
    goto :goto_10

    .line 363
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 364
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 366
    .restart local v1    # "index":I
    :goto_10
    const/4 v2, 0x0

    if-ltz v1, :cond_14

    .line 367
    return v2

    .line 370
    :cond_14
    xor-int/lit8 v1, v1, -0x1

    .line 371
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_46

    .line 372
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_26

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v3

    goto :goto_2a

    :cond_26
    if-lt v3, v4, :cond_2a

    const/16 v4, 0x8

    :cond_2a
    :goto_2a
    move v3, v4

    .line 377
    .local v3, "n":I
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 378
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 379
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 381
    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v7, v6

    if-lez v7, :cond_41

    .line 383
    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v6, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    :cond_41
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v4, v5, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 390
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_46
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v2, :cond_5c

    .line 395
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_5c
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 400
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 401
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 402
    return v3
.end method

.method public addAll(Landroidx/collection/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 410
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    .line 411
    .local v0, "N":I
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 412
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v1, :cond_20

    .line 413
    if-lez v0, :cond_2d

    .line 414
    iget-object v1, p1, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v1, p1, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    goto :goto_2d

    .line 419
    :cond_20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_2d

    .line 420
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 423
    .end local v1    # "i":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 719
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 722
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 723
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_f

    .line 724
    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    .line 282
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v0, :cond_16

    .line 283
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 284
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 285
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 288
    :cond_16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 315
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 705
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 706
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 707
    const/4 v0, 0x0

    return v0

    .line 709
    .end local v1    # "item":Ljava/lang/Object;
    :cond_16
    goto :goto_4

    .line 710
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public ensureCapacity(I)V
    .registers 7
    .param p1, "minimumCapacity"    # I

    .line 295
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_22

    .line 296
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 297
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 298
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 299
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lez v2, :cond_1d

    .line 300
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_1d
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 305
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    :cond_22
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 559
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 560
    return v0

    .line 562
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 563
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 564
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 565
    return v2

    .line 569
    :cond_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    :try_start_18
    iget v4, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v3, v4, :cond_2a

    .line 570
    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 571
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_24} :catch_2e
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_24} :catch_2c

    if-nez v5, :cond_27

    .line 572
    return v2

    .line 569
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 579
    .end local v3    # "i":I
    :cond_2a
    nop

    .line 580
    return v0

    .line 577
    :catch_2c
    move-exception v0

    .line 578
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 575
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_2e
    move-exception v0

    .line 576
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 582
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_30
    return v2
.end method

.method public hashCode()I
    .registers 6

    .line 590
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 591
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 592
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_6
    if-ge v2, v3, :cond_e

    .line 593
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 595
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_e
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 325
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    if-nez p1, :cond_7

    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_f
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 343
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 694
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-direct {p0}, Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 433
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 434
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 435
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 436
    const/4 v1, 0x1

    return v1

    .line 438
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Landroidx/collection/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 506
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<+TE;>;"
    iget v0, p1, Landroidx/collection/ArraySet;->mSize:I

    .line 510
    .local v0, "N":I
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 511
    .local v1, "originalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_11

    .line 512
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 514
    .end local v2    # "i":I
    :cond_11
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eq v1, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 734
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 735
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 736
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 737
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_5

    .line 738
    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 447
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 448
    .local v1, "old":Ljava/lang/Object;
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1a

    .line 451
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v4, v0, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 452
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 453
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 454
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    goto :goto_78

    .line 456
    :cond_1a
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_5c

    array-length v5, v0

    div-int/lit8 v5, v5, 0x3

    if-ge v2, v5, :cond_5c

    .line 460
    if-le v2, v6, :cond_2c

    shr-int/lit8 v0, v2, 0x1

    add-int v6, v2, v0

    :cond_2c
    move v0, v6

    .line 464
    .local v0, "n":I
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 465
    .local v2, "ohashes":[I
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 466
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 468
    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 469
    if-lez p1, :cond_45

    .line 471
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v2, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_45
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge p1, v3, :cond_5b

    .line 479
    add-int/lit8 v4, p1, 0x1

    iget-object v6, p0, Landroidx/collection/ArraySet;->mHashes:[I

    sub-int/2addr v3, p1

    invoke-static {v2, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v5, v3, v4, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    .end local v0    # "n":I
    .end local v2    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_5b
    goto :goto_78

    .line 483
    :cond_5c
    sub-int/2addr v2, v4

    iput v2, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 484
    if-ge p1, v2, :cond_71

    .line 488
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_71
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 494
    :goto_78
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 749
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 750
    .local v0, "removed":Z
    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_18

    .line 751
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 752
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 753
    const/4 v0, 0x1

    .line 750
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 756
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public size()I
    .registers 2

    .line 522
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .line 528
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 529
    .local v1, "result":[Ljava/lang/Object;
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 536
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v0, v1, :cond_19

    .line 537
    nop

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 539
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 541
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_19
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v0, v1, :cond_29

    .line 543
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 545
    :cond_29
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 607
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 608
    const-string v0, "{}"

    return-object v0

    .line 611
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v2, :cond_35

    .line 614
    if-lez v1, :cond_23

    .line 615
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_23
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 618
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2d

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 621
    :cond_2d
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .end local v2    # "value":Ljava/lang/Object;
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 624
    .end local v1    # "i":I
    :cond_35
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 335
    .local p0, "this":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<TE;>;"
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
