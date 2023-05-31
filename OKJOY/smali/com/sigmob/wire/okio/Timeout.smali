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
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime:J

    return-wide v0
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

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, Lcom/sigmob/wire/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos:J

    return-object p0
.end method

.method public timeoutNanos()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos:J

    return-wide v0
.end method
