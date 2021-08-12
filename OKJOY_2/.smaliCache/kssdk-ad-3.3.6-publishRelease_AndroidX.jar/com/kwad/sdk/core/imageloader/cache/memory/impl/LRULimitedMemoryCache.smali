.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;
.super Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final LOAD_FACTOR:F = 1.1f


# instance fields
.field private final lruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 v0, 0xa

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ")",
            "Ljava/lang/ref/Reference<",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method

.method protected getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I
    .registers 2

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->getByteSize()I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method

.method protected removeNext()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    monitor-exit v0

    return-object v2

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method
