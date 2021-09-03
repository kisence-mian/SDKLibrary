.class public final Lcom/tds/protobuf/MapFieldLite;
.super Ljava/util/LinkedHashMap;
.source "MapFieldLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_MAP_FIELD:Lcom/tds/protobuf/MapFieldLite;


# instance fields
.field private isMutable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/tds/protobuf/MapFieldLite;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/tds/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/tds/protobuf/MapFieldLite;

    .line 63
    invoke-virtual {v0}, Lcom/tds/protobuf/MapFieldLite;->makeImmutable()V

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 51
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/MapFieldLite;->isMutable:Z

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/MapFieldLite;->isMutable:Z

    .line 58
    return-void
.end method

.method static calculateHashCodeForMap(Ljava/util/Map;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 164
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v3

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 168
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_9

    .line 169
    :cond_28
    return v0
.end method

.method private static calculateHashCodeForObject(Ljava/lang/Object;)I
    .registers 2
    .param p0, "a"    # Ljava/lang/Object;

    .line 148
    instance-of v0, p0, [B

    if-eqz v0, :cond_e

    .line 149
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tds/protobuf/Internal;->hashCode([B)I

    move-result v0

    return v0

    .line 152
    :cond_e
    instance-of v0, p0, Lcom/tds/protobuf/Internal$EnumLite;

    if-nez v0, :cond_17

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 153
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static copy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 178
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 179
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    .line 180
    .local v0, "data":[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "data":[B
    :cond_f
    return-object p0
.end method

.method static copy(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 192
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 193
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_d

    .line 196
    :cond_29
    return-object v0
.end method

.method public static emptyMapField()Lcom/tds/protobuf/MapFieldLite;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/tds/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/tds/protobuf/MapFieldLite;

    return-object v0
.end method

.method private ensureMutable()V
    .registers 2

    .line 220
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    return-void

    .line 221
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 109
    instance-of v0, p0, [B

    if-eqz v0, :cond_17

    instance-of v0, p1, [B

    if-eqz v0, :cond_17

    .line 110
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 112
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 121
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 122
    return v0

    .line 124
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 125
    return v3

    .line 127
    :cond_10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 129
    return v3

    .line 131
    :cond_2f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tds/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 132
    return v3

    .line 134
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_42
    goto :goto_18

    .line 135
    :cond_43
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 85
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/MapFieldLite;->ensureMutable()V

    .line 86
    invoke-virtual {p0}, Lcom/tds/protobuf/MapFieldLite;->clear()V

    .line 87
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 144
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/tds/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 174
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-static {p0}, Lcom/tds/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .registers 2

    .line 216
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 209
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/MapFieldLite;->isMutable:Z

    .line 210
    return-void
.end method

.method public mergeFrom(Lcom/tds/protobuf/MapFieldLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "other":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/MapFieldLite;->ensureMutable()V

    .line 74
    invoke-virtual {p1}, Lcom/tds/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 75
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 77
    :cond_c
    return-void
.end method

.method public mutableCopy()Lcom/tds/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/tds/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/tds/protobuf/MapFieldLite;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/tds/protobuf/MapFieldLite;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    :goto_11
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/tds/protobuf/MapFieldLite;->ensureMutable()V

    .line 91
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/MapFieldLite;->ensureMutable()V

    .line 100
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-direct {p0}, Lcom/tds/protobuf/MapFieldLite;->ensureMutable()V

    .line 105
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
