.class public Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field alternatingKeysAndValues:[Ljava/lang/Object;

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 222
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;-><init>(I)V

    .line 223
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 228
    const/4 p1, 0x0

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    .line 229
    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 230
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 233
    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_15

    .line 234
    array-length v1, v0

    .line 237
    invoke-static {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 235
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 239
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 241
    :cond_15
    return-void
.end method


# virtual methods
.method public build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->sortEntries()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 339
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 249
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 250
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    .line 252
    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    .line 253
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    .line 254
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 289
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 290
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 292
    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 293
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    .line 294
    goto :goto_15

    .line 295
    :cond_25
    return-object p0
.end method

.method sortEntries()V
    .registers 8

    .line 343
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_63

    .line 344
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_14

    .line 345
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 347
    :cond_14
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 348
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    iget v3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    if-ge v2, v3, :cond_32

    .line 349
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 353
    :cond_32
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 354
    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->from(Ljava/util/Comparator;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    move-result-object v2

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Maps;->valueFunction()Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->onResultOf(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 355
    nop

    :goto_44
    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->size:I

    if-ge v1, v2, :cond_63

    .line 356
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 357
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 360
    :cond_63
    return-void
.end method
