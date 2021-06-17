.class Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .registers 1

    .line 184
    return-void
.end method

.method public recordHits(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 170
    return-void
.end method

.method public recordLoadException(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadTime"
        }
    .end annotation

    .line 181
    return-void
.end method

.method public recordLoadSuccess(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadTime"
        }
    .end annotation

    .line 177
    return-void
.end method

.method public recordMisses(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 173
    return-void
.end method
