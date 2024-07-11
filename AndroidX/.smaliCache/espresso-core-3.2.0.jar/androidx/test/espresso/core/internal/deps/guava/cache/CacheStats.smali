.class public final Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 31
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
            "hitCount",
            "missCount",
            "loadSuccessCount",
            "loadExceptionCount",
            "totalLoadTime",
            "evictionCount"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_1c

    const/16 v17, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v17, 0x0

    :goto_1e
    invoke-static/range {v17 .. v17}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 84
    cmp-long v17, v3, v15

    if-ltz v17, :cond_28

    const/16 v17, 0x1

    goto :goto_2a

    :cond_28
    const/16 v17, 0x0

    :goto_2a
    invoke-static/range {v17 .. v17}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 85
    cmp-long v17, v5, v15

    if-ltz v17, :cond_34

    const/16 v17, 0x1

    goto :goto_36

    :cond_34
    const/16 v17, 0x0

    :goto_36
    invoke-static/range {v17 .. v17}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 86
    cmp-long v17, v7, v15

    if-ltz v17, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    :goto_42
    invoke-static/range {v17 .. v17}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 87
    cmp-long v17, v9, v15

    if-ltz v17, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    :goto_4e
    invoke-static/range {v17 .. v17}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 88
    cmp-long v17, v11, v15

    if-ltz v17, :cond_56

    goto :goto_57

    :cond_56
    const/4 v13, 0x0

    :goto_57
    invoke-static {v13}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 90
    iput-wide v1, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->hitCount:J

    .line 91
    iput-wide v3, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->missCount:J

    .line 92
    iput-wide v5, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadSuccessCount:J

    .line 93
    iput-wide v7, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadExceptionCount:J

    .line 94
    iput-wide v9, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->totalLoadTime:J

    .line 95
    iput-wide v11, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->evictionCount:J

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 258
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 259
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;

    .line 260
    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->hitCount:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->hitCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->missCount:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->missCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadSuccessCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadExceptionCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->totalLoadTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->evictionCount:J

    iget-wide v4, p1, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->evictionCount:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1

    .line 267
    :cond_39
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 252
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->hitCount:J

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->totalLoadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->evictionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 252
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 272
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->hitCount:J

    .line 273
    const-string v3, "hitCount"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->missCount:J

    .line 274
    const-string v3, "missCount"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadSuccessCount:J

    .line 275
    const-string v3, "loadSuccessCount"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->loadExceptionCount:J

    .line 276
    const-string v3, "loadExceptionCount"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->totalLoadTime:J

    .line 277
    const-string v3, "totalLoadTime"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheStats;->evictionCount:J

    .line 278
    const-string v3, "evictionCount"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method
