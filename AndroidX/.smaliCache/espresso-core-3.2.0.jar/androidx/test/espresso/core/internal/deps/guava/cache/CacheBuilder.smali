.class public final Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;,
        Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final EMPTY_STATS:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

.field valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

.field weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 166
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$1;-><init>()V

    .line 167
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Suppliers;->ofInstance(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->NULL_STATS_COUNTER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    .line 191
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->EMPTY_STATS:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;

    .line 193
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$2;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->CACHE_STATS_COUNTER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    .line 217
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$3;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->NULL_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    .line 225
    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->strictParsing:Z

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->initialCapacity:I

    .line 232
    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel:I

    .line 233
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    .line 234
    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    .line 240
    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 243
    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 246
    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->refreshNanos:J

    .line 255
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->NULL_STATS_COUNTER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->statsCounterSupplier:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    .line 257
    return-void
.end method

.method private checkNonLoadingCache()V
    .registers 6

    .line 870
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 871
    return-void
.end method

.method private checkWeightWithWeigher()V
    .registers 8

    .line 874
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_16

    .line 875
    iget-wide v5, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_3b

    .line 877
    :cond_16
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_28

    .line 878
    iget-wide v5, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_3b

    .line 880
    :cond_28
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_3b

    .line 881
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "androidx.test.espresso.core.internal.deps.guava.cache.CacheBuilder"

    const-string v3, "checkWeightWithWeigher"

    const-string v4, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_3b
    :goto_3b
    return-void
.end method

.method public static newBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 864
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 865
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 866
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "concurrencyLevel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 400
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 404
    if-lez p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 405
    iput p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel:I

    .line 406
    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 693
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 697
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v2, v0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 698
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 699
    return-object p0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 656
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 660
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v2, v0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 661
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 662
    return-object p0
.end method

.method getConcurrencyLevel()I
    .registers 3

    .line 410
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x4

    :cond_6
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .registers 6

    .line 703
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 704
    const-wide/16 v0, 0x0

    goto :goto_c

    .line 705
    :cond_b
    nop

    .line 703
    :goto_c
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .registers 6

    .line 666
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    return-wide v0
.end method

.method getInitialCapacity()I
    .registers 3

    .line 365
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x10

    :cond_7
    return v0
.end method

.method getKeyEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getKeyStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->defaultEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;
    .registers 3

    .line 575
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .registers 6

    .line 535
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    goto :goto_19

    .line 538
    :cond_f
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    if-nez v0, :cond_16

    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    goto :goto_18

    :cond_16
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    :goto_18
    return-wide v0

    .line 536
    :cond_19
    :goto_19
    return-wide v2
.end method

.method getRefreshNanos()J
    .registers 6

    .line 745
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    return-wide v0
.end method

.method getRemovalListener()Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$NullListener;

    .line 808
    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    .line 807
    return-object v0
.end method

.method getStatsCounterSupplier()Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->statsCounterSupplier:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordsTime"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    if-eqz v0, :cond_5

    .line 766
    return-object v0

    .line 768
    :cond_5
    if-eqz p1, :cond_c

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->systemTicker()Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    move-result-object p1

    goto :goto_e

    :cond_c
    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->NULL_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    :goto_e
    return-object p1
.end method

.method getValueEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->getValueStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->defaultEquivalence()Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;
    .registers 3

    .line 632
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->STRONG:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    return-object v0
.end method

.method keyEquivalence(Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "equivalence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 315
    return-object p0
.end method

.method public maximumSize(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 435
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    :goto_d
    const-string v7, "maximum size was already set to %s"

    invoke-static {v6, v7, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 437
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 441
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 442
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    const-string v0, "maximum size must not be negative"

    invoke-static {v4, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    .line 444
    return-object p0
.end method

.method public maximumWeight(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumWeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 476
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    :goto_d
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v6, v7, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 480
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 482
    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    .line 483
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    const-string p1, "maximum weight must not be negative"

    invoke-static {v4, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 484
    return-object p0
.end method

.method public removalListener(Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 799
    nop

    .line 800
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    .line 801
    return-object p0
.end method

.method setKeyStrength(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 570
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 571
    return-object p0
.end method

.method setValueStrength(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 627
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 628
    return-object p0
.end method

.method public ticker(Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ticker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 760
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    .line 761
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 893
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 894
    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 895
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 897
    :cond_e
    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v2, :cond_17

    .line 898
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 900
    :cond_17
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_24

    .line 901
    const-string v5, "maximumSize"

    invoke-virtual {v0, v5, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 903
    :cond_24
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2f

    .line 904
    const-string v5, "maximumWeight"

    invoke-virtual {v0, v5, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 906
    :cond_2f
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-string v5, "ns"

    const/16 v6, 0x16

    cmp-long v7, v1, v3

    if-eqz v7, :cond_4f

    .line 907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 909
    :cond_4f
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_6b

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 912
    :cond_6b
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-eqz v1, :cond_7c

    .line 913
    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 915
    :cond_7c
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    if-eqz v1, :cond_8d

    .line 916
    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 918
    :cond_8d
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    if-eqz v1, :cond_96

    .line 919
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 921
    :cond_96
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    if-eqz v1, :cond_9f

    .line 922
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 924
    :cond_9f
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    if-eqz v1, :cond_a8

    .line 925
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    .line 927
    :cond_a8
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueEquivalence(Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "equivalence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 336
    return-object p0
.end method

.method public weigher(Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weigher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 520
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_1f

    .line 521
    iget-wide v3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 529
    :cond_1f
    nop

    .line 530
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    .line 531
    return-object p0
.end method
