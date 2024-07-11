.class public Lcom/kwai/filedownloader/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/filedownloader/b/a;


# instance fields
.field private final a:Lcom/kwai/filedownloader/b/b;

.field private final b:Lcom/kwai/filedownloader/b/d;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/kwai/filedownloader/b/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/b/b;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    new-instance v0, Lcom/kwai/filedownloader/b/d;

    invoke-direct {v0}, Lcom/kwai/filedownloader/b/d;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/kwai/filedownloader/f/e;->b:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/b/c;->d:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    invoke-static {v1}, Lcom/kwai/filedownloader/f/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/kwai/filedownloader/b/c$1;

    invoke-direct {v2, p0}, Lcom/kwai/filedownloader/b/c$1;-><init>(Lcom/kwai/filedownloader/b/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/b/c;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic a(Lcom/kwai/filedownloader/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/b/c;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/kwai/filedownloader/b/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->g(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwai/filedownloader/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic c(Lcom/kwai/filedownloader/b/c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    return-object p0
.end method

.method private g(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/b/b;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/d/c;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/b/d;->d(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/d/a;

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v1, v0}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/d/a;)V

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method private h(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private i(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/b/c;->g:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    goto :goto_20

    :cond_1d
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->g(I)V

    :goto_20
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/b/b;->a()V

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/b/d;->a()V

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/kwai/filedownloader/b/c;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/b/b;->a(II)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/b/d;->a(II)V

    return-void
.end method

.method public a(IIJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/b/b;->a(IIJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/b/d;->a(IIJ)V

    return-void
.end method

.method public a(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/b;->a(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/d;->a(IJ)V

    return-void
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/b/b;->a(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/kwai/filedownloader/b/d;->a(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;JJI)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/kwai/filedownloader/b/b;->a(ILjava/lang/String;JJI)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    :cond_13
    iget-object v2, v0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/kwai/filedownloader/b/d;->a(ILjava/lang/String;JJI)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/b/b;->a(ILjava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/b/d;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;J)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/b/b;->a(ILjava/lang/Throwable;J)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->i(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/b/d;->a(ILjava/lang/Throwable;J)V

    iget-object p2, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->a(Lcom/kwai/filedownloader/d/a;)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/d/a;)V

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/d/c;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->a(Lcom/kwai/filedownloader/d/c;)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/d/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/d;->a(Lcom/kwai/filedownloader/d/c;)V

    return-void
.end method

.method public b()Lcom/kwai/filedownloader/b/a$a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    iget-object v1, v1, Lcom/kwai/filedownloader/b/b;->a:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    iget-object v2, v2, Lcom/kwai/filedownloader/b/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcom/kwai/filedownloader/b/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwai/filedownloader/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/kwai/filedownloader/d/c;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->b(I)Lcom/kwai/filedownloader/d/c;

    move-result-object p1

    return-object p1
.end method

.method public b(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/b;->b(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_2c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/b/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    :cond_27
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/d;->b(IJ)V

    :cond_2c
    iget-object p2, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwai/filedownloader/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->c(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/b;->c(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->i(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/b/d;->c(IJ)V

    iget-object p2, p0, Lcom/kwai/filedownloader/b/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->d(I)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/d;->d(I)V

    return-void
.end method

.method public e(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/d;->e(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->e(I)Z

    move-result p1

    return p1
.end method

.method public f(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->a:Lcom/kwai/filedownloader/b/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/b;->f(I)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/b/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/b/c;->b:Lcom/kwai/filedownloader/b/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/b/d;->f(I)V

    return-void
.end method
