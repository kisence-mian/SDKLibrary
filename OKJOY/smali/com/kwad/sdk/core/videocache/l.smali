.class Lcom/kwad/sdk/core/videocache/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/l$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/core/videocache/n;

.field private final b:Lcom/kwad/sdk/core/videocache/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/videocache/n;Lcom/kwad/sdk/core/videocache/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/n;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/a;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/l;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->f()V

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .registers 8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/l;->a(JJ)V

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private c()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/n;->close()V
    :try_end_5
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private d()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/kwad/sdk/core/videocache/l;->g:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private e()V
    .registers 2

    const/16 v0, 0x64

    iput v0, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    iget v0, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/videocache/l;->a(I)V

    return-void
.end method

.method private f()V
    .registers 10

    const-wide/16 v6, -0x1

    const-wide/16 v2, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->b()J
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_65

    move-result-wide v4

    :try_start_a
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v0, v4, v5}, Lcom/kwad/sdk/core/videocache/n;->a(J)V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/n;->a()J
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_69

    move-result-wide v0

    const/16 v2, 0x2000

    :try_start_17
    new-array v6, v2, [B
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_6e

    move-wide v2, v4

    :goto_1a
    :try_start_1a
    iget-object v4, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v4, v6}, Lcom/kwad/sdk/core/videocache/n;->a([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_55

    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/l;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_44

    :try_start_26
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->d()Z

    move-result v7

    if-eqz v7, :cond_34

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_41

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->c()V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/l;->b(JJ)V

    :goto_33
    return-void

    :cond_34
    :try_start_34
    iget-object v7, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v7, v6, v4}, Lcom/kwad/sdk/core/videocache/a;->a([BI)V

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_41

    int-to-long v4, v4

    add-long/2addr v4, v2

    :try_start_3c
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/kwad/sdk/core/videocache/l;->b(JJ)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6e

    move-wide v2, v4

    goto :goto_1a

    :catchall_41
    move-exception v4

    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v4

    :goto_45
    :try_start_45
    iget-object v5, p0, Lcom/kwad/sdk/core/videocache/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, v4}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_5d

    move-object v4, p0

    :goto_4e
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->c()V

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/l;->b(JJ)V

    goto :goto_33

    :cond_55
    :try_start_55
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->h()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->e()V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_44

    move-object v4, p0

    goto :goto_4e

    :catchall_5d
    move-exception v4

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->c()V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kwad/sdk/core/videocache/l;->b(JJ)V

    throw v4

    :catchall_65
    move-exception v0

    move-object v4, v0

    move-wide v0, v6

    goto :goto_45

    :catchall_69
    move-exception v0

    move-wide v2, v4

    move-object v4, v0

    move-wide v0, v6

    goto :goto_45

    :catchall_6e
    move-exception v2

    move-object v8, v2

    move-wide v2, v4

    move-object v4, v8

    goto :goto_45
.end method

.method private declared-synchronized g()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_47

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Lcom/kwad/sdk/core/videocache/l;->g:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->c()Z

    move-result v1

    if-nez v1, :cond_45

    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kwad/sdk/core/videocache/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kwad/sdk/core/videocache/l$b;-><init>(Lcom/kwad/sdk/core/videocache/l;Lcom/kwad/sdk/core/videocache/l$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    :cond_45
    monitor-exit p0

    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_10

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .registers 7

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->d()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/n;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->a()V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private i()V
    .registers 5

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_a} :catch_c
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    :try_start_a
    monitor-exit v1

    return-void

    :catch_c
    move-exception v0

    new-instance v2, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public a([BJI)I
    .registers 11

    const/16 v4, 0x64

    invoke-static {p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/m;->a([BJI)V

    :goto_5
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->c()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->b()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    iget-boolean v0, p0, Lcom/kwad/sdk/core/videocache/l;->g:Z

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->g()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/l;->b()V

    goto :goto_5

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/videocache/a;->a([BJI)I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v1}, Lcom/kwad/sdk/core/videocache/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    if-eq v1, v4, :cond_3e

    iput v4, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    invoke-virtual {p0, v4}, Lcom/kwad/sdk/core/videocache/l;->a(I)V

    :cond_3e
    return v0
.end method

.method public a()V
    .registers 4

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/l;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown proxy for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/l;->a:Lcom/kwad/sdk/core/videocache/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Lcom/kwad/sdk/core/videocache/l;->g:Z

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_27
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/l;->b:Lcom/kwad/sdk/core/videocache/a;

    invoke-interface {v0}, Lcom/kwad/sdk/core/videocache/a;->close()V
    :try_end_2c
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_1c .. :try_end_2c} :catch_2e
    .catchall {:try_start_1c .. :try_end_2c} :catchall_33

    :goto_2c
    :try_start_2c
    monitor-exit v1

    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/videocache/l;->a(Ljava/lang/Throwable;)V

    goto :goto_2c

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v0
.end method

.method protected a(I)V
    .registers 3

    const/4 v0, 0x0

    throw v0
.end method

.method protected a(JJ)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-nez v4, :cond_1e

    move v0, v1

    :goto_9
    if-eqz v0, :cond_20

    const/16 v0, 0x64

    :goto_d
    iget v3, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    if-eq v0, v3, :cond_28

    move v3, v1

    :goto_12
    if-ltz v4, :cond_2a

    :goto_14
    if-eqz v1, :cond_1b

    if-eqz v3, :cond_1b

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/videocache/l;->a(I)V

    :cond_1b
    iput v0, p0, Lcom/kwad/sdk/core/videocache/l;->h:I

    return-void

    :cond_1e
    move v0, v2

    goto :goto_9

    :cond_20
    long-to-float v0, p1

    long-to-float v3, p3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_d

    :cond_28
    move v3, v2

    goto :goto_12

    :cond_2a
    move v1, v2

    goto :goto_14
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/core/videocache/InterruptedProxyCacheException;

    if-eqz v0, :cond_a

    const-string v0, "ProxyCache is interrupted"

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "ProxyCache error"

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V

    goto :goto_9
.end method
