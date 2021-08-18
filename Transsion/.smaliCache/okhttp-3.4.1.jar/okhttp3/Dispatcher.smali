.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 56
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 57
    return-void
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .registers 6
    .param p3, "promoteCalls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 197
    .local p1, "calls":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .local p2, "call":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 198
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 199
    if-eqz p3, :cond_c

    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteCalls()V

    .line 200
    :cond_c
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v0

    .line 201
    .local v0, "runningCallsCount":I
    iget-object v1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    .line 202
    .local v1, "idleCallback":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 204
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1a

    .line 205
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 207
    :cond_1a
    return-void

    .line 198
    .end local v0    # "runningCallsCount":I
    .end local v1    # "idleCallback":Ljava/lang/Runnable;
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "calls":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .end local p2    # "call":Ljava/lang/Object;, "TT;"
    .end local p3    # "promoteCalls":Z
    throw v0

    .line 202
    .restart local p1    # "calls":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .restart local p2    # "call":Ljava/lang/Object;, "TT;"
    .restart local p3    # "promoteCalls":Z
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v0
.end method

.method private promoteCalls()V
    .registers 5

    .line 154
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v0, v1, :cond_b

    return-void

    .line 155
    :cond_b
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 157
    :cond_14
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/RealCall$AsyncCall;>;"
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 160
    .local v1, "call":Lokhttp3/RealCall$AsyncCall;
    invoke-direct {p0, v1}, Lokhttp3/Dispatcher;->runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I

    move-result v2

    iget v3, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3d

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 162
    iget-object v2, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    :cond_3d
    iget-object v2, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_48

    return-void

    .line 167
    .end local v1    # "call":Lokhttp3/RealCall$AsyncCall;
    :cond_48
    goto :goto_1a

    .line 168
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/RealCall$AsyncCall;>;"
    :cond_49
    return-void
.end method

.method private runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I
    .registers 7
    .param p1, "call"    # Lokhttp3/RealCall$AsyncCall;

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "result":I
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 174
    .local v2, "c":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 175
    .end local v2    # "c":Lokhttp3/RealCall$AsyncCall;
    :cond_23
    goto :goto_7

    .line 176
    :cond_24
    return v0
.end method


# virtual methods
.method public declared-synchronized cancelAll()V
    .registers 4

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 141
    .local v1, "call":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RealCall;->cancel()V

    .line 142
    .end local v1    # "call":Lokhttp3/RealCall$AsyncCall;
    goto :goto_7

    .line 144
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_1b
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 145
    .restart local v1    # "call":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RealCall;->cancel()V

    .line 146
    .end local v1    # "call":Lokhttp3/RealCall$AsyncCall;
    goto :goto_21

    .line 148
    :cond_35
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall;

    .line 149
    .local v1, "call":Lokhttp3/RealCall;
    invoke-virtual {v1}, Lokhttp3/RealCall;->cancel()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4d

    .line 150
    .end local v1    # "call":Lokhttp3/RealCall;
    goto :goto_3b

    .line 151
    :cond_4b
    monitor-exit p0

    return-void

    .line 139
    :catchall_4d
    move-exception v0

    monitor-exit p0

    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method declared-synchronized enqueue(Lokhttp3/RealCall$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/RealCall$AsyncCall;

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_20

    invoke-direct {p0, p1}, Lokhttp3/Dispatcher;->runningCallsForHost(Lokhttp3/RealCall$AsyncCall;)I

    move-result v0

    iget v1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_20

    .line 128
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 131
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_20
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 133
    :goto_25
    monitor-exit p0

    return-void

    .line 126
    .end local p1    # "call":Lokhttp3/RealCall$AsyncCall;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized executed(Lokhttp3/RealCall;)V
    .registers 3
    .param p1, "call"    # Lokhttp3/RealCall;

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 182
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "call":Lokhttp3/RealCall;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 64
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 65
    invoke-static {v1, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_21
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finished(Lokhttp3/RealCall$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/RealCall$AsyncCall;

    .line 186
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 187
    return-void
.end method

.method finished(Lokhttp3/RealCall;)V
    .registers 4
    .param p1, "call"    # Lokhttp3/RealCall;

    .line 191
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 192
    return-void
.end method

.method public declared-synchronized getMaxRequests()I
    .registers 2

    monitor-enter p0

    .line 86
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 86
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .registers 2

    monitor-enter p0

    .line 107
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 107
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queuedCalls()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Call;>;"
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 213
    .local v2, "asyncCall":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    nop

    .end local v2    # "asyncCall":Lokhttp3/RealCall$AsyncCall;
    goto :goto_c

    .line 215
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v1

    .line 210
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Call;>;"
    :catchall_27
    move-exception v0

    monitor-exit p0

    goto :goto_2b

    :goto_2a
    throw v0

    :goto_2b
    goto :goto_2a
.end method

.method public declared-synchronized queuedCallsCount()I
    .registers 2

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 229
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runningCalls()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 220
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Call;>;"
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 223
    .local v2, "asyncCall":Lokhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    nop

    .end local v2    # "asyncCall":Lokhttp3/RealCall$AsyncCall;
    goto :goto_11

    .line 225
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :cond_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object v1

    .line 219
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Call;>;"
    :catchall_2c
    move-exception v0

    monitor-exit p0

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method public declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 233
    .end local p0    # "this":Lokhttp3/Dispatcher;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "idleCallback"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 123
    :try_start_1
    iput-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 124
    monitor-exit p0

    return-void

    .line 122
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "idleCallback":Ljava/lang/Runnable;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxRequests(I)V
    .registers 5
    .param p1, "maxRequests"    # I

    monitor-enter p0

    .line 78
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 81
    :try_start_4
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 82
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 83
    monitor-exit p0

    return-void

    .line 77
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "maxRequests":I
    :catchall_b
    move-exception p1

    goto :goto_26

    .line 79
    .restart local p1    # "maxRequests":I
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_b

    .line 77
    .end local p1    # "maxRequests":I
    :goto_26
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .registers 5
    .param p1, "maxRequestsPerHost"    # I

    monitor-enter p0

    .line 99
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 102
    :try_start_4
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 103
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteCalls()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 104
    monitor-exit p0

    return-void

    .line 98
    .end local p0    # "this":Lokhttp3/Dispatcher;
    .end local p1    # "maxRequestsPerHost":I
    :catchall_b
    move-exception p1

    goto :goto_26

    .line 100
    .restart local p1    # "maxRequestsPerHost":I
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_b

    .line 98
    .end local p1    # "maxRequestsPerHost":I
    :goto_26
    monitor-exit p0

    throw p1
.end method
