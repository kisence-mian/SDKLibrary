.class public abstract Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ForwardingObject;
.source "ForwardingCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ForwardingObject;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;->delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .line 48
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;->delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAll()V
    .registers 2

    .line 88
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;->delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->invalidateAll()V

    .line 89
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
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
            "(TK;TV;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/ForwardingCache;->delegate()Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
