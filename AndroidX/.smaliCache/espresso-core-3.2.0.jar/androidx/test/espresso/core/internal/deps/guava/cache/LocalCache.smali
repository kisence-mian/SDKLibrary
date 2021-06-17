.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Values;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractCacheSet;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueIterator;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeyIterator;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteQueue;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedStrongValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedSoftValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeightedWeakValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakAccessWriteEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakAccessEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessWriteEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongWriteEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractReferenceEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final UNSET:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final entryFactory:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

.field final valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 160
    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 676
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->UNSET:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    .line 893
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$2;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->concurrencyLevel:I

    .line 239
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getKeyStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 240
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getValueStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 242
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getKeyEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 243
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getValueEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 245
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->maxWeight:J

    .line 246
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getWeigher()Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    move-result-object v3

    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    .line 247
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterAccessNanos:J

    .line 248
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterWriteNanos:J

    .line 249
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshNanos:J

    .line 251
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getRemovalListener()Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    move-result-object v3

    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    .line 252
    nop

    .line 253
    sget-object v4, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    if-ne v3, v4, :cond_55

    .line 254
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v3

    goto :goto_5a

    .line 255
    :cond_55
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_5a
    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 257
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsTime()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getTicker(Z)Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    move-result-object v3

    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    .line 258
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesAccessEntries()Z

    move-result v3

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesWriteEntries()Z

    move-result v4

    invoke-static {v0, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;->getFactory(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;ZZ)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->entryFactory:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryFactory;

    .line 259
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getStatsCounterSupplier()Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->globalStatsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    .line 260
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->defaultLoader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;

    .line 262
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getInitialCapacity()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 263
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 264
    int-to-long v3, p2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    .line 272
    :cond_9e
    nop

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    :goto_a3
    iget v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->concurrencyLevel:I

    if-ge v2, v4, :cond_bb

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->evictsBySize()Z

    move-result v4

    if-eqz v4, :cond_b6

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v6, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->maxWeight:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_bb

    .line 275
    :cond_b6
    add-int/lit8 v3, v3, 0x1

    .line 276
    shl-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 278
    :cond_bb
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentShift:I

    .line 279
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentMask:I

    .line 281
    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->newSegmentArray(I)[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v3

    iput-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    .line 283
    div-int v3, p2, v2

    .line 284
    mul-int v4, v3, v2

    if-ge v4, p2, :cond_d1

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 288
    :cond_d1
    nop

    .line 289
    :goto_d2
    if-ge v1, v3, :cond_d7

    .line 290
    shl-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 293
    :cond_d7
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->evictsBySize()Z

    move-result p2

    if-eqz p2, :cond_107

    .line 295
    iget-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->maxWeight:J

    int-to-long v5, v2

    div-long v7, v3, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 296
    rem-long/2addr v3, v5

    .line 297
    nop

    :goto_e7
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    array-length v2, p2

    if-ge v0, v2, :cond_106

    .line 298
    int-to-long v5, v0

    cmp-long v2, v5, v3

    if-nez v2, :cond_f2

    .line 299
    sub-long/2addr v7, v9

    .line 301
    :cond_f2
    nop

    .line 302
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getStatsCounterSupplier()Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    move-result-object v2

    invoke-interface {v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v1, v7, v8, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->createSegment(IJLandroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v2

    aput-object v2, p2, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 304
    :cond_106
    goto :goto_122

    .line 305
    :cond_107
    nop

    :goto_108
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    array-length v2, p2

    if-ge v0, v2, :cond_122

    .line 306
    const-wide/16 v2, -0x1

    .line 307
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getStatsCounterSupplier()Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->createSegment(IJLandroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v2

    aput-object v2, p2, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_108

    .line 310
    :cond_122
    :goto_122
    return-void
.end method

.method static synthetic access$200(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 1

    .line 99
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static connectAccessOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1775
    invoke-interface {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setNextInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1776
    invoke-interface {p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setPreviousInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1777
    return-void
.end method

.method static connectWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previous",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1788
    invoke-interface {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setNextInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1789
    invoke-interface {p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setPreviousInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1790
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 924
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 890
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nulled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1781
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 1782
    invoke-interface {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setNextInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1783
    invoke-interface {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setPreviousInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1784
    return-void
.end method

.method static nullifyWriteOrder(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nulled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1794
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 1795
    invoke-interface {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setNextInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1796
    invoke-interface {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->setPreviousInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1797
    return-void
.end method

.method static rehash(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 1652
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1653
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1654
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1655
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1656
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1657
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 4404
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4406
    return-object v0
.end method

.method static unset()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 723
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->UNSET:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 4139
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 4140
    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->clear()V

    .line 4139
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4142
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 4030
    if-nez p1, :cond_4

    .line 4031
    const/4 p1, 0x0

    return p1

    .line 4033
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4034
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4040
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 4041
    return v2

    .line 4049
    :cond_8
    iget-object v3, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    invoke-virtual {v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->read()J

    move-result-wide v3

    .line 4050
    iget-object v5, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    .line 4051
    const-wide/16 v6, -0x1

    .line 4052
    const/4 v8, 0x0

    :goto_13
    const/4 v9, 0x3

    if-ge v8, v9, :cond_79

    .line 4053
    const-wide/16 v9, 0x0

    .line 4054
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v11, :cond_66

    aget-object v13, v5, v12

    .line 4056
    iget v14, v13, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    .line 4058
    iget-object v14, v13, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4059
    const/4 v15, 0x0

    :goto_23
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_58

    .line 4060
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    :goto_2f
    if-eqz v2, :cond_50

    .line 4061
    move-object/from16 v16, v5

    invoke-virtual {v13, v2, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->getLiveValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    .line 4062
    if-eqz v5, :cond_45

    move-wide/from16 v17, v3

    iget-object v3, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {v3, v1, v5}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4063
    const/4 v1, 0x1

    return v1

    .line 4062
    :cond_45
    move-wide/from16 v17, v3

    .line 4060
    :cond_47
    invoke-interface {v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_2f

    .line 4059
    :cond_50
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    goto :goto_23

    .line 4067
    :cond_58
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    iget v2, v13, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 4054
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1a

    .line 4069
    :cond_66
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v9, v6

    if-nez v2, :cond_6f

    .line 4070
    goto :goto_79

    .line 4072
    :cond_6f
    nop

    .line 4052
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_13

    .line 4074
    :cond_79
    :goto_79
    const/4 v1, 0x0

    return v1
.end method

.method createSegment(IJLandroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialCapacity",
            "maxSegmentWeight",
            "statsCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1732
    new-instance v6, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;IJLandroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;)V

    return-object v6
.end method

.method customWeigher()Z
    .registers 3

    .line 317
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    .line 4175
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4176
    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;

    invoke-direct {v0, p0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntrySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->entrySet:Ljava/util/Set;

    :goto_c
    return-object v0
.end method

.method evictsBySize()Z
    .registers 6

    .line 313
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method expiresAfterAccess()Z
    .registers 6

    .line 329
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method expiresAfterWrite()Z
    .registers 6

    .line 325
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3842
    if-nez p1, :cond_4

    .line 3843
    const/4 p1, 0x0

    return-object p1

    .line 3845
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3846
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3856
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3857
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 3858
    const/4 v0, 0x1

    if-nez p1, :cond_19

    .line 3859
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->globalStatsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    goto :goto_1e

    .line 3861
    :cond_19
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->globalStatsCounter:Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3863
    :goto_1e
    return-object p1
.end method

.method getLiveValue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Ljava/lang/Object;
    .registers 6
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

    .line 1743
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1744
    return-object v1

    .line 1746
    :cond_8
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1747
    if-nez v0, :cond_13

    .line 1748
    return-object v1

    .line 1751
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1752
    return-object v1

    .line 1754
    :cond_1a
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 3870
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3871
    if-eqz p1, :cond_7

    move-object p2, p1

    :cond_7
    return-object p2
.end method

.method hash(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1695
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 1696
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->rehash(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .registers 10

    .line 3802
    nop

    .line 3803
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    .line 3804
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    :goto_8
    array-length v7, v0

    if-ge v4, v7, :cond_1b

    .line 3805
    aget-object v7, v0, v4

    iget v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_12

    .line 3806
    return v3

    .line 3808
    :cond_12
    aget-object v7, v0, v4

    iget v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 3804
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3811
    :cond_1b
    cmp-long v4, v5, v1

    if-eqz v4, :cond_38

    .line 3812
    const/4 v4, 0x0

    :goto_20
    array-length v7, v0

    if-ge v4, v7, :cond_33

    .line 3813
    aget-object v7, v0, v4

    iget v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_2a

    .line 3814
    return v3

    .line 3816
    :cond_2a
    aget-object v7, v0, v4

    iget v7, v7, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    .line 3812
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 3818
    :cond_33
    cmp-long v0, v5, v1

    if-eqz v0, :cond_38

    .line 3819
    return v3

    .line 3822
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method isExpired(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;J)Z
    .registers 10
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
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1761
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_17

    .line 1763
    return v1

    .line 1765
    :cond_17
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_29

    .line 1766
    return v1

    .line 1768
    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4156
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4157
    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;

    invoke-direct {v0, p0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keySet:Ljava/util/Set;

    :goto_c
    return-object v0
.end method

.method longSize()J
    .registers 8

    .line 3826
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    .line 3827
    nop

    .line 3828
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_7
    array-length v5, v0

    if-ge v4, v5, :cond_17

    .line 3829
    aget-object v5, v0, v4

    iget v5, v5, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->count:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 3828
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3831
    :cond_17
    return-wide v2
.end method

.method final newSegmentArray(I)[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1817
    new-array p1, p1, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    return-object p1
.end method

.method processPendingNotifications()V
    .registers 8

    .line 1806
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;

    if-eqz v0, :cond_20

    .line 1808
    :try_start_a
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    invoke-interface {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;->onRemoval(Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalNotification;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_1f

    .line 1809
    :catchall_10
    move-exception v0

    move-object v6, v0

    .line 1810
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "androidx.test.espresso.core.internal.deps.guava.cache.LocalCache"

    const-string v4, "processPendingNotifications"

    const-string v5, "Exception thrown by removal listener"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1811
    :goto_1f
    goto :goto_0

    .line 1813
    :cond_20
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4079
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4082
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4095
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4096
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4097
    goto :goto_8

    .line 4098
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4087
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4090
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method reclaimKey(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 4
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

    .line 1706
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1707
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->reclaimKey(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;I)Z

    .line 1708
    return-void
.end method

.method reclaimValue(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1700
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object v0

    .line 1701
    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getHash()I

    move-result v1

    .line 1702
    invoke-virtual {p0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)Z

    .line 1703
    return-void
.end method

.method recordsAccess()Z
    .registers 2

    .line 349
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .registers 2

    .line 353
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method recordsWrite()Z
    .registers 2

    .line 345
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method refreshes()Z
    .registers 6

    .line 333
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4102
    if-nez p1, :cond_4

    .line 4103
    const/4 p1, 0x0

    return-object p1

    .line 4105
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4106
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 4111
    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 4114
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4115
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 4112
    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4131
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4134
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4120
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4122
    if-nez p2, :cond_a

    .line 4123
    const/4 p1, 0x0

    return p1

    .line 4125
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4126
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method segmentFor(I)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;
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
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segments:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Segment;

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentShift:I

    ushr-int/2addr p1, v1

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->segmentMask:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 3836
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .registers 2

    .line 361
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method usesAccessQueue()Z
    .registers 2

    .line 337
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method usesKeyReferences()Z
    .registers 3

    .line 365
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method usesValueReferences()Z
    .registers 3

    .line 369
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method usesWriteEntries()Z
    .registers 2

    .line 357
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method usesWriteQueue()Z
    .registers 2

    .line 341
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4165
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4166
    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Values;

    invoke-direct {v0, p0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Values;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->values:Ljava/util/Collection;

    :goto_c
    return-object v0
.end method
