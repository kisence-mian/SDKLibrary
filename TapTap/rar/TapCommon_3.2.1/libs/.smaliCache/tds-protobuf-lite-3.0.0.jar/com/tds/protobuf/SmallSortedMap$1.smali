.class final Lcom/tds/protobuf/SmallSortedMap$1;
.super Lcom/tds/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/tds/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/SmallSortedMap<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "arraySize"    # I

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tds/protobuf/SmallSortedMap;-><init>(ILcom/tds/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public makeImmutable()V
    .registers 5

    .line 104
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$1;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 106
    nop

    .line 107
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/SmallSortedMap$1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 108
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    .local v2, "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 114
    .end local v0    # "i":I
    :cond_2e
    invoke-virtual {p0}, Lcom/tds/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 117
    .restart local v2    # "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_5b
    goto :goto_36

    .line 121
    :cond_5c
    invoke-super {p0}, Lcom/tds/protobuf/SmallSortedMap;->makeImmutable()V

    .line 122
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 100
    check-cast p1, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-super {p0, p1, p2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
