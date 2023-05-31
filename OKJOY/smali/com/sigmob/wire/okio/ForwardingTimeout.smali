.class public Lcom/sigmob/wire/okio/ForwardingTimeout;
.super Lcom/sigmob/wire/okio/Timeout;


# instance fields
.field private delegate:Lcom/sigmob/wire/okio/Timeout;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/Timeout;)V
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/okio/Timeout;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->clearDeadline()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->clearTimeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Timeout;->deadlineNanoTime(J)Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/ForwardingTimeout;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    return-object p0
.end method

.method public throwIfReached()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->throwIfReached()V

    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/ForwardingTimeout;->delegate:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
