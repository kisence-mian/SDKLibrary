.class public Lcom/sigmob/volley/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/n$a;,
        Lcom/sigmob/volley/n$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/sigmob/volley/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/sigmob/volley/b;

.field private final f:Lcom/sigmob/volley/g;

.field private final g:Lcom/sigmob/volley/p;

.field private final h:[Lcom/sigmob/volley/h;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/volley/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/sigmob/volley/c;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;I)V
    .registers 7

    new-instance v0, Lcom/sigmob/volley/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/sigmob/volley/e;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/volley/n;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;ILcom/sigmob/volley/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/g;ILcom/sigmob/volley/p;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/n;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/volley/n;->e:Lcom/sigmob/volley/b;

    iput-object p2, p0, Lcom/sigmob/volley/n;->f:Lcom/sigmob/volley/g;

    new-array p1, p3, [Lcom/sigmob/volley/h;

    iput-object p1, p0, Lcom/sigmob/volley/n;->h:[Lcom/sigmob/volley/h;

    iput-object p4, p0, Lcom/sigmob/volley/n;->g:Lcom/sigmob/volley/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/m<",
            "TT;>;)",
            "Lcom/sigmob/volley/m<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1, p0}, Lcom/sigmob/volley/m;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/m;

    iget-object v0, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2b

    invoke-virtual {p0}, Lcom/sigmob/volley/n;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(I)Lcom/sigmob/volley/m;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->p()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/sigmob/volley/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_24
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_28
    iget-object v0, p0, Lcom/sigmob/volley/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_24

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public a(Lcom/sigmob/volley/n$a;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/m;

    invoke-interface {p1, v2}, Lcom/sigmob/volley/n$a;->a(Lcom/sigmob/volley/m;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/sigmob/volley/m;->l()V

    goto :goto_9

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public b()V
    .registers 7

    invoke-virtual {p0}, Lcom/sigmob/volley/n;->c()V

    new-instance v0, Lcom/sigmob/volley/c;

    iget-object v1, p0, Lcom/sigmob/volley/n;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/sigmob/volley/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/sigmob/volley/n;->e:Lcom/sigmob/volley/b;

    iget-object v4, p0, Lcom/sigmob/volley/n;->g:Lcom/sigmob/volley/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/volley/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/b;Lcom/sigmob/volley/p;)V

    iput-object v0, p0, Lcom/sigmob/volley/n;->j:Lcom/sigmob/volley/c;

    invoke-virtual {v0}, Lcom/sigmob/volley/c;->start()V

    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lcom/sigmob/volley/n;->h:[Lcom/sigmob/volley/h;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    new-instance v1, Lcom/sigmob/volley/h;

    iget-object v2, p0, Lcom/sigmob/volley/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/sigmob/volley/n;->f:Lcom/sigmob/volley/g;

    iget-object v4, p0, Lcom/sigmob/volley/n;->e:Lcom/sigmob/volley/b;

    iget-object v5, p0, Lcom/sigmob/volley/n;->g:Lcom/sigmob/volley/p;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sigmob/volley/h;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/sigmob/volley/g;Lcom/sigmob/volley/b;Lcom/sigmob/volley/p;)V

    iget-object v2, p0, Lcom/sigmob/volley/n;->h:[Lcom/sigmob/volley/h;

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

    invoke-virtual {v1, v2}, Lcom/sigmob/volley/h;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/volley/h;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_48
    return-void
.end method

.method b(Lcom/sigmob/volley/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sigmob/volley/m<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_27

    iget-object v1, p0, Lcom/sigmob/volley/n;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/sigmob/volley/n;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/n$b;

    invoke-interface {v2, p1}, Lcom/sigmob/volley/n$b;->a(Lcom/sigmob/volley/m;)V

    goto :goto_12

    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw p1

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/n;->j:Lcom/sigmob/volley/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sigmob/volley/c;->a()V

    :cond_7
    iget-object v0, p0, Lcom/sigmob/volley/n;->h:[Lcom/sigmob/volley/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/sigmob/volley/h;->a()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/n;->h:[Lcom/sigmob/volley/h;

    array-length v0, v0

    return v0
.end method
