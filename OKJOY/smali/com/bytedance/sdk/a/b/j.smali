.class public final Lcom/bytedance/sdk/a/b/j;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/b/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/bytedance/sdk/a/b/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/bytedance/sdk/a/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 51
    invoke-static {v0, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    .line 49
    return-void

    :cond_27
    move v0, v2

    .line 43
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 88
    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 9

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/bytedance/sdk/a/b/j$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/j$1;-><init>(Lcom/bytedance/sdk/a/b/j;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->g:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    .line 79
    new-instance v0, Lcom/bytedance/sdk/a/b/a/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/j;->a:Lcom/bytedance/sdk/a/b/a/b/d;

    .line 92
    iput p1, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    .line 93
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    .line 96
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3f

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3f
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/b/c;J)I
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    move v1, v2

    .line 264
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5d

    .line 265
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 267
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 268
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 269
    goto :goto_4

    .line 273
    :cond_1a
    check-cast v0, Lcom/bytedance/sdk/a/b/a/b/g$a;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/b/c;->a()Lcom/bytedance/sdk/a/b/ac;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/ac;->a()Lcom/bytedance/sdk/a/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v5

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    .line 283
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    .line 289
    :goto_5c
    return v2

    :cond_5d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5c
.end method


# virtual methods
.method a(J)J
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 206
    .line 208
    const/4 v1, 0x0

    .line 209
    const-wide/high16 v4, -0x8000000000000000L

    .line 212
    monitor-enter p0

    .line 213
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    move v7, v0

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 214
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 217
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a/b/c;J)I

    move-result v3

    if-lez v3, :cond_23

    .line 218
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 219
    goto :goto_d

    .line 222
    :cond_23
    add-int/lit8 v6, v2, 0x1

    .line 225
    iget-wide v2, v0, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    sub-long v2, p1, v2

    .line 226
    cmp-long v9, v2, v4

    if-lez v9, :cond_65

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_30
    move-wide v4, v0

    move-object v1, v2

    move v2, v6

    .line 230
    goto :goto_d

    .line 232
    :cond_34
    iget-wide v8, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_3e

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-le v2, v0, :cond_4e

    .line 236
    :cond_3e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_55

    .line 250
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/c;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 253
    const-wide/16 v0, 0x0

    :goto_4d
    return-wide v0

    .line 237
    :cond_4e
    if-lez v2, :cond_58

    .line 239
    :try_start_50
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4d

    .line 248
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    .line 240
    :cond_58
    if-lez v7, :cond_5e

    .line 242
    :try_start_5a
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    monitor-exit p0

    goto :goto_4d

    .line 245
    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    .line 246
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_4d

    :cond_65
    move-object v2, v1

    move-wide v0, v4

    goto :goto_30
.end method

.method a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 7

    .prologue
    .line 127
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 129
    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V

    .line 134
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 142
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 144
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 145
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 146
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v3

    if-eq v0, v3, :cond_17

    .line 147
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;)Ljava/net/Socket;

    move-result-object v0

    .line 150
    :goto_39
    return-object v0

    :cond_3a
    move-object v0, v1

    goto :goto_39
.end method

.method a(Lcom/bytedance/sdk/a/b/a/b/c;)V
    .registers 4

    .prologue
    .line 154
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    if-nez v0, :cond_1e

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    .line 157
    sget-object v0, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 159
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method b(Lcom/bytedance/sdk/a/b/a/b/c;)Z
    .registers 3

    .prologue
    .line 167
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_10
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-nez v0, :cond_1f

    .line 169
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_1e
    return v0

    .line 172
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    const/4 v0, 0x0

    goto :goto_1e
.end method
