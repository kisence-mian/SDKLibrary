.class public Lcom/ksad/lottie/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static g:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ksad/lottie/h",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ksad/lottie/h",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/ksad/lottie/j",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private volatile f:Lcom/ksad/lottie/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ksad/lottie/k;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/ksad/lottie/j",
            "<TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ksad/lottie/k;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/ksad/lottie/j",
            "<TT;>;>;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/k;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/k;->c:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ksad/lottie/k;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/ksad/lottie/k;->e:Ljava/util/concurrent/FutureTask;

    if-eqz p2, :cond_3d

    :try_start_29
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/j;

    invoke-direct {p0, v0}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/j;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_33

    :goto_32
    return-void

    :catchall_33
    move-exception v0

    new-instance v1, Lcom/ksad/lottie/j;

    invoke-direct {v1, v0}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/j;)V

    goto :goto_32

    :cond_3d
    sget-object v0, Lcom/ksad/lottie/k;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/ksad/lottie/k;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/ksad/lottie/k;->b()V

    goto :goto_32
.end method

.method static synthetic a(Lcom/ksad/lottie/k;)Lcom/ksad/lottie/j;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/k;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ksad/lottie/k$a;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/k$a;-><init>(Lcom/ksad/lottie/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/ksad/lottie/j;)V
    .registers 4
    .param p1    # Lcom/ksad/lottie/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/j",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    invoke-direct {p0}, Lcom/ksad/lottie/k;->a()V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A task may only be set once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/ksad/lottie/k;Lcom/ksad/lottie/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/lottie/k;->a(Lcom/ksad/lottie/j;)V

    return-void
.end method

.method static synthetic a(Lcom/ksad/lottie/k;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/lottie/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ksad/lottie/k;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/lottie/k;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ksad/lottie/k;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/h;

    invoke-interface {v0, p1}, Lcom/ksad/lottie/h;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ksad/lottie/k;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "LOTTIE"

    const-string v1, "Lottie encountered an error but no failure listener was added."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/h;

    invoke-interface {v0, p1}, Lcom/ksad/lottie/h;->a(Ljava/lang/Object;)V

    goto :goto_19
.end method

.method static synthetic b(Lcom/ksad/lottie/k;)Ljava/util/concurrent/FutureTask;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/k;->e:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ksad/lottie/k;->d()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    if-eqz v0, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    new-instance v0, Lcom/ksad/lottie/k$b;

    const-string v1, "LottieTaskObserver"

    invoke-direct {v0, p0, v1}, Lcom/ksad/lottie/k$b;-><init>(Lcom/ksad/lottie/k;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksad/lottie/k;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ksad/lottie/k;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Starting TaskObserver thread"

    invoke-static {v0}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_21

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ksad/lottie/k;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ksad/lottie/k;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    if-eqz v0, :cond_7

    :cond_15
    iget-object v0, p0, Lcom/ksad/lottie/k;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/k;->a:Ljava/lang/Thread;

    const-string v0, "Stopping TaskObserver thread"

    invoke-static {v0}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    goto :goto_7

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/ksad/lottie/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/k;->c()V

    return-void
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/k;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/h",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/ksad/lottie/k",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ksad/lottie/h;->a(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/ksad/lottie/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ksad/lottie/k;->b()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/h",
            "<TT;>;)",
            "Lcom/ksad/lottie/k",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ksad/lottie/k;->f:Lcom/ksad/lottie/j;

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ksad/lottie/h;->a(Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/ksad/lottie/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ksad/lottie/k;->b()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/h",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/ksad/lottie/k",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/lottie/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ksad/lottie/k;->c()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/ksad/lottie/h;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/h",
            "<TT;>;)",
            "Lcom/ksad/lottie/k",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ksad/lottie/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ksad/lottie/k;->c()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
