.class public Lcom/sigmob/volley/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x4


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/sigmob/volley/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/sigmob/volley/b;

.field private final g:Lcom/sigmob/volley/k;

.field private final h:Lcom/sigmob/volley/aa;

.field private final i:[Lcom/sigmob/volley/l;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/w;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/sigmob/volley/d;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;I)V
    .registers 7

    new-instance v0, Lcom/sigmob/volley/h;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/sigmob/volley/h;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;ILcom/sigmob/volley/aa;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;ILcom/sigmob/volley/aa;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/u;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/volley/u;->f:Lcom/sigmob/volley/b;

    iput-object p2, p0, Lcom/sigmob/volley/u;->g:Lcom/sigmob/volley/k;

    new-array v0, p3, [Lcom/sigmob/volley/l;

    iput-object v0, p0, Lcom/sigmob/volley/u;->i:[Lcom/sigmob/volley/l;

    iput-object p4, p0, Lcom/sigmob/volley/u;->h:Lcom/sigmob/volley/aa;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/q",
            "<TT;>;)",
            "Lcom/sigmob/volley/q",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :goto_3
    return-object p1

    :cond_4
    invoke-virtual {p1, p0}, Lcom/sigmob/volley/q;->a(Lcom/sigmob/volley/u;)Lcom/sigmob/volley/q;

    iget-object v1, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_28

    invoke-virtual {p0}, Lcom/sigmob/volley/u;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(I)Lcom/sigmob/volley/q;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/q;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->u()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sigmob/volley/u;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/volley/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public a(Lcom/sigmob/volley/v;)V
    .registers 6

    iget-object v1, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/q;

    invoke-interface {p1, v0}, Lcom/sigmob/volley/v;->a(Lcom/sigmob/volley/q;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/volley/q;->q()V

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    return-void
.end method

.method public a(Lcom/sigmob/volley/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/w",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/sigmob/volley/u$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/u$1;-><init>(Lcom/sigmob/volley/u;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/v;)V

    return-void
.end method

.method b(Lcom/sigmob/volley/q;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/q",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    iget-object v1, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/w;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/w;->a(Lcom/sigmob/volley/q;)V

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    return-void
.end method

.method public b(Lcom/sigmob/volley/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/w",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/u;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c()V
    .registers 7

    invoke-virtual {p0}, Lcom/sigmob/volley/u;->d()V

    new-instance v0, Lcom/sigmob/volley/d;

    iget-object v1, p0, Lcom/sigmob/volley/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/sigmob/volley/u;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/sigmob/volley/u;->f:Lcom/sigmob/volley/b;

    iget-object v4, p0, Lcom/sigmob/volley/u;->h:Lcom/sigmob/volley/aa;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/volley/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/b;Lcom/sigmob/volley/aa;)V

    iput-object v0, p0, Lcom/sigmob/volley/u;->k:Lcom/sigmob/volley/d;

    iget-object v0, p0, Lcom/sigmob/volley/u;->k:Lcom/sigmob/volley/d;

    invoke-virtual {v0}, Lcom/sigmob/volley/d;->start()V

    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/sigmob/volley/u;->i:[Lcom/sigmob/volley/l;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    new-instance v1, Lcom/sigmob/volley/l;

    iget-object v2, p0, Lcom/sigmob/volley/u;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/sigmob/volley/u;->g:Lcom/sigmob/volley/k;

    iget-object v4, p0, Lcom/sigmob/volley/u;->f:Lcom/sigmob/volley/b;

    iget-object v5, p0, Lcom/sigmob/volley/u;->h:Lcom/sigmob/volley/aa;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sigmob/volley/l;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/k;Lcom/sigmob/volley/b;Lcom/sigmob/volley/aa;)V

    iget-object v2, p0, Lcom/sigmob/volley/u;->i:[Lcom/sigmob/volley/l;

    aput-object v1, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkDispatcher-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/volley/l;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/volley/l;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_4a
    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/u;->k:Lcom/sigmob/volley/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/volley/u;->k:Lcom/sigmob/volley/d;

    invoke-virtual {v0}, Lcom/sigmob/volley/d;->a()V

    :cond_9
    iget-object v1, p0, Lcom/sigmob/volley/u;->i:[Lcom/sigmob/volley/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_19

    aget-object v3, v1, v0

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/sigmob/volley/l;->a()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public f()Lcom/sigmob/volley/b;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/u;->f:Lcom/sigmob/volley/b;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/u;->i:[Lcom/sigmob/volley/l;

    array-length v0, v0

    return v0
.end method
