.class public Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
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
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 43
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    invoke-direct {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;-><init>()V

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->executionList:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
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
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 43
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    invoke-direct {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;-><init>()V

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->executionList:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    .line 72
    return-void
.end method

.method public static create(Ljava/lang/Runnable;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;
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
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;
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
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "exec"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->executionList:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 81
    return-void
.end method

.method protected done()V
    .registers 2

    .line 86
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->executionList:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->execute()V

    .line 87
    return-void
.end method
