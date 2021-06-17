.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ListeningDecorator;
.source "MoreExecutors.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScheduledListeningDecorator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;,
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 537
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    .line 538
    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "command",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    move-result-object p1

    .line 543
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 544
    new-instance p3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;

    invoke-direct {p3, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p3
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callable",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 550
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    move-result-object p1

    .line 551
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 552
    new-instance p3, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;

    invoke-direct {p3, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p3
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "command",
            "delay",
            "unit"
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "callable",
            "delay",
            "unit"
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "command",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 558
    new-instance v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;

    invoke-direct {v7, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;-><init>(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 560
    new-instance p2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;

    invoke-direct {p2, v7, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "command",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .line 529
    invoke-virtual/range {p0 .. p6}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "command",
            "initialDelay",
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 566
    new-instance v7, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;

    invoke-direct {v7, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;-><init>(Ljava/lang/Runnable;)V

    .line 567
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->delegate:Ljava/util/concurrent/ScheduledExecutorService;

    .line 568
    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 569
    new-instance p2, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;

    invoke-direct {p2, v7, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "command",
            "initialDelay",
            "delay",
            "unit"
        }
    .end annotation

    .line 529
    invoke-virtual/range {p0 .. p6}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method
