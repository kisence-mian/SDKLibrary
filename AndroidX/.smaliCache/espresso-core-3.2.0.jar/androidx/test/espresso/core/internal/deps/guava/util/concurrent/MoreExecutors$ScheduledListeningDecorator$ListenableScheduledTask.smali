.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "MoreExecutors.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenableScheduledTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<",
        "TV;>;",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableScheduledFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listenableDelegate",
            "scheduledDelegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;)V

    .line 580
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    .line 581
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 585
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->cancel(Z)Z

    move-result v0

    .line 586
    if-eqz v0, :cond_b

    .line 588
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 592
    :cond_b
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 572
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
