.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4412
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    .line 4413
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AbstractCacheSet;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4414
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 4423
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4418
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeyIterator;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeyIterator;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 4428
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
