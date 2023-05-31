.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_13

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private trimToSize(I)V
    .registers 5

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-ltz v0, :cond_51

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-nez v0, :cond_51

    :cond_11
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    if-le v0, p1, :cond_1d

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    monitor-exit p0

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    monitor-exit p0

    goto :goto_0

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_4e
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    if-eqz p1, :cond_10

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public keys()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
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

.method public final put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 5

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_2d

    monitor-enter p0

    :try_start_5
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2a

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->trimToSize(I)V

    const/4 v0, 0x1

    return v0

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p1, :cond_1b

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->size:I

    :cond_16
    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/LruMemoryCache;->maxSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "LruCache[maxSize=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
