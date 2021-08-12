.class public Lcom/sigmob/wire/okio/Timeout;
.super Ljava/lang/Object;


# static fields
.field public static final NONE:Lcom/sigmob/wire/okio/Timeout;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/okio/Timeout$1;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Timeout$1;-><init>()V

    sput-object v0, Lcom/sigmob/wire/okio/Timeout;->NONE:Lcom/sigmob/wire/okio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    return-object p0
.end method

.method public clearTimeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public final deadline(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    if-eqz p3, :cond_16

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duration <= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public deadlineNanoTime()J
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime:J

    return-object p0
.end method

.method public hasDeadline()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .registers 5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    goto :goto_20

    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    if-eqz p3, :cond_f

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos:J

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public timeoutNanos()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos:J

    return-wide v0
.end method
