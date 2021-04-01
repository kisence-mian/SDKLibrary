.class public Lcom/sigmob/volley/l;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/volley/k;

.field private final c:Lcom/sigmob/volley/b;

.field private final d:Lcom/sigmob/volley/aa;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/k;Lcom/sigmob/volley/b;Lcom/sigmob/volley/aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;",
            "Lcom/sigmob/volley/k;",
            "Lcom/sigmob/volley/b;",
            "Lcom/sigmob/volley/aa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/l;->e:Z

    iput-object p1, p0, Lcom/sigmob/volley/l;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/sigmob/volley/l;->b:Lcom/sigmob/volley/k;

    iput-object p3, p0, Lcom/sigmob/volley/l;->c:Lcom/sigmob/volley/b;

    iput-object p4, p0, Lcom/sigmob/volley/l;->d:Lcom/sigmob/volley/aa;

    return-void
.end method

.method private a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/ae;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sigmob/volley/q;->b(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/l;->d:Lcom/sigmob/volley/aa;

    invoke-interface {v1, p1, v0}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/l;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/q;

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/l;->a(Lcom/sigmob/volley/q;)V

    return-void
.end method

.method private b(Lcom/sigmob/volley/q;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->l()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/l;->e:Z

    invoke-virtual {p0}, Lcom/sigmob/volley/l;->interrupt()V

    return-void
.end method

.method public a(Lcom/sigmob/volley/q;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_4
    const-string v0, "network-queue-take"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->r()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "network-discard-cancelled"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->C()V

    :goto_17
    return-void

    :cond_18
    invoke-direct {p0, p1}, Lcom/sigmob/volley/l;->b(Lcom/sigmob/volley/q;)V

    iget-object v0, p0, Lcom/sigmob/volley/l;->b:Lcom/sigmob/volley/k;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/k;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/n;

    move-result-object v0

    const-string v1, "network-http-complete"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/sigmob/volley/n;->e:Z

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->B()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v0, "not-modified"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->C()V
    :try_end_38
    .catch Lcom/sigmob/volley/ae; {:try_start_4 .. :try_end_38} :catch_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_38} :catch_79

    goto :goto_17

    :catch_39
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/volley/ae;->a(J)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/l;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->C()V

    goto :goto_17

    :cond_4a
    :try_start_4a
    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;

    move-result-object v0

    const-string v1, "network-parse-complete"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->u()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, v0, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/sigmob/volley/l;->c:Lcom/sigmob/volley/b;

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sigmob/volley/x;->b:Lcom/sigmob/volley/c;

    invoke-interface {v1, v4, v5}, Lcom/sigmob/volley/b;->a(Ljava/lang/String;Lcom/sigmob/volley/c;)V

    const-string v1, "network-cache-written"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    :cond_6d
    invoke-virtual {p1}, Lcom/sigmob/volley/q;->A()V

    iget-object v1, p0, Lcom/sigmob/volley/l;->d:Lcom/sigmob/volley/aa;

    invoke-interface {v1, p1, v0}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/x;)V
    :try_end_78
    .catch Lcom/sigmob/volley/ae; {:try_start_4a .. :try_end_78} :catch_39
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_78} :catch_79

    goto :goto_17

    :catch_79
    move-exception v0

    const-string v1, "Unhandled exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/sigmob/volley/af;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/sigmob/volley/ae;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/ae;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/volley/ae;->a(J)V

    iget-object v0, p0, Lcom/sigmob/volley/l;->d:Lcom/sigmob/volley/aa;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/ae;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->C()V

    goto/16 :goto_17
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/sigmob/volley/l;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    move-exception v0

    iget-boolean v0, p0, Lcom/sigmob/volley/l;->e:Z

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_16
    const-string v0, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
