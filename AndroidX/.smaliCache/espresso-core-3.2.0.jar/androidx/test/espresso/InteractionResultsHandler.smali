.class final Landroidx/test/espresso/InteractionResultsHandler;
.super Ljava/lang/Object;
.source "InteractionResultsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    }
.end annotation


# static fields
.field private static final LOCAL_OR_REMOTE_ERROR_PRIORITY:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "InteractionResultsHandl"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 1

    .line 44
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler;->adaptResult(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private static adaptResult(Ljava/util/concurrent/Future;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 121
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success(Ljava/lang/Object;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_f} :catch_22
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    .line 128
    :catch_10
    move-exception p0

    .line 129
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    .line 126
    :catch_16
    move-exception p0

    .line 127
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    .line 124
    :catch_1c
    move-exception p0

    .line 125
    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0

    .line 122
    :catch_22
    move-exception p0

    .line 123
    const v0, 0x7fffffff

    invoke-static {p0}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v1

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-static {p0, v0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;Z)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method private static finalResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 101
    :cond_b
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    instance-of v1, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_31

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 104
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2e

    .line 106
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_22

    .line 107
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 109
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "Unknown error during interactions"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 105
    :cond_2e
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 111
    :cond_31
    instance-of p0, v0, Ljava/lang/InterruptedException;

    if-eqz p0, :cond_3d

    .line 112
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Interrupted while interacting remotely"

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 114
    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Error interacting remotely"

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method static gatherAnyResult(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 52
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/test/espresso/InteractionResultsHandler;->gatherAnyResult(Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static gatherAnyResult(Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tasks",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 63
    nop

    .line 64
    new-instance v5, Landroidx/test/espresso/InteractionResultsHandler$1;

    invoke-direct {v5, v4, v2}, Landroidx/test/espresso/InteractionResultsHandler$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-interface {v4, v5, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 75
    goto :goto_19

    .line 77
    :cond_2f
    const/4 p1, 0x0

    .line 80
    :goto_30
    if-eqz v0, :cond_48

    if-eqz p1, :cond_3b

    :try_start_34
    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isPriority()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_48

    .line 83
    :cond_3b
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    invoke-static {p1, v3}, Landroidx/test/espresso/InteractionResultsHandler;->pickResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p1

    .line 86
    goto :goto_30

    .line 81
    :cond_48
    :goto_48
    invoke-static {p1}, Landroidx/test/espresso/InteractionResultsHandler;->finalResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_4c} :catch_63
    .catchall {:try_start_34 .. :try_end_4c} :catchall_61

    .line 90
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_50
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 91
    invoke-interface {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 92
    goto :goto_50

    .line 81
    :cond_60
    return-object p1

    .line 90
    :catchall_61
    move-exception p1

    goto :goto_6c

    .line 87
    :catch_63
    move-exception p1

    .line 88
    :try_start_64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while interacting"

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_61

    .line 90
    :goto_6c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    .line 91
    invoke-interface {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 92
    goto :goto_70

    :cond_80
    goto :goto_82

    :goto_81
    throw p1

    :goto_82
    goto :goto_81
.end method

.method private static getPriority(Ljava/lang/Throwable;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 156
    if-nez p0, :cond_5

    .line 157
    const/high16 p0, -0x80000000

    return p0

    .line 159
    :cond_5
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-nez v0, :cond_d

    .line 161
    const p0, -0x7fffffff

    return p0

    .line 163
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/remote/NoRemoteEspressoInstanceException;

    if-eqz v0, :cond_17

    .line 165
    const/4 p0, 0x0

    return p0

    .line 166
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroidx/test/espresso/NoActivityResumedException;

    if-eqz p0, :cond_21

    .line 168
    const/4 p0, 0x1

    return p0

    .line 171
    :cond_21
    const p0, 0x7fffffff

    return p0
.end method

.method private static pickResult(Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "one",
            "two"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 134
    if-nez p1, :cond_3

    .line 135
    return-object p0

    .line 136
    :cond_3
    if-nez p0, :cond_6

    .line 137
    return-object p1

    .line 139
    :cond_6
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    return-object p0

    .line 141
    :cond_d
    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    return-object p1

    .line 144
    :cond_14
    invoke-virtual {p0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->getFailure()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/InteractionResultsHandler;->getPriority(Ljava/lang/Throwable;)I

    move-result v1

    if-le v0, v1, :cond_27

    .line 145
    return-object p0

    .line 147
    :cond_27
    return-object p1
.end method
