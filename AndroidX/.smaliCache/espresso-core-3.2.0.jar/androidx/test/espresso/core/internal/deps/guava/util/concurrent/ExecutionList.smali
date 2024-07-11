.class public final Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executed:Z

.field private runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "executor"
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 151
    goto :goto_48

    .line 143
    :catch_4
    move-exception v5

    .line 147
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " with executor "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "androidx.test.espresso.core.internal.deps.guava.util.concurrent.ExecutionList"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :goto_48
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "executor"
        }
    .end annotation

    .line 72
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_b
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    if-nez v0, :cond_1a

    .line 80
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;)V

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 81
    monitor-exit p0

    return-void

    .line 83
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1f

    .line 88
    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 89
    return-void

    .line 83
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public execute()V
    .registers 4

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    if-eqz v0, :cond_7

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executed:Z

    .line 111
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->runnables:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 113
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_29

    .line 123
    nop

    .line 124
    :goto_11
    if-eqz v0, :cond_1c

    .line 125
    nop

    .line 126
    iget-object v2, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 127
    iput-object v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 128
    nop

    .line 129
    move-object v1, v0

    move-object v0, v2

    goto :goto_11

    .line 130
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_28

    .line 131
    iget-object v0, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    iget-object v2, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 132
    iget-object v1, v1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ExecutionList$RunnableExecutorPair;

    goto :goto_1c

    .line 134
    :cond_28
    return-void

    .line 113
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    goto :goto_2d

    :goto_2c
    throw v0

    :goto_2d
    goto :goto_2c
.end method
