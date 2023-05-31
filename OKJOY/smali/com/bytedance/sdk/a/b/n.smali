.class public final Lcom/bytedance/sdk/a/b/n;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/bytedance/sdk/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/bytedance/sdk/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/bytedance/sdk/a/b/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x40

    iput v0, p0, Lcom/bytedance/sdk/a/b/n;->a:I

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/a/b/n;->b:I

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/n;->e:Ljava/util/Deque;

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    .line 69
    return-void
.end method

.method private a(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque",
            "<TT;>;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 219
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    .line 216
    :cond_12
    if-eqz p3, :cond_17

    :try_start_14
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/n;->c()V

    .line 217
    :cond_17
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/n;->b()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/n;->c:Ljava/lang/Runnable;

    .line 219
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_f

    .line 221
    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    .line 222
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 224
    :cond_25
    return-void
.end method

.method private b(Lcom/bytedance/sdk/a/b/x$a;)I
    .registers 6

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/x$a;

    .line 185
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/x$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/x$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, v1, 0x1

    :goto_24
    move v1, v0

    .line 186
    goto :goto_8

    .line 187
    :cond_26
    return v1

    :cond_27
    move v0, v1

    goto :goto_24
.end method

.method private c()V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/a/b/n;->a:I

    if-lt v0, v1, :cond_b

    .line 177
    :cond_a
    :goto_a
    return-void

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/x$a;

    .line 169
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/n;->b(Lcom/bytedance/sdk/a/b/x$a;)I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/a/b/n;->b:I

    if-ge v2, v3, :cond_3c

    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 171
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/a/b/n;->a:I

    if-lt v0, v2, :cond_19

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_20

    .line 73
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 74
    invoke-static {v0, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 76
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/bytedance/sdk/a/b/x$a;)V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/a/b/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 202
    return-void
.end method

.method declared-synchronized a(Lcom/bytedance/sdk/a/b/x;)V
    .registers 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/bytedance/sdk/a/b/x;)V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/a/b/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 209
    return-void
.end method
