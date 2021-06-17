.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:J

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;IJLandroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "initialCapacity",
            "maxSegmentWeight",
            "statsCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>;IJ",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .line 1937
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1914
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1938
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    .line 1939
    iput-wide p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 1940
    invoke-static {p5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    .line 1941
    invoke-virtual {p0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1943
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesKeyReferences()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2a

    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_2b

    :cond_2a
    move-object p2, p3

    :goto_2b
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1945
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesValueReferences()Z

    move-result p2

    if-eqz p2, :cond_38

    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_38
    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1947
    nop

    .line 1948
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesAccessQueue()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 1949
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_4b

    .line 1950
    :cond_47
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p2

    :goto_4b
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 1952
    nop

    .line 1953
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesWriteQueue()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 1954
    new-instance p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;

    invoke-direct {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;-><init>()V

    goto :goto_5e

    .line 1955
    :cond_5a
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p2

    :goto_5e
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 1957
    nop

    .line 1958
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesAccessQueue()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 1959
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;

    invoke-direct {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;-><init>()V

    goto :goto_71

    .line 1960
    :cond_6d
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p1

    :goto_71
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 1961
    return-void
.end method


# virtual methods
.method cleanUp()V
    .registers 3

    .line 3359
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 3360
    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3361
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3362
    return-void
.end method

.method clear()V
    .registers 12

    .line 3100
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_95

    .line 3101
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 3103
    :try_start_7
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 3104
    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3106
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3107
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 3108
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    :goto_22
    if-eqz v3, :cond_5b

    .line 3110
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3111
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3112
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v8

    .line 3114
    if-eqz v6, :cond_42

    if-nez v8, :cond_3f

    goto :goto_42

    :cond_3f
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    goto :goto_44

    :cond_42
    :goto_42
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    :goto_44
    move-object v10, v4

    .line 3115
    nop

    .line 3116
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v7

    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v9

    .line 3115
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 3108
    :cond_56
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v3

    goto :goto_22

    .line 3107
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 3120
    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 3121
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3120
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 3123
    :cond_6c
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3124
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3125
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3126
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3128
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3129
    iput v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_8d

    .line 3131
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3133
    goto :goto_95

    .line 3131
    :catchall_8d
    move-exception v0

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3132
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    .line 3135
    :cond_95
    :goto_95
    return-void
.end method

.method clearKeyReferenceQueue()V
    .registers 2

    .line 2408
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 2409
    :cond_9
    return-void
.end method

.method clearReferenceQueues()V
    .registers 2

    .line 2399
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2400
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2402
    :cond_b
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2403
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2405
    :cond_16
    return-void
.end method

.method clearValueReferenceQueue()V
    .registers 2

    .line 2412
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 2413
    :cond_9
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "hash"
        }
    .end annotation

    .line 2640
    :try_start_0
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 2641
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v2

    .line 2642
    invoke-virtual {p0, p1, p2, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_2c

    .line 2643
    if-nez p1, :cond_18

    .line 2644
    nop

    .line 2651
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2644
    return v1

    .line 2646
    :cond_18
    :try_start_18
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    .line 2651
    :cond_23
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2646
    return v1

    .line 2649
    :cond_27
    nop

    .line 2651
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2649
    return v1

    .line 2651
    :catchall_2c
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method copyEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "newNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1987
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1989
    return-object v1

    .line 1992
    :cond_8
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 1993
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1994
    if-nez v2, :cond_19

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1996
    return-object v1

    .line 1999
    :cond_19
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->entryFactory:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->copyEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 2000
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v2, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 2001
    return-object p1
.end method

.method drainKeyReferenceQueue()V
    .registers 4

    .line 2372
    const/4 v0, 0x0

    .line 2373
    :goto_1
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2375
    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2376
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->reclaimKey(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 2377
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 2378
    goto :goto_18

    .line 2380
    :cond_17
    goto :goto_1

    .line 2381
    :cond_18
    :goto_18
    return-void
.end method

.method drainRecencyQueue()V
    .registers 3

    .line 2475
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_18

    .line 2480
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2481
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2484
    :cond_18
    return-void
.end method

.method drainReferenceQueues()V
    .registers 2

    .line 2361
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2362
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2364
    :cond_b
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2365
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2367
    :cond_16
    return-void
.end method

.method drainValueReferenceQueue()V
    .registers 4

    .line 2386
    const/4 v0, 0x0

    .line 2387
    :goto_1
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2389
    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    .line 2390
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->reclaimValue(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 2391
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 2392
    goto :goto_18

    .line 2394
    :cond_17
    goto :goto_1

    .line 2395
    :cond_18
    :goto_18
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "value",
            "weight",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 2522
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->totalWeight:J

    .line 2523
    invoke-virtual {p5}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->wasEvicted()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2524
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-interface {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2526
    :cond_11
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object p2, p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object p4, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq p2, p4, :cond_24

    .line 2527
    invoke-static {p1, p3, p5}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;

    move-result-object p1

    .line 2528
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object p2, p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2530
    :cond_24
    return-void
.end method

.method evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2540
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2541
    return-void

    .line 2544
    :cond_9
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2548
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2e

    .line 2549
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v0

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->SIZE:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_2e

    .line 2550
    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2554
    :cond_2e
    :goto_2e
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->totalWeight:J

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4d

    .line 2555
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getNextEvictable()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 2556
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v0

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->SIZE:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 2559
    goto :goto_2e

    .line 2557
    :cond_47
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2560
    :cond_4d
    return-void
.end method

.method expand()V
    .registers 12

    .line 2763
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 2765
    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_b

    .line 2766
    return-void

    .line 2779
    :cond_b
    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 2780
    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 2781
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    .line 2782
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 2783
    const/4 v5, 0x0

    :goto_24
    if-ge v5, v1, :cond_79

    .line 2786
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2788
    if-eqz v6, :cond_76

    .line 2789
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v7

    .line 2790
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    .line 2793
    if-nez v7, :cond_3d

    .line 2794
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_76

    .line 2799
    :cond_3d
    nop

    .line 2800
    nop

    .line 2801
    move-object v9, v6

    :goto_40
    if-eqz v7, :cond_51

    .line 2802
    invoke-interface {v7}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v10

    and-int/2addr v10, v4

    .line 2803
    if-eq v10, v8, :cond_4c

    .line 2805
    nop

    .line 2806
    move-object v9, v7

    move v8, v10

    .line 2801
    :cond_4c
    invoke-interface {v7}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v7

    goto :goto_40

    .line 2809
    :cond_51
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2812
    nop

    :goto_55
    if-eq v6, v9, :cond_76

    .line 2813
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 2814
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2815
    invoke-virtual {p0, v6, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->copyEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v8

    .line 2816
    if-eqz v8, :cond_6c

    .line 2817
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_71

    .line 2819
    :cond_6c
    invoke-virtual {p0, v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeCollectedEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 2820
    add-int/lit8 v2, v2, -0x1

    .line 2812
    :goto_71
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v6

    goto :goto_55

    .line 2783
    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 2826
    :cond_79
    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2827
    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 2828
    return-void
.end method

.method expireEntries(J)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 2502
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2505
    :goto_3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_28

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2506
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPIRED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_3

    .line 2507
    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2510
    :cond_28
    :goto_28
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2511
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPIRED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_28

    .line 2512
    :cond_47
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2515
    :cond_4d
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 2060
    :try_start_0
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 2061
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v7

    .line 2062
    invoke-virtual {p0, p1, p2, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v3
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_3f

    .line 2063
    if-nez v3, :cond_18

    .line 2064
    nop

    .line 2076
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2064
    return-object v1

    .line 2067
    :cond_18
    :try_start_18
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 2068
    if-eqz v6, :cond_37

    .line 2069
    invoke-virtual {p0, v3, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recordRead(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)V

    .line 2070
    invoke-interface {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v9, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->defaultLoader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->scheduleRefresh(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLandroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_3f

    .line 2076
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2070
    return-object p1

    .line 2072
    :cond_37
    :try_start_37
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3f

    .line 2074
    :cond_3a
    nop

    .line 2076
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2074
    return-object v1

    .line 2076
    :catchall_3f
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method getAndRecordStats(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "loadingValueReference",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2227
    nop

    .line 2229
    :try_start_1
    invoke-static {p4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_52

    .line 2230
    if-eqz p4, :cond_25

    .line 2233
    :try_start_7
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2234
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_23

    .line 2235
    nop

    .line 2237
    if-nez p4, :cond_22

    .line 2238
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2239
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;)Z

    .line 2235
    :cond_22
    return-object p4

    .line 2237
    :catchall_23
    move-exception v0

    goto :goto_54

    .line 2231
    :cond_25
    :try_start_25
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_23

    .line 2237
    :catchall_52
    move-exception v0

    const/4 p4, 0x0

    :goto_54
    if-nez p4, :cond_62

    .line 2238
    iget-object p4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->statsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {p4, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2239
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;)Z

    :cond_62
    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2585
    invoke-virtual {p0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getFirst(I)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_27

    .line 2586
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_d

    .line 2587
    goto :goto_22

    .line 2590
    :cond_d
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2591
    if-nez v1, :cond_17

    .line 2592
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2593
    goto :goto_22

    .line 2596
    :cond_17
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v2, v2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2597
    return-object v0

    .line 2585
    :cond_22
    :goto_22
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_4

    .line 2601
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method getFirst(I)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2577
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2578
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object p1
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2606
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 2607
    const/4 p2, 0x0

    if-nez p1, :cond_8

    .line 2608
    return-object p2

    .line 2609
    :cond_8
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0, p1, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2610
    invoke-virtual {p0, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2611
    return-object p2

    .line 2613
    :cond_14
    return-object p1
.end method

.method getLiveValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 2621
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2622
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2623
    return-object v1

    .line 2625
    :cond_b
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2626
    if-nez v0, :cond_19

    .line 2627
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2628
    return-object v1

    .line 2631
    :cond_19
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2632
    invoke-virtual {p0, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2633
    return-object v1

    .line 2635
    :cond_25
    return-object v0
.end method

.method getNextEvictable()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2565
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2566
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    .line 2567
    if-lez v2, :cond_1d

    .line 2568
    return-object v1

    .line 2570
    :cond_1d
    goto :goto_6

    .line 2571
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_25

    :goto_24
    throw v0

    :goto_25
    goto :goto_24
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1968
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    .line 1969
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    int-to-long v1, v0

    iget-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1f

    .line 1971
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    .line 1973
    :cond_1f
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1974
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "hash",
            "checkTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2294
    nop

    .line 2295
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2297
    :try_start_4
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 2298
    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2300
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2301
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 2302
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2305
    move-object v5, v4

    :goto_1f
    if-eqz v5, :cond_74

    .line 2306
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2307
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_6f

    if-eqz v6, :cond_6f

    iget-object v7, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 2309
    invoke-virtual {v7, p1, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2312
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    .line 2313
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p2

    if-nez p2, :cond_67

    if-eqz p3, :cond_51

    .line 2314
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide p2

    sub-long/2addr v0, p2

    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-wide p2, p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshNanos:J

    cmp-long v2, v0, p2

    if-gez v2, :cond_51

    goto :goto_67

    .line 2322
    :cond_51
    iget p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2323
    new-instance p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    invoke-direct {p2, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 2325
    invoke-interface {v5, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_91

    .line 2326
    nop

    .line 2337
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2338
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2326
    return-object p2

    .line 2318
    :cond_67
    :goto_67
    const/4 p1, 0x0

    .line 2337
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2338
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2318
    return-object p1

    .line 2305
    :cond_6f
    :try_start_6f
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v5

    goto :goto_1f

    .line 2330
    :cond_74
    iget p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2331
    new-instance p3, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    invoke-direct {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2332
    invoke-virtual {p0, p1, p2, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 2333
    invoke-interface {p1, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 2334
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_91

    .line 2335
    nop

    .line 2337
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2338
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2335
    return-object p3

    .line 2337
    :catchall_91
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2338
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_9a

    :goto_99
    throw p1

    :goto_9a
    goto :goto_99
.end method

.method loadAsync(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "hash",
            "loadingValueReference",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2203
    invoke-virtual {p3, p1, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p4

    .line 2204
    new-instance v6, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V

    .line 2216
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 2204
    invoke-interface {p4, v6, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2217
    return-object p4
.end method

.method newEntry(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->entryFactory:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->newEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1964
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .registers 2

    .line 3337
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3338
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->cleanUp()V

    .line 3340
    :cond_d
    return-void
.end method

.method postWriteCleanup()V
    .registers 1

    .line 3355
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3356
    return-void
.end method

.method preWriteCleanup(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 3350
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3351
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "value",
            "onlyIfAbsent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 2687
    move-object v7, p0

    move-object v0, p1

    move/from16 v3, p2

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2689
    :try_start_7
    iget-object v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v8

    .line 2690
    invoke-virtual {p0, v8, v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2692
    iget v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 2693
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    if-le v1, v2, :cond_1d

    .line 2694
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->expand()V

    .line 2698
    :cond_1d
    iget-object v10, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2699
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v3, v1

    .line 2700
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2703
    move-object v12, v1

    :goto_2e
    const/4 v13, 0x0

    if-eqz v12, :cond_ce

    .line 2704
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2705
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, v3, :cond_c8

    if-eqz v2, :cond_c8

    iget-object v4, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v4, v4, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 2707
    invoke-virtual {v4, p1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 2710
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2711
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v10

    .line 2713
    if-nez v10, :cond_92

    .line 2714
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2715
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2716
    nop

    .line 2717
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v5

    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2716
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 2718
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2719
    iget v0, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    goto :goto_85

    .line 2721
    :cond_78
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2722
    iget v0, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2724
    :goto_85
    iput v0, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 2725
    invoke-virtual {p0, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_8a
    .catchall {:try_start_7 .. :try_end_8a} :catchall_f5

    .line 2726
    nop

    .line 2755
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2756
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2726
    return-object v13

    .line 2727
    :cond_92
    if-eqz p4, :cond_9f

    .line 2731
    :try_start_94
    invoke-virtual {p0, v12, v8, v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recordLockedRead(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_f5

    .line 2732
    nop

    .line 2755
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2756
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2732
    return-object v10

    .line 2735
    :cond_9f
    :try_start_9f
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2736
    nop

    .line 2737
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v5

    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2736
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 2738
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2739
    invoke-virtual {p0, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_c0
    .catchall {:try_start_9f .. :try_end_c0} :catchall_f5

    .line 2740
    nop

    .line 2755
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2756
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2740
    return-object v10

    .line 2703
    :cond_c8
    :try_start_c8
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v12

    goto/16 :goto_2e

    .line 2746
    :cond_ce
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2747
    invoke-virtual {p0, p1, v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v12

    .line 2748
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2749
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2750
    iget v0, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2751
    iput v0, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 2752
    invoke-virtual {p0, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_ed
    .catchall {:try_start_c8 .. :try_end_ed} :catchall_f5

    .line 2753
    nop

    .line 2755
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2756
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2753
    return-object v13

    .line 2755
    :catchall_f5
    move-exception v0

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2756
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_fe

    :goto_fd
    throw v0

    :goto_fe
    goto :goto_fd
.end method

.method reclaimKey(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    .line 3192
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 3194
    nop

    .line 3195
    :try_start_4
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3197
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3199
    move-object v6, v5

    :goto_15
    if-eqz v6, :cond_4c

    .line 3200
    if-ne v6, p1, :cond_47

    .line 3201
    iget p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3202
    nop

    .line 3206
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3208
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3209
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v10

    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 3203
    move-object v4, p0

    move v8, p2

    invoke-virtual/range {v4 .. v11}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 3211
    iget p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3212
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3213
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_54

    .line 3214
    nop

    .line 3220
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3221
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3214
    return v2

    .line 3199
    :cond_47
    :try_start_47
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v6
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_54

    goto :goto_15

    .line 3218
    :cond_4c
    const/4 p1, 0x0

    .line 3220
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3221
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3218
    return p1

    .line 3220
    :catchall_54
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3221
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method reclaimValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "valueReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3227
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 3229
    nop

    .line 3230
    :try_start_4
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3232
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3234
    move-object v6, v5

    :goto_15
    const/4 v3, 0x0

    if-eqz v6, :cond_70

    .line 3235
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3236
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_6b

    if-eqz v7, :cond_6b

    iget-object v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v4, v4, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 3238
    invoke-virtual {v4, p1, v7}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3239
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    .line 3240
    if-ne p1, p3, :cond_5d

    .line 3241
    iget p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3242
    nop

    .line 3248
    invoke-interface {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 3243
    move-object v4, p0

    move v8, p2

    move-object v10, p3

    invoke-virtual/range {v4 .. v11}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 3251
    iget p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3252
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3253
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_7e

    .line 3254
    nop

    .line 3262
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3263
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 3264
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3254
    :cond_5c
    return v2

    .line 3256
    :cond_5d
    nop

    .line 3262
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3263
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 3264
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3256
    :cond_6a
    return v3

    .line 3234
    :cond_6b
    :try_start_6b
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v6
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_7e

    goto :goto_15

    .line 3260
    :cond_70
    nop

    .line 3262
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3263
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 3264
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3260
    :cond_7d
    return v3

    .line 3262
    :catchall_7e
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3263
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p2

    if-nez p2, :cond_8b

    .line 3264
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

.method recordLockedRead(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2440
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2441
    invoke-interface {p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2443
    :cond_b
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2444
    return-void
.end method

.method recordRead(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2425
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2426
    invoke-interface {p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2428
    :cond_b
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2429
    return-void
.end method

.method recordWrite(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "weight",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2454
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->totalWeight:J

    .line 2456
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsAccess()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2457
    invoke-interface {p1, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2459
    :cond_14
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsWrite()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 2460
    invoke-interface {p1, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setWriteTime(J)V

    .line 2462
    :cond_1f
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2464
    return-void
.end method

.method refresh(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "loader",
            "checkTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .line 2270
    nop

    .line 2271
    invoke-virtual {p0, p1, p2, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;

    move-result-object p4

    .line 2272
    const/4 v0, 0x0

    if-nez p4, :cond_9

    .line 2273
    return-object v0

    .line 2276
    :cond_9
    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2277
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->isDone()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 2279
    :try_start_13
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_18

    return-object p1

    .line 2280
    :catchall_18
    move-exception p1

    .line 2284
    :cond_19
    return-object v0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 2948
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2950
    :try_start_3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 2951
    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2953
    nop

    .line 2954
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2955
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 2956
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2958
    move-object v5, v4

    :goto_20
    const/4 v2, 0x0

    if-eqz v5, :cond_7c

    .line 2959
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2960
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_77

    if-eqz v6, :cond_77

    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v3, v3, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 2962
    invoke-virtual {v3, p1, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2963
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v9

    .line 2964
    invoke-interface {v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 2967
    if-eqz p1, :cond_47

    .line 2968
    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    move-object v10, v2

    goto :goto_50

    .line 2969
    :cond_47
    invoke-interface {v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2970
    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    move-object v10, v2

    .line 2976
    :goto_50
    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2977
    nop

    .line 2978
    move-object v3, p0

    move v7, p2

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p2

    .line 2979
    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2980
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2981
    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_84

    .line 2982
    nop

    .line 2988
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2989
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2982
    return-object p1

    .line 2973
    :cond_6f
    nop

    .line 2988
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2989
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2973
    return-object v2

    .line 2958
    :cond_77
    :try_start_77
    invoke-interface {v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v5
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_84

    goto :goto_20

    .line 2986
    :cond_7c
    nop

    .line 2988
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2989
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2986
    return-object v2

    .line 2988
    :catchall_84
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2989
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "value"
        }
    .end annotation

    .line 2994
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2996
    :try_start_3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v0

    .line 2997
    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2999
    nop

    .line 3000
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3001
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3002
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3004
    move-object v6, v5

    :goto_20
    const/4 v3, 0x0

    if-eqz v6, :cond_87

    .line 3005
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3006
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_82

    if-eqz v7, :cond_82

    iget-object v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v4, v4, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 3008
    invoke-virtual {v4, p1, v7}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 3009
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 3010
    invoke-interface {v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3013
    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {p1, p3, v9}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 3014
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    goto :goto_58

    .line 3015
    :cond_4e
    if-nez v9, :cond_7a

    invoke-interface {v10}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 3016
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 3022
    :goto_58
    iget p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p3, v2

    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3023
    nop

    .line 3024
    move-object v4, p0

    move v8, p2

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p2

    .line 3025
    iget p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    sub-int/2addr p3, v2

    .line 3026
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3027
    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3028
    sget-object p2, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->EXPLICIT:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_8f

    if-ne p1, p2, :cond_72

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    .line 3034
    :goto_73
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3035
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3028
    return v2

    .line 3019
    :cond_7a
    nop

    .line 3034
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3035
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3019
    return v3

    .line 3004
    :cond_82
    :try_start_82
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v6
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_8f

    goto :goto_20

    .line 3032
    :cond_87
    nop

    .line 3034
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3035
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3032
    return v3

    .line 3034
    :catchall_8f
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3035
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method removeCollectedEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3180
    nop

    .line 3181
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3182
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v2

    .line 3183
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3184
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    sget-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 3180
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 3186
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3187
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3188
    return-void
.end method

.method removeEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Z
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "hash",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .line 3305
    nop

    .line 3306
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3307
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3308
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3310
    move-object v6, v5

    :goto_12
    if-eqz v6, :cond_41

    .line 3311
    if-ne v6, p1, :cond_3c

    .line 3312
    iget p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3313
    nop

    .line 3317
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3319
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3320
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 3314
    move-object v4, p0

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 3322
    iget p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3323
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3324
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3325
    return v2

    .line 3310
    :cond_3c
    invoke-interface {v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v6

    goto :goto_12

    .line 3329
    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method removeEntryFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3163
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3164
    invoke-interface {p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v1

    .line 3165
    nop

    :goto_7
    if-eq p1, p2, :cond_1b

    .line 3166
    invoke-virtual {p0, p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->copyEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v2

    .line 3167
    if-eqz v2, :cond_11

    .line 3168
    move-object v1, v2

    goto :goto_16

    .line 3170
    :cond_11
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeCollectedEntry(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 3171
    add-int/lit8 v0, v0, -0x1

    .line 3165
    :goto_16
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    goto :goto_7

    .line 3174
    :cond_1b
    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3175
    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "valueReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3270
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 3272
    :try_start_3
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3274
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3276
    move-object v4, v3

    :goto_13
    const/4 v5, 0x0

    if-eqz v4, :cond_5c

    .line 3277
    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3278
    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_57

    if-eqz v6, :cond_57

    iget-object v7, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 3280
    invoke-virtual {v7, p1, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 3281
    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    .line 3282
    if-ne p1, p3, :cond_4f

    .line 3283
    invoke-virtual {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 3284
    invoke-virtual {p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->getOldValue()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {v4, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    goto :goto_47

    .line 3286
    :cond_40
    invoke-virtual {p0, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntryFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 3287
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_64

    .line 3289
    :goto_47
    nop

    .line 3297
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3298
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3289
    return v2

    .line 3291
    :cond_4f
    nop

    .line 3297
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3298
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3291
    return v5

    .line 3276
    :cond_57
    :try_start_57
    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v4
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_64

    goto :goto_13

    .line 3295
    :cond_5c
    nop

    .line 3297
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3298
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3295
    return v5

    .line 3297
    :catchall_64
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3298
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_6d

    :goto_6c
    throw p1

    :goto_6d
    goto :goto_6c
.end method

.method removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "first",
            "entry",
            "key",
            "hash",
            "value",
            "valueReference",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;TK;ITV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3147
    invoke-interface {p6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 3148
    iget-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3149
    iget-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3151
    invoke-interface {p6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 3152
    const/4 p2, 0x0

    invoke-interface {p6, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3153
    return-object p1

    .line 3155
    :cond_21
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeEntryFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 2893
    move-object/from16 v9, p0

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2895
    :try_start_7
    iget-object v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v7

    .line 2896
    invoke-virtual {v9, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2898
    iget-object v10, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2899
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v0, v1

    .line 2900
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2902
    move-object v12, v2

    :goto_24
    const/4 v13, 0x0

    if-eqz v12, :cond_ab

    .line 2903
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2904
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v0, :cond_a3

    if-eqz v4, :cond_a3

    iget-object v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 2906
    move-object/from16 v14, p1

    invoke-virtual {v1, v14, v4}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 2907
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v15

    .line 2908
    invoke-interface {v15}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v16

    .line 2909
    if-nez v16, :cond_75

    .line 2910
    invoke-interface {v15}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2912
    nop

    .line 2913
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2914
    sget-object v8, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2915
    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v15

    invoke-virtual/range {v1 .. v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 2923
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2924
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2925
    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_b3

    .line 2927
    :cond_6d
    nop

    .line 2941
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2927
    return-object v13

    .line 2930
    :cond_75
    :try_start_75
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2931
    nop

    .line 2932
    invoke-interface {v15}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v5

    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2931
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 2933
    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2934
    invoke-virtual {v9, v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_9b
    .catchall {:try_start_75 .. :try_end_9b} :catchall_b3

    .line 2935
    nop

    .line 2941
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2935
    return-object v16

    .line 2904
    :cond_a3
    move-object/from16 v14, p1

    .line 2902
    :cond_a5
    :try_start_a5
    invoke-interface {v12}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v12
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_b3

    goto/16 :goto_24

    .line 2939
    :cond_ab
    nop

    .line 2941
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2939
    return-object v13

    .line 2941
    :catchall_b3
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_bc

    :goto_bb
    throw v0

    :goto_bc
    goto :goto_bb
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 2831
    move-object/from16 v9, p0

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 2833
    :try_start_7
    iget-object v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v7

    .line 2834
    invoke-virtual {v9, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2836
    iget-object v10, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2837
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v0, v1

    .line 2838
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 2840
    move-object v13, v2

    :goto_24
    const/4 v14, 0x0

    if-eqz v13, :cond_c3

    .line 2841
    invoke-interface {v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2842
    invoke-interface {v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v0, :cond_b9

    if-eqz v4, :cond_b9

    iget-object v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 2844
    move-object/from16 v15, p1

    invoke-virtual {v1, v15, v4}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 2845
    invoke-interface {v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v16

    .line 2846
    invoke-interface/range {v16 .. v16}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 2847
    if-nez v6, :cond_72

    .line 2848
    invoke-interface/range {v16 .. v16}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2850
    nop

    .line 2851
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v11

    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2852
    sget-object v8, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2853
    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v5, p2

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->removeValueFromChain(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 2861
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    sub-int/2addr v1, v11

    .line 2862
    invoke-virtual {v10, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2863
    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_cb

    .line 2865
    :cond_6a
    nop

    .line 2886
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2865
    return v14

    .line 2868
    :cond_72
    :try_start_72
    iget-object v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v6}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 2869
    iget v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v11

    iput v1, v9, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 2870
    nop

    .line 2871
    invoke-interface/range {v16 .. v16}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v5

    sget-object v10, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    .line 2870
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 2872
    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2873
    invoke-virtual {v9, v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_a3
    .catchall {:try_start_72 .. :try_end_a3} :catchall_cb

    .line 2874
    nop

    .line 2886
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2874
    return v11

    .line 2878
    :cond_ab
    :try_start_ab
    invoke-virtual {v9, v13, v7, v8}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recordLockedRead(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_cb

    .line 2879
    nop

    .line 2886
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2879
    return v14

    .line 2844
    :cond_b6
    move-object/from16 v3, p3

    goto :goto_bd

    .line 2842
    :cond_b9
    move-object/from16 v15, p1

    move-object/from16 v3, p3

    .line 2840
    :goto_bd
    :try_start_bd
    invoke-interface {v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v13
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_cb

    goto/16 :goto_24

    .line 2884
    :cond_c3
    nop

    .line 2886
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2884
    return v14

    .line 2886
    :catchall_cb
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_d4

    :goto_d3
    throw v0

    :goto_d4
    goto :goto_d3
.end method

.method runLockedCleanup(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 3365
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3367
    :try_start_6
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3368
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3369
    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3371
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3372
    goto :goto_1b

    .line 3371
    :catchall_16
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    throw p1

    .line 3374
    :cond_1b
    :goto_1b
    return-void
.end method

.method runUnlockedCleanup()V
    .registers 2

    .line 3378
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3379
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->processPendingNotifications()V

    .line 3381
    :cond_b
    return-void
.end method

.method scheduleRefresh(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLandroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "key",
            "hash",
            "oldValue",
            "now",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;TK;ITV;J",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2252
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    sub-long/2addr p5, v0

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-wide v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshNanos:J

    cmp-long v2, p5, v0

    if-lez v2, :cond_27

    .line 2253
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p1

    if-nez p1, :cond_27

    .line 2254
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p7, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object p1

    .line 2255
    if-eqz p1, :cond_27

    .line 2256
    return-object p1

    .line 2259
    :cond_27
    return-object p4
.end method

.method setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "key",
            "value",
            "now"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .line 2007
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    invoke-interface {v1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 2009
    if-ltz p2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    const-string v2, "Weights must be non-negative"

    invoke-static {v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2011
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 2012
    invoke-virtual {v1, p0, p1, p3, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->referenceValue(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2013
    invoke-interface {p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 2014
    invoke-virtual {p0, p1, p2, p4, p5}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->recordWrite(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;IJ)V

    .line 2015
    invoke-interface {v0, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2016
    return-void
.end method

.method storeLoadedValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "oldValueReference",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    .line 3041
    move-object v7, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->lock()V

    .line 3043
    :try_start_8
    iget-object v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v8

    .line 3044
    invoke-virtual {p0, v8, v9}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3046
    iget v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 3047
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->threshold:I

    if-le v1, v2, :cond_23

    .line 3048
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->expand()V

    .line 3049
    iget v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    add-int/2addr v1, v10

    move v11, v1

    goto :goto_24

    .line 3047
    :cond_23
    move v11, v1

    .line 3052
    :goto_24
    iget-object v12, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3053
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    and-int v13, v3, v1

    .line 3054
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 3056
    move-object v14, v1

    :goto_34
    if-eqz v14, :cond_b7

    .line 3057
    invoke-interface {v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 3058
    invoke-interface {v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, v3, :cond_af

    if-eqz v2, :cond_af

    iget-object v4, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->map:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    iget-object v4, v4, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 3060
    invoke-virtual {v4, v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 3061
    invoke-interface {v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 3062
    invoke-interface {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 3065
    move-object/from16 v2, p3

    if-eq v2, v1, :cond_74

    if-nez v4, :cond_5f

    sget-object v5, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->UNSET:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    if-eq v1, v5, :cond_5f

    goto :goto_74

    .line 3081
    :cond_5f
    const/4 v5, 0x0

    sget-object v6, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_da

    .line 3082
    const/4 v0, 0x0

    .line 3094
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3095
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3082
    return v0

    .line 3067
    :cond_74
    :goto_74
    :try_start_74
    iget v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v10

    iput v1, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3068
    invoke-virtual/range {p3 .. p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 3070
    if-nez v4, :cond_84

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->COLLECTED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    goto :goto_86

    :cond_84
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;->REPLACED:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;

    :goto_86
    move-object v6, v1

    .line 3071
    invoke-virtual/range {p3 .. p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->getWeight()I

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalCause;)V

    .line 3072
    add-int/lit8 v11, v11, -0x1

    .line 3074
    :cond_95
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3075
    iput v11, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3076
    invoke-virtual {p0, v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_a4
    .catchall {:try_start_74 .. :try_end_a4} :catchall_da

    .line 3077
    nop

    .line 3094
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3095
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3077
    return v10

    .line 3060
    :cond_ac
    move-object/from16 v2, p3

    goto :goto_b1

    .line 3058
    :cond_af
    move-object/from16 v2, p3

    .line 3056
    :goto_b1
    :try_start_b1
    invoke-interface {v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v14

    goto/16 :goto_34

    .line 3086
    :cond_b7
    iget v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v2, v10

    iput v2, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    .line 3087
    invoke-virtual {p0, v0, v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v14

    .line 3088
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->setValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3089
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3090
    iput v11, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 3091
    invoke-virtual {p0, v14}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->evictEntries(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    :try_end_d2
    .catchall {:try_start_b1 .. :try_end_d2} :catchall_da

    .line 3092
    nop

    .line 3094
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3095
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3092
    return v10

    .line 3094
    :catchall_da
    move-exception v0

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 3095
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_e3

    :goto_e2
    throw v0

    :goto_e3
    goto :goto_e2
.end method

.method tryDrainReferenceQueues()V
    .registers 2

    .line 2346
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2348
    :try_start_6
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2350
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2351
    goto :goto_12

    .line 2350
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    throw v0

    .line 2353
    :cond_12
    :goto_12
    return-void
.end method

.method tryExpireEntries(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "now"
        }
    .end annotation

    .line 2490
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2492
    :try_start_6
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2494
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    .line 2496
    goto :goto_12

    .line 2494
    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->unlock()V

    throw p1

    .line 2498
    :cond_12
    :goto_12
    return-void
.end method
