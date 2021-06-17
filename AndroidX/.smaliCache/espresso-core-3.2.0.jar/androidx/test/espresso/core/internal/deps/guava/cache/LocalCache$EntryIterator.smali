.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
        "TK;TV;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4358
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$HashIterator;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 4358
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4362
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$EntryIterator;->nextEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
