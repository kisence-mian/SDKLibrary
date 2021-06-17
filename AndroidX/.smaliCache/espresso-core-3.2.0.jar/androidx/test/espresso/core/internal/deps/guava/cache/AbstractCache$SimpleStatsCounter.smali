.class public final Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

.field private final totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 198
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 199
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 200
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 201
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 202
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    .line 205
    return-void
.end method


# virtual methods
.method public recordEviction()V
    .registers 2

    .line 235
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    .line 236
    return-void
.end method

.method public recordHits(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->hitCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    .line 211
    return-void
.end method

.method public recordLoadException(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadTime"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    .line 230
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    .line 231
    return-void
.end method

.method public recordLoadSuccess(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadTime"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->increment()V

    .line 223
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    .line 224
    return-void
.end method

.method public recordMisses(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$SimpleStatsCounter;->missCount:Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;->add(J)V

    .line 217
    return-void
.end method
