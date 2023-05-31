.class Lcom/bytedance/sdk/adnet/core/i;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
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
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;",
            "Lcom/bytedance/sdk/adnet/face/b;",
            "Lcom/bytedance/sdk/adnet/face/a;",
            "Lcom/bytedance/sdk/adnet/face/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/i;->a:Ljava/util/concurrent/BlockingQueue;

    .line 79
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/i;->b:Lcom/bytedance/sdk/adnet/face/b;

    .line 80
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/i;->c:Lcom/bytedance/sdk/adnet/face/a;

    .line 81
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Lcom/bytedance/sdk/adnet/face/c;

    .line 82
    return-void
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;",
            "Lcom/bytedance/sdk/adnet/err/VAdError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/err/VAdError;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

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

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/i;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 128
    return-void
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 99
    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/i;->interrupt()V

    .line 91
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 133
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 135
    :try_start_9
    const-string v0, "network-queue-take"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 140
    const-string v0, "network-discard-cancelled"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_1c
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_9 .. :try_end_1c} :catch_80
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1c} :catch_bf
    .catchall {:try_start_9 .. :try_end_1c} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 195
    :goto_1f
    return-void

    .line 145
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/i;->b(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->b:Lcom/bytedance/sdk/adnet/face/b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/face/b;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/j;

    move-result-object v0

    .line 149
    iget-wide v4, v0, Lcom/bytedance/sdk/adnet/core/j;->f:J

    invoke-virtual {p1, v4, v5}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    .line 150
    const-string v1, "network-http-complete"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 154
    iget-boolean v1, v0, Lcom/bytedance/sdk/adnet/core/j;->e:Z

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->hasHadResponseDelivered()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 155
    const-string v0, "not-modified"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_45
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_20 .. :try_end_45} :catch_80
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_45} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_45} :catch_bf
    .catchall {:try_start_20 .. :try_end_45} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_1f

    .line 161
    :cond_49
    :try_start_49
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v1

    .line 162
    iget-wide v4, v0, Lcom/bytedance/sdk/adnet/core/j;->f:J

    invoke-virtual {p1, v4, v5}, Lcom/bytedance/sdk/adnet/core/Request;->setNetDuration(J)V

    .line 163
    const-string v0, "network-parse-complete"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, v1, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_71

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->c:Lcom/bytedance/sdk/adnet/face/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/sdk/adnet/core/n;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-interface {v0, v4, v5}, Lcom/bytedance/sdk/adnet/face/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/face/a$a;)V

    .line 169
    const-string v0, "network-cache-written"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 173
    :cond_71
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->markDelivered()V

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V

    .line 175
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->b(Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_7c
    .catch Lcom/bytedance/sdk/adnet/err/VAdError; {:try_start_49 .. :try_end_7c} :catch_80
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7c} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_7c} :catch_bf
    .catchall {:try_start_49 .. :try_end_7c} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_1f

    .line 176
    :catch_80
    move-exception v0

    .line 177
    :try_start_81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/core/i;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 179
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_1f

    .line 180
    :catch_94
    move-exception v0

    .line 181
    :try_start_95
    const-string v1, "Unhandled exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_ba
    .catchall {:try_start_95 .. :try_end_ba} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto/16 :goto_1f

    .line 186
    :catch_bf
    move-exception v0

    .line 187
    :try_start_c0
    const-string v1, "NetworkDispatcher Unhandled throwable %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v1, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/adnet/err/VAdError;->setNetworkTimeMs(J)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/i;->d:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 191
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->e()V
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_ea

    .line 193
    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto/16 :goto_1f

    :catchall_ea
    move-exception v0

    invoke-virtual {p1, v7}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 194
    throw v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 103
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 106
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/i;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    .line 107
    :catch_9
    move-exception v0

    .line 109
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/i;->e:Z

    if-eqz v0, :cond_16

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 111
    return-void

    .line 113
    :cond_16
    const-string v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
