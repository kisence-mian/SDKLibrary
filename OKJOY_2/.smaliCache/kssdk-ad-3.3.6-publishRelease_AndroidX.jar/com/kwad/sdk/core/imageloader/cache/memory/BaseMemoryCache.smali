.class public abstract Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;


# instance fields
.field private final softMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference<",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected abstract createReference(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Ljava/lang/ref/Reference;
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
.end method

.method public get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public keys()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->createReference(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Ljava/lang/ref/Reference;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->softMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    :goto_12
    return-object p1
.end method
