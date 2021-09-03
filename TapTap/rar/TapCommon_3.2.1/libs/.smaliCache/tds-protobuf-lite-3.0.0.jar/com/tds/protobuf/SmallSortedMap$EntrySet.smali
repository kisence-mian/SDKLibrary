.class Lcom/tds/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lcom/tds/protobuf/SmallSortedMap;)V
    .registers 2

    .line 470
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/SmallSortedMap;Lcom/tds/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/tds/protobuf/SmallSortedMap;
    .param p2, "x1"    # Lcom/tds/protobuf/SmallSortedMap$1;

    .line 470
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/tds/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/tds/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 470
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 500
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v0, 0x1

    return v0

    .line 503
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 524
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->clear()V

    .line 525
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 490
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 492
    .local v1, "existing":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eq v1, v2, :cond_1e

    if-eqz v1, :cond_1c

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/tds/protobuf/SmallSortedMap;Lcom/tds/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 514
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 515
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 516
    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/4 v1, 0x1

    return v1

    .line 519
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .registers 2

    .line 479
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$EntrySet;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
