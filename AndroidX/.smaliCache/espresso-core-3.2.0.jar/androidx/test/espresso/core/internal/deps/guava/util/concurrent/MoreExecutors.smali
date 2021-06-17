.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ListeningDecorator;
    }
.end annotation


# direct methods
.method public static directExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 392
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/DirectExecutor;

    return-object v0
.end method

.method public static listeningDecorator(Ljava/util/concurrent/ExecutorService;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 459
    instance-of v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    if-eqz v0, :cond_7

    .line 460
    check-cast p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    goto :goto_1a

    .line 461
    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_14

    .line 462
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object p0, v0

    goto :goto_1a

    .line 463
    :cond_14
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    move-object p0, v0

    .line 459
    :goto_1a
    return-object p0
.end method

.method static rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "delegate",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 965
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p0, v0, :cond_d

    .line 969
    return-object p0

    .line 971
    :cond_d
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;-><init>(Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture;)V

    return-object v0
.end method
