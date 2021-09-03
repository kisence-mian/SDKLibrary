.class public Lcom/tds/tapdb/b/o/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source ""


# instance fields
.field private a:J

.field private b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/o/b;

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tds/tapdb/b/o/b;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .registers 4

    iput-wide p1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    iput-object p3, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_26

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_26

    :try_start_9
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_14} :catch_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_14} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_26

    :catch_15
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_26

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_26

    :catch_24
    move-exception p1

    move-object p2, p1

    :cond_26
    :goto_26
    if-eqz p2, :cond_2d

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/o/b;

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-wide v1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    iget-object v3, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/tds/tapdb/b/o/b;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/o/b;

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-wide v1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    iget-object p2, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/tds/tapdb/b/o/b;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/o/b;

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-wide v1, p0, Lcom/tds/tapdb/b/o/a;->a:J

    iget-object v3, p0, Lcom/tds/tapdb/b/o/a;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/tds/tapdb/b/o/b;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method
