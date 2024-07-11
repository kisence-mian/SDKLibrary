.class public Lcom/sigmob/wire/okio/AsyncTimeout;
.super Lcom/sigmob/wire/okio/Timeout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lcom/sigmob/wire/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/sigmob/wire/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/okio/Timeout;-><init>()V

    return-void
.end method

.method static declared-synchronized awaitTimeout()Lcom/sigmob/wire/okio/AsyncTimeout;
    .registers 9

    const-class v0, Lcom/sigmob/wire/okio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    iget-object v1, v1, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_34

    monitor-exit v0

    return-object v2

    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/sigmob/wire/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_34

    monitor-exit v0

    return-object v2

    :cond_2a
    :try_start_2a
    sget-object v3, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    iget-object v4, v1, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object v4, v3, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_34

    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/sigmob/wire/okio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lcom/sigmob/wire/okio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object v2, v1, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_19

    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    goto :goto_13

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/sigmob/wire/okio/AsyncTimeout;JZ)V
    .registers 9

    const-class v0, Lcom/sigmob/wire/okio/AsyncTimeout;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    if-nez v1, :cond_16

    new-instance v1, Lcom/sigmob/wire/okio/AsyncTimeout;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    new-instance v1, Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;->start()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2f

    if-eqz p3, :cond_2f

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :goto_2b
    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_3a

    :cond_2f
    if-eqz v3, :cond_32

    goto :goto_2b

    :cond_32
    if-eqz p3, :cond_5f

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->timeoutAt:J

    :goto_3a
    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    sget-object p3, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    :goto_40
    iget-object v3, p3, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    if-eqz v3, :cond_50

    invoke-direct {v3, v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_4d

    goto :goto_50

    :cond_4d
    iget-object p3, p3, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    goto :goto_40

    :cond_50
    :goto_50
    iget-object p1, p3, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object p1, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    iput-object p0, p3, Lcom/sigmob/wire/okio/AsyncTimeout;->next:Lcom/sigmob/wire/okio/AsyncTimeout;

    sget-object p0, Lcom/sigmob/wire/okio/AsyncTimeout;->head:Lcom/sigmob/wire/okio/AsyncTimeout;

    if-ne p3, p0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_65

    :cond_5d
    monitor-exit v0

    return-void

    :cond_5f
    :try_start_5f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 6

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/AsyncTimeout;->scheduleTimeout(Lcom/sigmob/wire/okio/AsyncTimeout;JZ)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lcom/sigmob/wire/okio/AsyncTimeout;->inQueue:Z

    invoke-static {p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/sigmob/wire/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final sink(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/Sink;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/wire/okio/AsyncTimeout$1;-><init>(Lcom/sigmob/wire/okio/AsyncTimeout;Lcom/sigmob/wire/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/Source;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/wire/okio/AsyncTimeout$2;-><init>(Lcom/sigmob/wire/okio/AsyncTimeout;Lcom/sigmob/wire/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method
