.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 342
    const-class v0, Lokio/AsyncTimeout;

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 345
    .local v1, "node":Lokio/AsyncTimeout;
    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 347
    .local v3, "startNanos":J
    sget-wide v5, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-wide v7, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_26

    .line 349
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    goto :goto_27

    .line 350
    :cond_26
    nop

    .line 348
    :goto_27
    return-object v2

    .line 353
    .end local v3    # "startNanos":J
    :cond_28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 356
    .local v3, "waitNanos":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_42

    .line 359
    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    .line 360
    .local v7, "waitMillis":J
    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 361
    long-to-int v5, v3

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-object v2

    .line 366
    .end local v7    # "waitMillis":J
    :cond_42
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v5, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v5, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 367
    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 368
    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4
    .param p0, "node"    # Lokio/AsyncTimeout;

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .local v1, "prev":Lokio/AsyncTimeout;
    :goto_5
    if-eqz v1, :cond_17

    .line 129
    iget-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 130
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 132
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 128
    :cond_15
    move-object v1, v2

    goto :goto_5

    .line 137
    .end local v1    # "prev":Lokio/AsyncTimeout;
    :cond_17
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 127
    .end local p0    # "node":Lokio/AsyncTimeout;
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5
    .param p1, "now"    # J

    .line 145
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 12
    .param p0, "node"    # Lokio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 87
    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 88
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 91
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 92
    .local v1, "now":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    .line 95
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    .line 96
    :cond_2f
    cmp-long v3, p1, v3

    if-eqz v3, :cond_38

    .line 97
    add-long v3, v1, p1

    iput-wide v3, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_40

    .line 98
    :cond_38
    if-eqz p3, :cond_66

    .line 99
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_40
    invoke-direct {p0, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 106
    .local v3, "remainingNanos":J
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 107
    .local v5, "prev":Lokio/AsyncTimeout;
    :goto_46
    iget-object v6, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v6, :cond_57

    invoke-direct {v6, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_53

    goto :goto_57

    .line 106
    :cond_53
    iget-object v6, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    move-object v5, v6

    goto :goto_46

    .line 108
    :cond_57
    :goto_57
    iget-object v6, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v6, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    iput-object p0, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 110
    sget-object v6, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v5, v6, :cond_64

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_6c

    .line 116
    .end local v5    # "prev":Lokio/AsyncTimeout;
    :cond_64
    monitor-exit v0

    return-void

    .line 101
    .end local v3    # "remainingNanos":J
    :cond_66
    :try_start_66
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6c

    .line 85
    .end local v1    # "now":J
    .end local p0    # "node":Lokio/AsyncTimeout;
    .end local p1    # "timeoutNanos":J
    .end local p3    # "hasDeadline":Z
    :catchall_6c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 6

    .line 73
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 75
    .local v0, "timeoutNanos":J
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    .line 76
    .local v2, "hasDeadline":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    .line 77
    return-void

    .line 79
    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    .line 81
    return-void

    .line 73
    .end local v0    # "timeoutNanos":J
    .end local v2    # "hasDeadline":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 285
    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final exit(Z)V
    .registers 4
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 275
    .local v0, "timedOut":Z
    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 276
    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    .line 120
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 122
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_c

    .line 296
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 298
    :cond_c
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3
    .param p1, "sink"    # Lokio/Sink;

    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3
    .param p1, "source"    # Lokio/Source;

    .line 232
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    .line 153
    return-void
.end method
