.class Lcom/tds/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/SmallSortedMap$EmptySet;,
        Lcom/tds/protobuf/SmallSortedMap$EntryIterator;,
        Lcom/tds/protobuf/SmallSortedMap$EntrySet;,
        Lcom/tds/protobuf/SmallSortedMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private isImmutable:Z

.field private volatile lazyEntrySet:Lcom/tds/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final maxArraySize:I

.field private overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "arraySize"    # I

    .line 153
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 154
    iput p1, p0, Lcom/tds/protobuf/SmallSortedMap;->maxArraySize:I

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(ILcom/tds/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/tds/protobuf/SmallSortedMap$1;

    .line 87
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/tds/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tds/protobuf/SmallSortedMap;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/protobuf/SmallSortedMap;

    .line 87
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic access$400(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/SmallSortedMap;

    .line 87
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/tds/protobuf/SmallSortedMap;
    .param p1, "x1"    # I

    .line 87
    invoke-direct {p0, p1}, Lcom/tds/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/tds/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/SmallSortedMap;

    .line 87
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object v0
.end method

.method private binarySearchInArray(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 315
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    const/4 v0, 0x0

    .line 316
    .local v0, "left":I
    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 321
    .local v1, "right":I
    if-ltz v1, :cond_24

    .line 322
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 323
    .local v2, "cmp":I
    if-lez v2, :cond_21

    .line 324
    add-int/lit8 v3, v1, 0x2

    neg-int v3, v3

    return v3

    .line 325
    :cond_21
    if-nez v2, :cond_24

    .line 326
    return v1

    .line 330
    .end local v2    # "cmp":I
    :cond_24
    :goto_24
    if-gt v0, v1, :cond_45

    .line 331
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 332
    .local v2, "mid":I
    iget-object v3, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 333
    .local v3, "cmp":I
    if-gez v3, :cond_3f

    .line 334
    add-int/lit8 v1, v2, -0x1

    goto :goto_43

    .line 335
    :cond_3f
    if-lez v3, :cond_44

    .line 336
    add-int/lit8 v0, v2, 0x1

    .line 340
    .end local v2    # "mid":I
    .end local v3    # "cmp":I
    :goto_43
    goto :goto_24

    .line 338
    .restart local v2    # "mid":I
    .restart local v3    # "cmp":I
    :cond_44
    return v2

    .line 341
    .end local v2    # "mid":I
    .end local v3    # "cmp":I
    :cond_45
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private checkMutable()V
    .registers 2

    .line 364
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_5

    .line 367
    return-void

    .line 365
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private ensureEntryArrayMutable()V
    .registers 3

    .line 389
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 390
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tds/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 393
    :cond_1a
    return-void
.end method

.method private getOverflowEntriesMutable()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 378
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_18

    .line 379
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 381
    :cond_18
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static newFieldMap(I)Lcom/tds/protobuf/SmallSortedMap;
    .registers 2
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/tds/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method static newInstanceForTest(I)Lcom/tds/protobuf/SmallSortedMap;
    .registers 2
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/SmallSortedMap;-><init>(I)V

    return-object v0
.end method

.method private removeArrayEntryAt(I)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 297
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "removed":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 301
    nop

    .line 302
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, p0, v4}, Lcom/tds/protobuf/SmallSortedMap$Entry;-><init>(Lcom/tds/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 306
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_37
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 262
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 263
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 264
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :cond_10
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 267
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 214
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 215
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-gez v1, :cond_14

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/tds/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_c

    .line 354
    new-instance v0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tds/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/tds/protobuf/SmallSortedMap;Lcom/tds/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/tds/protobuf/SmallSortedMap$EntrySet;

    .line 356
    :cond_c
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/tds/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 623
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 624
    return v0

    .line 627
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/SmallSortedMap;

    if-nez v1, :cond_d

    .line 628
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 631
    :cond_d
    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/SmallSortedMap;

    .line 632
    .local v1, "other":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<**>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap;->size()I

    move-result v2

    .line 633
    .local v2, "size":I
    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1c

    .line 634
    return v4

    .line 638
    :cond_1c
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    .line 639
    .local v3, "numArrayEntries":I
    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v5

    if-eq v3, v5, :cond_33

    .line 640
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 643
    :cond_33
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v3, :cond_48

    .line 644
    invoke-virtual {p0, v5}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v1, v5}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 645
    return v4

    .line 643
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 649
    .end local v5    # "i":I
    :cond_48
    if-eq v3, v2, :cond_53

    .line 650
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object v4, v1, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 654
    :cond_53
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 228
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    .line 229
    .local v1, "index":I
    if-ltz v1, :cond_16

    .line 230
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 232
    :cond_16
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getNumArrayEntries()I
    .registers 2

    .line 180
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumOverflowEntries()I
    .registers 2

    .line 190
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    invoke-static {}, Lcom/tds/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 197
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 659
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 660
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    .line 661
    .local v1, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_18

    .line 662
    iget-object v3, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/tds/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 665
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v2

    if-lez v2, :cond_25

    .line 666
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 668
    :cond_25
    return v0
.end method

.method public isImmutable()Z
    .registers 2

    .line 175
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 161
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_1c

    .line 166
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/SmallSortedMap;->isImmutable:Z

    .line 171
    :cond_1c
    return-void
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 238
    invoke-direct {p0, p1}, Lcom/tds/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 239
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 241
    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v1, p2}, Lcom/tds/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 243
    :cond_16
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    .line 244
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 245
    .local v1, "insertionPoint":I
    iget v2, p0, Lcom/tds/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v1, v2, :cond_29

    .line 247
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 250
    :cond_29
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/tds/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v2, v3, :cond_4c

    .line 252
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/SmallSortedMap$Entry;

    .line 253
    .local v2, "lastEntryInArray":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    .line 254
    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 253
    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v2    # "lastEntryInArray":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    :cond_4c
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v3, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-direct {v3, p0, p1, p2}, Lcom/tds/protobuf/SmallSortedMap$Entry;-><init>(Lcom/tds/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 257
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 87
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V

    .line 281
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 282
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Lcom/tds/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    .line 283
    .local v1, "index":I
    if-ltz v1, :cond_11

    .line 284
    invoke-direct {p0, v1}, Lcom/tds/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 288
    :cond_11
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 289
    const/4 v2, 0x0

    return-object v2

    .line 291
    :cond_1b
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .registers 3

    .line 202
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
