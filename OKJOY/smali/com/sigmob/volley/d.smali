.class public Lcom/sigmob/volley/d;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/volley/b;

.field private final e:Lcom/sigmob/volley/aa;

.field private final f:Lcom/sigmob/volley/e;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sigmob/volley/af;->b:Z

    sput-boolean v0, Lcom/sigmob/volley/d;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/b;Lcom/sigmob/volley/aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;",
            "Lcom/sigmob/volley/b;",
            "Lcom/sigmob/volley/aa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/d;->g:Z

    iput-object p1, p0, Lcom/sigmob/volley/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/sigmob/volley/d;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/sigmob/volley/d;->d:Lcom/sigmob/volley/b;

    iput-object p4, p0, Lcom/sigmob/volley/d;->e:Lcom/sigmob/volley/aa;

    new-instance v0, Lcom/sigmob/volley/e;

    invoke-direct {v0, p0}, Lcom/sigmob/volley/e;-><init>(Lcom/sigmob/volley/d;)V

    iput-object v0, p0, Lcom/sigmob/volley/d;->f:Lcom/sigmob/volley/e;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/d;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/d;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/volley/d;)Lcom/sigmob/volley/aa;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/d;->e:Lcom/sigmob/volley/aa;

    return-object v0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/q;

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/d;->a(Lcom/sigmob/volley/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/d;->g:Z

    invoke-virtual {p0}, Lcom/sigmob/volley/d;->interrupt()V

    return-void
.end method

.method public a(Lcom/sigmob/volley/q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->b(Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/sigmob/volley/d;->d:Lcom/sigmob/volley/b;

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/volley/b;->a(Ljava/lang/String;)Lcom/sigmob/volley/c;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/volley/d;->f:Lcom/sigmob/volley/e;

    invoke-static {v0, p1}, Lcom/sigmob/volley/e;->a(Lcom/sigmob/volley/e;Lcom/sigmob/volley/q;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_10

    :cond_30
    invoke-virtual {v0}, Lcom/sigmob/volley/c;->a()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "cache-hit-expired"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/c;)Lcom/sigmob/volley/q;

    iget-object v0, p0, Lcom/sigmob/volley/d;->f:Lcom/sigmob/volley/e;

    invoke-static {v0, p1}, Lcom/sigmob/volley/e;->a(Lcom/sigmob/volley/e;Lcom/sigmob/volley/q;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_10

    :cond_4c
    const-string v1, "cache-hit"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/sigmob/volley/n;

    iget-object v2, v0, Lcom/sigmob/volley/c;->a:[B

    iget-object v3, v0, Lcom/sigmob/volley/c;->g:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/sigmob/volley/n;-><init>([BLjava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/volley/c;->b()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v0, p0, Lcom/sigmob/volley/d;->e:Lcom/sigmob/volley/aa;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V

    goto :goto_10

    :cond_6f
    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/c;)Lcom/sigmob/volley/q;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sigmob/volley/x;->d:Z

    iget-object v0, p0, Lcom/sigmob/volley/d;->f:Lcom/sigmob/volley/e;

    invoke-static {v0, p1}, Lcom/sigmob/volley/e;->a(Lcom/sigmob/volley/e;Lcom/sigmob/volley/q;)Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/sigmob/volley/d;->e:Lcom/sigmob/volley/aa;

    new-instance v2, Lcom/sigmob/volley/d$1;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/volley/d$1;-><init>(Lcom/sigmob/volley/d;Lcom/sigmob/volley/q;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_8d
    iget-object v0, p0, Lcom/sigmob/volley/d;->e:Lcom/sigmob/volley/aa;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/volley/aa;->a(Lcom/sigmob/volley/q;Lcom/sigmob/volley/x;)V

    goto/16 :goto_10
.end method

.method public run()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sigmob/volley/d;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "start new dispatcher"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/sigmob/volley/d;->d:Lcom/sigmob/volley/b;

    invoke-interface {v0}, Lcom/sigmob/volley/b;->a()V

    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/sigmob/volley/d;->b()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    :catch_1a
    move-exception v0

    iget-boolean v0, p0, Lcom/sigmob/volley/d;->g:Z

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_27
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sigmob/volley/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
