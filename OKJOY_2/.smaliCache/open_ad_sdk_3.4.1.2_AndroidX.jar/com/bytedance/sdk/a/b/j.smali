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
            "Ljava/util/Deque<",
            "Lcom/bytedance/sdk/a/b/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    .line 49
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 51
    const-string v1, "OkHttp ConnectionPool"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/bytedance/sdk/a/b/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

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

    cmp-long p1, p2, v0

    if-lez p1, :cond_27

    .line 99
    return-void

    .line 97
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/b/c;J)I
    .registers 10

    .line 263
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->d:Ljava/util/List;

    .line 264
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 267
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    goto :goto_4

    .line 273
    :cond_19
    check-cast v3, Lcom/bytedance/sdk/a/b/a/b/g$a;

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

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/b/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lcom/bytedance/sdk/a/b/a/g/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 280
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 284
    iget-wide v2, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    .line 285
    return v1

    .line 287
    :cond_5b
    goto :goto_4

    .line 289
    :cond_5c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method a(J)J
    .registers 14

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 212
    monitor-enter p0

    .line 213
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v1

    move v6, v5

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 217
    invoke-direct {p0, v7, p1, p2}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a/b/c;J)I

    move-result v8

    if-lez v8, :cond_26

    .line 218
    add-int/lit8 v6, v6, 0x1

    .line 219
    goto :goto_11

    .line 222
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 225
    iget-wide v8, v7, Lcom/bytedance/sdk/a/b/a/b/c;->e:J

    sub-long v8, p1, v8

    .line 226
    cmp-long v10, v8, v3

    if-lez v10, :cond_33

    .line 227
    nop

    .line 228
    move-object v2, v7

    move-wide v3, v8

    .line 230
    :cond_33
    goto :goto_11

    .line 232
    :cond_34
    iget-wide p1, p0, Lcom/bytedance/sdk/a/b/j;->f:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_4e

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-le v5, v0, :cond_3f

    goto :goto_4e

    .line 237
    :cond_3f
    if-lez v5, :cond_44

    .line 239
    sub-long/2addr p1, v3

    monitor-exit p0

    return-wide p1

    .line 240
    :cond_44
    if-lez v6, :cond_48

    .line 242
    monitor-exit p0

    return-wide p1

    .line 245
    :cond_48
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    .line 246
    const-wide/16 p1, -0x1

    monitor-exit p0

    return-wide p1

    .line 236
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_5e

    .line 250
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/b/c;->b()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/net/Socket;)V

    .line 253
    const-wide/16 p1, 0x0

    return-wide p1

    .line 248
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p1
.end method

.method a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 7

    .line 127
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 129
    invoke-virtual {v1, p1, p3}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 130
    const/4 p1, 0x1

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;Z)V

    .line 131
    return-object v1

    .line 133
    :cond_2e
    goto :goto_17

    .line 134
    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;
    .registers 6

    .line 142
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 143
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/a/b/c;

    .line 144
    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/a/b/a/b/c;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/ac;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 145
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/b/c;->d()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 146
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v2

    if-eq v1, v2, :cond_3b

    .line 147
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/b/c;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 149
    :cond_3b
    goto :goto_17

    .line 150
    :cond_3c
    return-object v2
.end method

.method a(Lcom/bytedance/sdk/a/b/a/b/c;)V
    .registers 4

    .line 154
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 155
    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    if-nez v0, :cond_1f

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/j;->b:Z

    .line 157
    sget-object v0, Lcom/bytedance/sdk/a/b/j;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 159
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method b(Lcom/bytedance/sdk/a/b/a/b/c;)Z
    .registers 3

    .line 167
    sget-boolean v0, Lcom/bytedance/sdk/a/b/j;->c:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 168
    :cond_11
    :goto_11
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/a/b/c;->a:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/bytedance/sdk/a/b/j;->e:I

    if-nez v0, :cond_1a

    goto :goto_1f

    .line 172
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    const/4 p1, 0x0

    return p1

    .line 169
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 170
    const/4 p1, 0x1

    return p1
.end method
