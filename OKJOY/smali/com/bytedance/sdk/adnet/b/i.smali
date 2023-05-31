.class public Lcom/bytedance/sdk/adnet/b/i;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/n$a",
        "<TT;>;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/bytedance/sdk/adnet/core/n",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/bytedance/sdk/adnet/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 66
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/b/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bytedance/sdk/adnet/b/i",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/bytedance/sdk/adnet/b/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/b/i;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-eqz v0, :cond_b

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/n;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_19

    .line 125
    :goto_9
    monitor-exit p0

    return-object v0

    .line 108
    :cond_b
    if-nez p1, :cond_1c

    .line 109
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result v0

    if-nez v0, :cond_41

    .line 110
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_d

    .line 104
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 115
    :goto_2d
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result v4

    if-nez v4, :cond_41

    cmp-long v4, v0, v2

    if-gez v4, :cond_41

    .line 116
    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_2d

    .line 121
    :cond_41
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-nez v0, :cond_4b

    .line 122
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 125
    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/n;
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_19

    goto :goto_9
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/n;
    .registers 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/n;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 146
    monitor-exit p0

    return-void

    .line 143
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/bytedance/sdk/adnet/core/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/n;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    .line 90
    :catch_6
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/n;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 153
    monitor-exit p0

    return-void

    .line 150
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 74
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-nez v1, :cond_8

    .line 82
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 78
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_15

    .line 80
    const/4 v0, 0x1

    goto :goto_6

    .line 74
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/i;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    goto :goto_5
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isCancelled()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
