.class public Lcom/sigmob/volley/c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/c$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/volley/b;

.field private final e:Lcom/sigmob/volley/p;

.field private final f:Lcom/sigmob/volley/c$a;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sigmob/volley/u;->b:Z

    sput-boolean v0, Lcom/sigmob/volley/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/b;Lcom/sigmob/volley/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;",
            "Lcom/sigmob/volley/b;",
            "Lcom/sigmob/volley/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/volley/c;->g:Z

    iput-object p1, p0, Lcom/sigmob/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/sigmob/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/sigmob/volley/c;->d:Lcom/sigmob/volley/b;

    iput-object p4, p0, Lcom/sigmob/volley/c;->e:Lcom/sigmob/volley/p;

    new-instance p1, Lcom/sigmob/volley/c$a;

    invoke-direct {p1, p0}, Lcom/sigmob/volley/c$a;-><init>(Lcom/sigmob/volley/c;)V

    iput-object p1, p0, Lcom/sigmob/volley/c;->f:Lcom/sigmob/volley/c$a;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/c;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/volley/c;)Lcom/sigmob/volley/p;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/c;->e:Lcom/sigmob/volley/p;

    return-object p0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/m;

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/c;->a(Lcom/sigmob/volley/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/c;->g:Z

    invoke-virtual {p0}, Lcom/sigmob/volley/c;->interrupt()V

    return-void
.end method

.method public a(Lcom/sigmob/volley/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->b(Ljava/lang/String;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/sigmob/volley/c;->d:Lcom/sigmob/volley/b;

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/volley/b;->a(Ljava/lang/String;)Lcom/sigmob/volley/b$a;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/volley/c;->f:Lcom/sigmob/volley/c$a;

    invoke-static {v0, p1}, Lcom/sigmob/volley/c$a;->a(Lcom/sigmob/volley/c$a;Lcom/sigmob/volley/m;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/sigmob/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_2f
    return-void

    :cond_30
    invoke-virtual {v0}, Lcom/sigmob/volley/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "cache-hit-expired"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/m;

    iget-object v0, p0, Lcom/sigmob/volley/c;->f:Lcom/sigmob/volley/c$a;

    invoke-static {v0, p1}, Lcom/sigmob/volley/c$a;->a(Lcom/sigmob/volley/c$a;Lcom/sigmob/volley/m;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/sigmob/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_4b
    return-void

    :cond_4c
    const-string v1, "cache-hit"

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/sigmob/volley/j;

    iget-object v2, v0, Lcom/sigmob/volley/b$a;->a:[B

    iget-object v3, v0, Lcom/sigmob/volley/b$a;->g:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/sigmob/volley/j;-><init>([BLjava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/volley/b$a;->b()Z

    move-result v2

    if-nez v2, :cond_6f

    :cond_69
    iget-object v0, p0, Lcom/sigmob/volley/c;->e:Lcom/sigmob/volley/p;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;)V

    goto :goto_8c

    :cond_6f
    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {p1, v2}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/m;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sigmob/volley/o;->d:Z

    iget-object v0, p0, Lcom/sigmob/volley/c;->f:Lcom/sigmob/volley/c$a;

    invoke-static {v0, p1}, Lcom/sigmob/volley/c$a;->a(Lcom/sigmob/volley/c$a;Lcom/sigmob/volley/m;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/sigmob/volley/c;->e:Lcom/sigmob/volley/p;

    new-instance v2, Lcom/sigmob/volley/c$1;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/volley/c$1;-><init>(Lcom/sigmob/volley/c;Lcom/sigmob/volley/m;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/sigmob/volley/p;->a(Lcom/sigmob/volley/m;Lcom/sigmob/volley/o;Ljava/lang/Runnable;)V

    :goto_8c
    return-void
.end method

.method public run()V
    .registers 4

    sget-boolean v0, Lcom/sigmob/volley/c;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/sigmob/volley/u;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/sigmob/volley/c;->d:Lcom/sigmob/volley/b;

    invoke-interface {v0}, Lcom/sigmob/volley/b;->a()V

    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/sigmob/volley/c;->b()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    :catch_1a
    move-exception v0

    iget-boolean v0, p0, Lcom/sigmob/volley/c;->g:Z

    if-eqz v0, :cond_27

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_27
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/sigmob/volley/u;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
