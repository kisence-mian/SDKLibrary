.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/Cache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4695
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    .line 4696
    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;->localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    .line 4700
    return-void
.end method


# virtual methods
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

    .line 4707
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;->localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAll()V
    .registers 2

    .line 4751
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;->localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->clear()V

    .line 4752
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

    .line 4730
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;->localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4731
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 4784
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LocalManualCache;->localCache:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ManualSerializationProxy;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;)V

    return-object v0
.end method
