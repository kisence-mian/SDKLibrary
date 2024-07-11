.class public Lcom/sigmob/volley/h;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/sigmob/volley/g;

.field private final c:Lcom/sigmob/volley/b;

.field private final d:Lcom/sigmob/volley/p;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/g;Lcom/sigmob/volley/b;Lcom/sigmob/volley/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;",
            "Lcom/sigmob/volley/g;",
            "Lcom/sigmob/volley/b;",
            "Lcom/sigmob/volley/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/h;->e:Z

    iput-object p1, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/sigmob/volley/h;->b:Lcom/sigmob/volley/g;

    iput-object p3, p0, Lcom/sigmob/volley/h;->c:Lcom/sigmob/volley/b;

    iput-object p4, p0, Lcom/sigmob/volley/h;->d:Lcom/sigmob/volley/p;

    return-void
.end method

.method private a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/t;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sigmob/volley/m;->b(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/t;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/volley/h;->d:Lcom/sigmob/volley/p;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/m;

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/h;->a(Lcom/sigmob/volley/m;)V

    return-void
.end method

.method private b(Lcom/sigmob/volley/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->h()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/h;->e:Z

    invoke-virtual {p0}, Lcom/sigmob/volley/h;->interrupt()V

    return-void
.end method

.method public a(Lcom/sigmob/volley/m;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_4
    const-string v2, "network-queue-take"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->m()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "network-discard-cancelled"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->x()V

    return-void

    :cond_18
    invoke-direct {p0, p1}, Lcom/sigmob/volley/h;->b(Lcom/sigmob/volley/m;)V

    iget-object v2, p0, Lcom/sigmob/volley/h;->b:Lcom/sigmob/volley/g;

    invoke-interface {v2, p1}, Lcom/sigmob/volley/g;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/j;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {p1, v3}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/sigmob/volley/j;->e:Z

    if-eqz v3, :cond_39

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->w()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v2, "not-modified"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->x()V

    return-void

    :cond_39
    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {p1, v3}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->p()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v2, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/sigmob/volley/h;->c:Lcom/sigmob/volley/b;

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/sigmob/volley/o;->b:Lcom/sigmob/volley/b$a;

    invoke-interface {v3, v4, v5}, Lcom/sigmob/volley/b;->a(Ljava/lang/String;Lcom/sigmob/volley/b$a;)V

    const-string v3, "network-cache-written"

    invoke-virtual {p1, v3}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->v()V

    iget-object v3, p0, Lcom/sigmob/volley/h;->d:Lcom/sigmob/volley/p;

    invoke-interface {v3, p1, v2}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/o;)V
    :try_end_67
    .catch Lcom/sigmob/volley/t; {:try_start_4 .. :try_end_67} :catch_8b
    .catchall {:try_start_4 .. :try_end_67} :catchall_68

    goto :goto_9a

    :catchall_68
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Unhandled exception %s"

    invoke-static {v2, v4, v3}, Lcom/sigmob/volley/u;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/sigmob/volley/t;

    invoke-direct {v3, v2}, Lcom/sigmob/volley/t;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/sigmob/volley/t;->a(J)V

    iget-object v0, p0, Lcom/sigmob/volley/h;->d:Lcom/sigmob/volley/p;

    invoke-interface {v0, p1, v3}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    goto :goto_97

    :catch_8b
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/volley/t;->a(J)V

    invoke-direct {p0, p1, v2}, Lcom/sigmob/volley/h;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/t;)V

    :goto_97
    invoke-virtual {p1}, Lcom/sigmob/volley/m;->x()V

    :goto_9a
    return-void
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/sigmob/volley/h;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    move-exception v0

    iget-boolean v0, p0, Lcom/sigmob/volley/h;->e:Z

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
