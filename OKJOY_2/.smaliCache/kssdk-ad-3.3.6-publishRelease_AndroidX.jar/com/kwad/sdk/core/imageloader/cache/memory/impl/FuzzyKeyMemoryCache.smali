.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;


# instance fields
.field private final cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method

.method public keys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->keys()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v4, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_e

    move-object v1, v3

    :cond_23
    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v2, v1}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_32

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    move-result p1

    return p1

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method
