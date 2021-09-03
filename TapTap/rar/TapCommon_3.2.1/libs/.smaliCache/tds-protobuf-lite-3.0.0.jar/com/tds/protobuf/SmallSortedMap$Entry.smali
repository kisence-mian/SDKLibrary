.class Lcom/tds/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/tds/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/protobuf/SmallSortedMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tds/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "key":Ljava/lang/Comparable;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    .line 411
    iput-object p3, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 412
    return-void
.end method

.method constructor <init>(Lcom/tds/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "copy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/protobuf/SmallSortedMap$Entry;-><init>(Lcom/tds/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 407
    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 463
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/tds/protobuf/SmallSortedMap$Entry;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;)I"
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "other":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 400
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    check-cast p1, Lcom/tds/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p0, p1}, Lcom/tds/protobuf/SmallSortedMap$Entry;->compareTo(Lcom/tds/protobuf/SmallSortedMap$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 439
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 440
    return v0

    .line 442
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 443
    return v2

    .line 446
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 447
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tds/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tds/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public getKey()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 400
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 452
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    .line 453
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->this$0:Lcom/tds/protobuf/SmallSortedMap;

    # invokes: Lcom/tds/protobuf/SmallSortedMap;->checkMutable()V
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->access$200(Lcom/tds/protobuf/SmallSortedMap;)V

    .line 432
    iget-object v0, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 433
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 434
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 458
    .local p0, "this":Lcom/tds/protobuf/SmallSortedMap$Entry;, "Lcom/tds/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
