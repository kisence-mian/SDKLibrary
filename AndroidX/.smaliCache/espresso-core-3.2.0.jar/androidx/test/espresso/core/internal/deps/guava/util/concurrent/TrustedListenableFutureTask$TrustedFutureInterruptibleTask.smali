.class final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedFutureInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;-><init>()V

    .line 115
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    .line 116
    return-void
.end method


# virtual methods
.method afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 130
    if-nez p2, :cond_8

    .line 131
    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {p2, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->set(Ljava/lang/Object;)Z

    goto :goto_d

    .line 133
    :cond_8
    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    .line 135
    :goto_d
    return-void
.end method

.method final isDone()Z
    .registers 2

    .line 120
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->isDone()Z

    move-result v0

    return v0
.end method

.method runInterruptibly()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toPendingString()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
