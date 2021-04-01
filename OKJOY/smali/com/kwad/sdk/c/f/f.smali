.class public Lcom/kwad/sdk/c/f/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/f/f$d;
    }
.end annotation


# static fields
.field private static volatile a:J = 0x1d4c0L

.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;

.field private static volatile d:Z

.field private static e:Lcom/kwad/sdk/c/f/h;

.field private static f:Ljava/util/concurrent/ExecutorService;

.field private static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/c/f/h;

    invoke-direct {v0}, Lcom/kwad/sdk/c/f/h;-><init>()V

    sput-object v0, Lcom/kwad/sdk/c/f/f;->e:Lcom/kwad/sdk/c/f/h;

    const/4 v0, 0x0

    sput-object v0, Lcom/kwad/sdk/c/f/f;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/f/f;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/f/f;->b(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 9

    const/4 v2, 0x1

    sget-boolean v0, Lcom/kwad/sdk/c/f/f;->d:Z

    if-nez v0, :cond_3e

    sput-object p0, Lcom/kwad/sdk/c/f/f;->g:Landroid/content/Context;

    invoke-static {p0}, Lcom/kwad/sdk/c/f/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->f()Ljava/lang/String;

    invoke-static {p0}, Lcom/kwad/sdk/c/f/h;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/kwad/sdk/c/f/f;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batch-report"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/c/f/f;->b:Landroid/os/HandlerThread;

    sget-object v0, Lcom/kwad/sdk/c/f/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/kwad/sdk/c/f/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kwad/sdk/c/f/f;->c:Landroid/os/Handler;

    sput-boolean v2, Lcom/kwad/sdk/c/f/f;->d:Z

    :cond_3e
    return-void
.end method

.method public static a(Lcom/kwad/sdk/c/f/a;)V
    .registers 3
    .param p0    # Lcom/kwad/sdk/c/f/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/kwad/sdk/c/f/f;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/c/f/f$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/c/f/f$a;-><init>(Lcom/kwad/sdk/c/f/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method static synthetic a(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/c/f/f;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b()J
    .registers 2

    sget-wide v0, Lcom/kwad/sdk/c/f/f;->a:J

    return-wide v0
.end method

.method private static b(J)V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/c/f/f;->c:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/c/f/f$d;

    invoke-direct {v1}, Lcom/kwad/sdk/c/f/f$d;-><init>()V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const v1, 0x1010111

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/kwad/sdk/c/f/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/c/f/g;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_15

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    new-instance v0, Lcom/kwad/sdk/c/f/f$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/f/f$b;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/kwad/sdk/c/f/f$c;

    invoke-direct {v1, v0, p0}, Lcom/kwad/sdk/c/f/f$c;-><init>(Lcom/kwad/sdk/c/f/d$a;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/c/d/a/a;->b()V

    :cond_15
    return-void
.end method

.method static synthetic c()Lcom/kwad/sdk/c/f/h;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/f/f;->e:Lcom/kwad/sdk/c/f/h;

    return-object v0
.end method

.method static c(J)V
    .registers 4

    const-wide/16 v0, 0x3c

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/kwad/sdk/c/f/f;->a:J

    :goto_b
    return-void

    :cond_c
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/kwad/sdk/c/f/f;->a:J

    goto :goto_b
.end method

.method static synthetic d()Z
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/f/f;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static f()Z
    .registers 4

    sget-object v0, Lcom/kwad/sdk/c/f/f;->e:Lcom/kwad/sdk/c/f/h;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/f/h;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static g()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/c/f/f;->c:Landroid/os/Handler;

    const v1, 0x1010111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/f;->b(J)V

    return-void
.end method
