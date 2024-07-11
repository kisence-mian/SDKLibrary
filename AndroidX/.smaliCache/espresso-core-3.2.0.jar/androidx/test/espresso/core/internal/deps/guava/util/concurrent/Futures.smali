.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/GwtFuturesCatchingSpecialization;
.source "Futures.java"


# direct methods
.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1030
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1031
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 127
    if-nez p0, :cond_5

    .line 130
    sget-object p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    .line 131
    return-object p0

    .line 133
    :cond_5
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static transform(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Landroidx/test/espresso/core/internal/deps/guava/base/Function;Ljava/util/concurrent/Executor;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "function",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 420
    invoke-static {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractTransformFuture;->create(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Landroidx/test/espresso/core/internal/deps/guava/base/Function;Ljava/util/concurrent/Executor;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
