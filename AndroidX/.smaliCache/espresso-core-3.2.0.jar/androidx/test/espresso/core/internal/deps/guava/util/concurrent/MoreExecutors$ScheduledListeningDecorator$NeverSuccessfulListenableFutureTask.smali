.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NeverSuccessfulListenableFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 612
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->delegate:Ljava/lang/Runnable;

    .line 613
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 618
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    .line 622
    nop

    .line 623
    return-void

    .line 619
    :catchall_7
    move-exception v0

    .line 620
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$ScheduledListeningDecorator$NeverSuccessfulListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    .line 621
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
