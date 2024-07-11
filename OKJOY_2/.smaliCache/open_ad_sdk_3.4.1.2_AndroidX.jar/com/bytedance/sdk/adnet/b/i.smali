.class public Lcom/bytedance/sdk/adnet/b/i;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "Lcom/bytedance/sdk/adnet/core/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

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
            "Lcom/bytedance/sdk/adnet/b/i<",
            "TE;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/bytedance/sdk/adnet/b/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/b/i;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-eqz v0, :cond_9

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4a

    monitor-exit p0

    return-object p1

    .line 108
    :cond_9
    const-wide/16 v0, 0x0

    if-nez p1, :cond_17

    .line 109
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_d

    .line 112
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_3c

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 115
    :goto_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_3c

    cmp-long p1, v0, v2

    if-gez p1, :cond_3c

    .line 116
    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_28

    .line 121
    :cond_3c
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-eqz p1, :cond_44

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;
    :try_end_42
    .catchall {:try_start_d .. :try_end_42} :catchall_4a

    monitor-exit p0

    return-object p1

    .line 122
    :cond_44
    :try_start_44
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4a

    .line 103
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 143
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 146
    monitor-exit p0

    return-void

    .line 142
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/bytedance/sdk/adnet/core/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 90
    :catch_6
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 150
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 153
    monitor-exit p0

    return-void

    .line 149
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 3

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 75
    monitor-exit p0

    return v0

    .line 78
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_16

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_18

    .line 80
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 82
    :cond_16
    monitor-exit p0

    return v0

    .line 73
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/i;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isCancelled()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    .line 138
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
