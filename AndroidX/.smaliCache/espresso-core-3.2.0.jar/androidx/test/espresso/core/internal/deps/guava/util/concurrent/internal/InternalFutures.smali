.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutures;
.super Ljava/lang/Object;
.source "InternalFutures.java"


# direct methods
.method public static tryInternalFastPathGetFailure(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/internal/InternalFutureFailureAccess;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
