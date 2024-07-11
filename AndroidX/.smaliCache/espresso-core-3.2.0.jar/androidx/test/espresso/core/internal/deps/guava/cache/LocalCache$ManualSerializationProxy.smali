.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

.field final loader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final maxWeight:J

.field final removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "-TK;-TV;>;"
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

.field final weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;JJJLandroidx/test/espresso/core/internal/deps/guava/cache/Weigher;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyStrength",
            "valueStrength",
            "keyEquivalence",
            "valueEquivalence",
            "expireAfterWriteNanos",
            "expireAfterAccessNanos",
            "maxWeight",
            "weigher",
            "concurrencyLevel",
            "removalListener",
            "ticker",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher<",
            "TK;TV;>;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4574
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;-><init>()V

    .line 4575
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 4576
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 4577
    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 4578
    iput-object p4, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 4579
    iput-wide p5, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4580
    iput-wide p7, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4581
    iput-wide p9, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4582
    iput-object p11, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    .line 4583
    iput p12, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4584
    iput-object p13, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    .line 4585
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;->systemTicker()Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    move-result-object p1

    if-eq p14, p1, :cond_21

    sget-object p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->NULL_TICKER:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    if-ne p14, p1, :cond_22

    :cond_21
    const/4 p14, 0x0

    :cond_22
    iput-object p14, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    .line 4586
    iput-object p15, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->loader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;

    .line 4587
    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4547
    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    iget-object v2, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    iget-object v3, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    iget-object v4, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    iget-wide v5, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterWriteNanos:J

    iget-wide v7, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->expireAfterAccessNanos:J

    iget-wide v9, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->maxWeight:J

    iget-object v11, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    iget v12, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->concurrencyLevel:I

    iget-object v13, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    iget-object v14, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    iget-object v15, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->defaultLoader:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;JJJLandroidx/test/espresso/core/internal/deps/guava/cache/Weigher;ILandroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)V

    .line 4560
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4622
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4623
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object p1

    .line 4624
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->build()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->delegate:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    .line 4625
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 4628
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->delegate:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4633
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->delegate:Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 4527
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method recreateCacheBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4591
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->newBuilder()Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->keyStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 4592
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->setKeyStrength(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->valueStrength:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;

    .line 4593
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->setValueStrength(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$Strength;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 4594
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->keyEquivalence(Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;

    .line 4595
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->valueEquivalence(Landroidx/test/espresso/core/internal/deps/guava/base/Equivalence;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4596
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->concurrencyLevel(I)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->removalListener:Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;

    .line 4597
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->removalListener(Landroidx/test/espresso/core/internal/deps/guava/cache/RemovalListener;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    move-result-object v0

    .line 4598
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->strictParsing:Z

    .line 4599
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_38

    .line 4600
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    .line 4602
    :cond_38
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_43

    .line 4603
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    .line 4605
    :cond_43
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    sget-object v2, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$OneWeigher;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_5a

    .line 4606
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->weigher:Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->weigher(Landroidx/test/espresso/core/internal/deps/guava/cache/Weigher;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    .line 4607
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_63

    .line 4608
    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumWeight(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    goto :goto_63

    .line 4611
    :cond_5a
    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_63

    .line 4612
    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->maximumSize(J)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    .line 4615
    :cond_63
    :goto_63
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;->ticker:Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;

    if-eqz v1, :cond_6a

    .line 4616
    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;->ticker(Landroidx/test/espresso/core/internal/deps/guava/base/Ticker;)Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;

    .line 4618
    :cond_6a
    return-object v0
.end method
