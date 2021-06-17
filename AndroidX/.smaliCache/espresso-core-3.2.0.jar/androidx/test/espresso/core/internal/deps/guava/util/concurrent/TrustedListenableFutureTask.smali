.class Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;
.super Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;
.source "TrustedListenableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
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

    .line 66
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 67
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 68
    return-void
.end method

.method static create(Ljava/lang/Runnable;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static create(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected afterDone()V
    .registers 2

    .line 89
    invoke-super {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;->afterDone()V

    .line 91
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->wasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 93
    if-eqz v0, :cond_10

    .line 94
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->interruptTask()V

    .line 98
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 99
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 4

    .line 103
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 104
    if-eqz v0, :cond_2c

    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2c
    invoke-super {p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/FluentFuture$TrustedFuture;->pendingToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 2

    .line 76
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 77
    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;->run()V

    .line 84
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/TrustedListenableFutureTask;->task:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/InterruptibleTask;

    .line 85
    return-void
.end method
