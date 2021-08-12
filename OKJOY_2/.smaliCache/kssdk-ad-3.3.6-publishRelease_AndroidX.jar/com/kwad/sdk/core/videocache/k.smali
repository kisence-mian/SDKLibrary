.class Lcom/kwad/sdk/core/videocache/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/videocache/m;

.field private final b:Lcom/kwad/sdk/core/videocache/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/m;Lcom/kwad/sdk/core/videocache/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/videocache/m;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/videocache/a;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->e()V

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(JJ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/k;->a(JJ)V

    iget-object p1, p0, Lcom/kwad/sdk/core/videocache/k;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget-object p2, p0, Lcom/kwad/sdk/core/videocache/k;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_d
    move-exception p2

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p2
.end method

.method private declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget-boolean v1, p0, Lcom/kwad/sdk/core/videocache/k;->g:Z

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->d()Z

    move-result v1

    if-nez v1, :cond_47

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kwad/sdk/core/videocache/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kwad/sdk/core/videocache/k$a;-><init>(Lcom/kwad/sdk/core/videocache/k;Lcom/kwad/sdk/core/videocache/k$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    :cond_47
    monitor-exit p0

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_a} :catch_e
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :try_start_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    goto :goto_17

    :catch_e
    move-exception v1

    new-instance v2, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_c

    throw v1
.end method

.method private e()V
    .registers 9

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    :try_start_4
    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v4}, Lcom/kwad/sdk/core/videocache/a;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-interface {v4, v2, v3}, Lcom/kwad/sdk/core/videocache/m;->a(J)V

    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-interface {v4}, Lcom/kwad/sdk/core/videocache/m;->a()J

    move-result-wide v0

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_19
    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-interface {v5, v4}, Lcom/kwad/sdk/core/videocache/m;->a([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    iget-object v6, p0, Lcom/kwad/sdk/core/videocache/k;->d:Ljava/lang/Object;

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_49

    :try_start_25
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->h()Z

    move-result v7

    if-eqz v7, :cond_33

    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3f

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->i()V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/k;->b(JJ)V

    return-void

    :cond_33
    :try_start_33
    iget-object v7, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v7, v4, v5}, Lcom/kwad/sdk/core/videocache/a;->a([BI)V

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3f

    int-to-long v5, v5

    add-long/2addr v2, v5

    :try_start_3b
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/k;->b(JJ)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    goto :goto_19

    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v4

    :cond_42
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->g()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->f()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_52

    :catchall_49
    move-exception v4

    :try_start_4a
    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, v4}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_59

    :goto_52
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->i()V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/k;->b(JJ)V

    return-void

    :catchall_59
    move-exception v4

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->i()V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/k;->b(JJ)V

    throw v4
.end method

.method private f()V
    .registers 2

    const/16 v0, 0x64

    iput v0, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    iget v0, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/videocache/k;->a(I)V

    return-void
.end method

.method private g()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->h()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-interface {v3}, Lcom/kwad/sdk/core/videocache/m;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->c()V

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private h()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/kwad/sdk/core/videocache/k;->g:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private i()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/m;->b()V
    :try_end_5
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Throwable;)V

    :goto_24
    return-void
.end method


# virtual methods
.method public a([BJI)I
    .registers 9

    invoke-static {p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/l;->a([BJI)V

    :goto_3
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->d()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->a()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    iget-boolean v0, p0, Lcom/kwad/sdk/core/videocache/k;->g:Z

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->c()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->d()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/k;->b()V

    goto :goto_3

    :cond_25
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/a;->a([BJI)I

    move-result p1

    iget-object p2, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {p2}, Lcom/kwad/sdk/core/videocache/a;->d()Z

    move-result p2

    if-eqz p2, :cond_3e

    iget p2, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_3e

    iput p3, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/core/videocache/k;->a(I)V

    :cond_3e
    return p1
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/k;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/k;->a:Lcom/kwad/sdk/core/videocache/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    const/4 v1, 0x1

    :try_start_1e
    iput-boolean v1, p0, Lcom/kwad/sdk/core/videocache/k;->g:Z

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_29
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/k;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->b()V
    :try_end_2e
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_1e .. :try_end_2e} :catch_2f
    .catchall {:try_start_1e .. :try_end_2e} :catchall_35

    goto :goto_33

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Throwable;)V

    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw v1
.end method

.method protected a(I)V
    .registers 2

    return-void
.end method

.method protected a(JJ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v3, :cond_10

    const/16 p1, 0x64

    goto :goto_17

    :cond_10
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_17
    iget p2, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    if-eq p1, p2, :cond_1d

    move p2, v1

    goto :goto_1e

    :cond_1d
    move p2, v2

    :goto_1e
    if-ltz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    if-eqz v1, :cond_29

    if-eqz p2, :cond_29

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/k;->a(I)V

    :cond_29
    iput p1, p0, Lcom/kwad/sdk/core/videocache/k;->h:I

    return-void
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 3

    instance-of p1, p1, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;

    const-string v0, "ProxyCache"

    if-eqz p1, :cond_c

    const-string p1, "ProxyCache is interrupted"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    const-string p1, "ProxyCache error"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method
