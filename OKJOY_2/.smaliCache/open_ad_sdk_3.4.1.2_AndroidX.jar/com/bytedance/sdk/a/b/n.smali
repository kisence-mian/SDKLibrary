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
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/a/b/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 216
    if-eqz p3, :cond_c

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/n;->c()V

    .line 217
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/n;->b()I

    move-result p1

    .line 218
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/n;->c:Ljava/lang/Runnable;

    .line 219
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 221
    if-nez p1, :cond_1a

    if-eqz p2, :cond_1a

    .line 222
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 224
    :cond_1a
    return-void

    .line 215
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 219
    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method private b(Lcom/bytedance/sdk/a/b/x$a;)I
    .registers 6

    .line 183
    nop

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/a/b/x$a;

    .line 185
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/x$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/x$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v1, v1, 0x1

    .line 186
    :cond_24
    goto :goto_8

    .line 187
    :cond_25
    return v1
.end method

.method private c()V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/a/b/n;->a:I

    if-lt v0, v1, :cond_b

    return-void

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 166
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/x$a;

    .line 169
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/n;->b(Lcom/bytedance/sdk/a/b/x$a;)I

    move-result v2

    iget v3, p0, Lcom/bytedance/sdk/a/b/n;->b:I

    if-ge v2, v3, :cond_3d

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 171
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/n;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 175
    :cond_3d
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/a/b/n;->a:I

    if-lt v1, v2, :cond_48

    return-void

    .line 176
    :cond_48
    goto :goto_1a

    .line 177
    :cond_49
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 73
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 74
    invoke-static {v1, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 76
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/bytedance/sdk/a/b/x$a;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/a/b/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 202
    return-void
.end method

.method declared-synchronized a(Lcom/bytedance/sdk/a/b/x;)V
    .registers 3

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 195
    monitor-exit p0

    return-void

    .line 193
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .registers 3

    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->f:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 254
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/bytedance/sdk/a/b/x;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/n;->g:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/a/b/n;->a(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 209
    return-void
.end method
