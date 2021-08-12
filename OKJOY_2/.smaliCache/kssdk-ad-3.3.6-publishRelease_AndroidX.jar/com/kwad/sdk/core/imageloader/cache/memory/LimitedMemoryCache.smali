.class public abstract Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;
.super Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;


# static fields
.field private static final MAX_NORMAL_CACHE_SIZE:I = 0x1000000

.field private static final MAX_NORMAL_CACHE_SIZE_IN_MB:I = 0x10


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_2c

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "You set too large memory cache size (more than %1$d Mb)"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->clear()V

    return-void
.end method

.method protected abstract getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I
.end method

.method protected getSizeLimit()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 8

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->getSizeLimit()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v0, v1, :cond_38

    :cond_10
    :goto_10
    add-int v3, v2, v0

    if-le v3, v1, :cond_2c

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->removeNext()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object v3

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    goto :goto_10

    :cond_2c
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_18
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;->remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method

.method protected abstract removeNext()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
.end method
