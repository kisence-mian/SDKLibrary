.class public abstract Lcom/kwad/sdk/core/report/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/report/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kwad/sdk/core/report/d;",
        "R::",
        "Lcom/kwad/sdk/core/network/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile a:J

.field private b:Lcom/kwad/sdk/core/report/i;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/core/report/c;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/c;->a:J

    new-instance v0, Lcom/kwad/sdk/core/report/j;

    invoke-direct {v0}, Lcom/kwad/sdk/core/report/j;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/report/c;->b:Lcom/kwad/sdk/core/report/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/report/c;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/report/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/report/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x5

    iput v0, p0, Lcom/kwad/sdk/core/report/c;->i:I

    sget-object v0, Lcom/kwad/sdk/core/report/c;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3d

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/kwad/sdk/core/report/c;->e:Ljava/util/concurrent/ExecutorService;

    :cond_3d
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/report/c;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/report/c;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/report/c;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/report/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/report/c;->a:J

    return-wide v0
.end method

.method private b(J)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v1, 0x1010111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/kwad/sdk/core/report/c$a;

    iget-object v3, p0, Lcom/kwad/sdk/core/report/c;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/kwad/sdk/core/report/c;->b:Lcom/kwad/sdk/core/report/i;

    invoke-direct {v2, p0, v3, v4}, Lcom/kwad/sdk/core/report/c$a;-><init>(Lcom/kwad/sdk/core/report/c;Landroid/content/Context;Lcom/kwad/sdk/core/report/i;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/core/report/c;)Lcom/kwad/sdk/core/report/i;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/report/c;->b:Lcom/kwad/sdk/core/report/i;

    return-object p0
.end method

.method private c()Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_b

    move v0, v1

    :cond_b
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->h()I

    move-result v1

    shl-int v0, v1, v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/kwad/sdk/core/report/c;->b:Lcom/kwad/sdk/core/report/i;

    invoke-interface {v2}, Lcom/kwad/sdk/core/report/i;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/core/report/c;->i:I

    if-gt v0, v1, :cond_18

    if-lez v0, :cond_13

    iget-wide v0, p0, Lcom/kwad/sdk/core/report/c;->a:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/core/report/c;->a:J

    :cond_13
    iget-wide v0, p0, Lcom/kwad/sdk/core/report/c;->a:J

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/report/c;->b(J)V

    :cond_18
    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/core/report/c;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/c;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/kwad/sdk/core/report/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/report/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/core/report/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/report/c;->d()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/util/List;)Lcom/kwad/sdk/core/network/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TR;"
        }
    .end annotation
.end method

.method public a()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/report/c;->b(J)V

    return-void
.end method

.method protected a(J)V
    .registers 5

    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const-wide/32 p1, 0xea60

    goto :goto_d

    :cond_a
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    :goto_d
    iput-wide p1, p0, Lcom/kwad/sdk/core/report/c;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c;->f:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/report/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c;->d:Landroid/os/Handler;

    return-void
.end method

.method protected a(Lcom/kwad/sdk/core/report/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    new-instance v0, Lcom/kwad/sdk/core/report/c$5;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/report/c$5;-><init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/d;)V

    new-instance v1, Lcom/kwad/sdk/core/report/c$6;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/report/c$6;-><init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/d;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    :cond_f
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/report/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/report/h<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/report/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/c$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/report/c$1;-><init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/kwad/sdk/core/report/i;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/c;->b:Lcom/kwad/sdk/core/report/i;

    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/report/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lcom/kwad/sdk/core/report/c$2;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/core/report/c$2;-><init>(Lcom/kwad/sdk/core/report/c;Ljava/util/List;)V

    new-instance v1, Lcom/kwad/sdk/core/report/c$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/report/c$3;-><init>(Lcom/kwad/sdk/core/report/c;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/i;->a(Lcom/kwad/sdk/core/network/h;)V

    :cond_1a
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(Lcom/kwad/sdk/core/report/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/report/h<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/report/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/report/c$4;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/report/c$4;-><init>(Lcom/kwad/sdk/core/report/c;Lcom/kwad/sdk/core/report/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
