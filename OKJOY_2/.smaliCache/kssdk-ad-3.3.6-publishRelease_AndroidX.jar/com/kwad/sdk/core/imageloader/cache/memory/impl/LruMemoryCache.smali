.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sizeOf(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I
    .registers 3

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->getByteSize()I

    move-result p1

    return p1
.end method

.method private trimToSize(I)V
    .registers 5

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-ltz v0, :cond_4f

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-nez v0, :cond_4f

    :cond_11
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-le v0, p1, :cond_30

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_30

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_32

    :cond_30
    :goto_30
    monitor-exit p0

    goto :goto_4e

    :cond_32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    monitor-exit p0

    goto :goto_0

    :goto_4e
    return-void

    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_70
    move-exception p1

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_70

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    if-eqz p1, :cond_10

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public keys()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 5

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    monitor-enter p0

    :try_start_5
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    if-eqz p2, :cond_21

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_29

    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    const/4 p1, 0x1

    return p1

    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 4

    if-eqz p1, :cond_1b

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "LruCache[maxSize=%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
