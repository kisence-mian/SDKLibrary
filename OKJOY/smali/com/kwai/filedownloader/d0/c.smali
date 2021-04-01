.class public Lcom/kwai/filedownloader/d0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwai/filedownloader/d0/a;


# instance fields
.field private final a:Lcom/kwai/filedownloader/d0/b;

.field private final b:Lcom/kwai/filedownloader/d0/d;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/kwai/filedownloader/d0/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/d0/b;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    new-instance v0, Lcom/kwai/filedownloader/d0/d;

    invoke-direct {v0}, Lcom/kwai/filedownloader/d0/d;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-static {}, Lcom/kwai/filedownloader/h0/e;->a()Lcom/kwai/filedownloader/h0/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/kwai/filedownloader/h0/e;->b:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/d0/c;->d:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemitHandoverToDB"

    invoke-static {v1}, Lcom/kwai/filedownloader/h0/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/kwai/filedownloader/d0/c$a;

    invoke-direct {v2, p0}, Lcom/kwai/filedownloader/d0/c$a;-><init>(Lcom/kwai/filedownloader/d0/c;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kwai/filedownloader/d0/c;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/kwai/filedownloader/d0/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/kwai/filedownloader/d0/c;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/kwai/filedownloader/d0/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->i(I)V

    return-void
.end method

.method static synthetic b(Lcom/kwai/filedownloader/d0/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/kwai/filedownloader/d0/c;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    return-object v0
.end method

.method private g(I)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    :goto_1c
    return-void

    :cond_1d
    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->i(I)V

    goto :goto_1c
.end method

.method private h(I)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private i(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/d0/b;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/f0/c;)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->c(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v1, p1}, Lcom/kwai/filedownloader/d0/d;->b(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/f0/a;

    iget-object v2, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v2, v0}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/f0/a;)V

    goto :goto_1a

    :cond_2c
    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/d0/a$a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    iget-object v2, v1, Lcom/kwai/filedownloader/d0/b;->a:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/kwai/filedownloader/d0/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Lcom/kwai/filedownloader/d0/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwai/filedownloader/d0/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->a(I)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/d;->a(I)V

    goto :goto_b
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/d0/b;->a(II)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/d0/d;->a(II)V

    goto :goto_b
.end method

.method public a(IIJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/d0/b;->a(IIJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/d0/d;->a(IIJ)V

    goto :goto_b
.end method

.method public a(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/b;->a(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/d;->a(IJ)V

    goto :goto_b
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/d0/b;->a(IJLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwai/filedownloader/d0/d;->a(IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public a(ILjava/lang/String;JJI)V
    .registers 17

    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/kwai/filedownloader/d0/b;->a(ILjava/lang/String;JJI)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/kwai/filedownloader/d0/d;->a(ILjava/lang/String;JJI)V

    goto :goto_11
.end method

.method public a(ILjava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/d0/b;->a(ILjava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2}, Lcom/kwai/filedownloader/d0/d;->a(ILjava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a(ILjava/lang/Throwable;J)V
    .registers 8

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/d0/b;->a(ILjava/lang/Throwable;J)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->g(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwai/filedownloader/d0/d;->a(ILjava/lang/Throwable;J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwai/filedownloader/f0/a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->a(Lcom/kwai/filedownloader/f0/a;)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/f0/a;)V

    goto :goto_f
.end method

.method public a(Lcom/kwai/filedownloader/f0/c;)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->a(Lcom/kwai/filedownloader/f0/c;)V

    invoke-virtual {p1}, Lcom/kwai/filedownloader/f0/c;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/d;->a(Lcom/kwai/filedownloader/f0/c;)V

    goto :goto_f
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->b(I)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/d;->b(I)V

    goto :goto_b
.end method

.method public b(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/b;->b(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_2c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/d0/c;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/d;->b(IJ)V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_36
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/d;->b(IJ)V

    goto :goto_2c
.end method

.method public c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kwai/filedownloader/f0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/b;->c(IJ)V

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/d0/c;->g(I)V

    :cond_e
    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kwai/filedownloader/d0/d;->c(IJ)V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d0/b;->clear()V

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d0/d;->clear()V

    return-void
.end method

.method public d(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->b:Lcom/kwai/filedownloader/d0/d;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/d;->d(I)Z

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->d(I)Z

    move-result v0

    return v0
.end method

.method public e(I)Lcom/kwai/filedownloader/f0/c;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->a:Lcom/kwai/filedownloader/d0/b;

    invoke-virtual {v0, p1}, Lcom/kwai/filedownloader/d0/b;->e(I)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/d0/c;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/kwai/filedownloader/d0/c;->d:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
