.class Lcom/bytedance/sdk/adnet/core/h;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/adnet/face/b;

.field private final c:Lcom/bytedance/sdk/adnet/face/a;

.field private final d:Lcom/bytedance/sdk/adnet/face/c;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/b;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;",
            "Lcom/bytedance/sdk/adnet/face/b;",
            "Lcom/bytedance/sdk/adnet/face/a;",
            "Lcom/bytedance/sdk/adnet/face/c;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Ljava/util/concurrent/BlockingQueue;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Lcom/bytedance/sdk/adnet/face/b;

    .line 80
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/h;->c:Lcom/bytedance/sdk/adnet/face/a;

    .line 81
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    .line 82
    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .line 198
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/err/VAdError;

    move-result-object p2

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 200
    return-void
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/h;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 128
    return-void
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 99
    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/h;->interrupt()V

    .line 91
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 133
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 135
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    :try_start_b
    const-string v5, "network-queue-take"

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 140
    const-string v5, "network-discard-cancelled"

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_1e
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_b .. :try_end_1e} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_a3
    .catchall {:try_start_b .. :try_end_1e} :catchall_7f

    .line 193
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 142
    return-void

    .line 145
    :cond_22
    :try_start_22
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 148
    iget-object v5, p0, Lcom/bytedance/sdk/adnet/core/h;->b:Lcom/bytedance/sdk/adnet/face/b;

    invoke-interface {v5, p1}, Lcom/bytedance/sdk/adnet/face/b;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/i;

    move-result-object v5

    .line 149
    iget-wide v6, v5, Lcom/bytedance/sdk/adnet/core/i;->f:J

    invoke-virtual {p1, v6, v7}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    .line 150
    const-string v6, "network-http-complete"

    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 154
    iget-boolean v6, v5, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    if-eqz v6, :cond_4b

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->hasHadResponseDelivered()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 155
    const-string v5, "not-modified"

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_47
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_22 .. :try_end_47} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_47} :catch_a3
    .catchall {:try_start_22 .. :try_end_47} :catchall_7f

    .line 193
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 157
    return-void

    .line 161
    :cond_4b
    :try_start_4b
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v6

    .line 162
    iget-wide v7, v5, Lcom/bytedance/sdk/adnet/core/i;->f:J

    invoke-virtual {p1, v7, v8}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    .line 163
    const-string v5, "network-parse-complete"

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_73

    iget-object v5, v6, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v5, :cond_73

    .line 168
    iget-object v5, p0, Lcom/bytedance/sdk/adnet/core/h;->c:Lcom/bytedance/sdk/adnet/face/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-interface {v5, v7, v8}, Lcom/bytedance/sdk/adnet/face/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    .line 169
    const-string v5, "network-cache-written"

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 173
    :cond_73
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->markDelivered()V

    .line 174
    iget-object v5, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v5, p1, v6}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    .line 175
    invoke-virtual {p1, v6}, Lcom/bytedance/sdk/adnet/core/Request;->b(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_7e
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_4b .. :try_end_7e} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7e} :catch_a3
    .catchall {:try_start_4b .. :try_end_7e} :catchall_7f

    goto :goto_d6

    .line 186
    :catchall_7f
    move-exception v5

    .line 187
    :try_start_80
    const-string v6, "NetworkDispatcher Unhandled throwable %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v5, v6, v3}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v2, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v2, v5}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 191
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V

    goto :goto_d6

    .line 180
    :catch_a3
    move-exception v5

    .line 181
    const-string v6, "Unhandled exception %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v5, v6, v3}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v2, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v2, v5}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V

    goto :goto_d6

    .line 176
    :catch_c7
    move-exception v2

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 178
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/adnet/core/h;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_d6
    .catchall {:try_start_80 .. :try_end_d6} :catchall_db

    .line 193
    :goto_d6
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 194
    nop

    .line 195
    return-void

    .line 193
    :catchall_db
    move-exception v0

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 194
    throw v0
.end method

.method public run()V
    .registers 3

    .line 103
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 106
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/h;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 116
    :goto_8
    goto :goto_5

    .line 107
    :catch_9
    move-exception v0

    .line 109
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/h;->e:Z

    if-eqz v0, :cond_16

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 111
    return-void

    .line 113
    :cond_16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method
