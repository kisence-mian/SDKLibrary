.class Lcom/kwai/filedownloader/services/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    const-string v0, "Network"

    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/kwai/filedownloader/services/h;->e:I

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/f/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iput p1, p0, Lcom/kwai/filedownloader/services/h;->d:I

    return-void
.end method

.method private declared-synchronized c()V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    iget-object v3, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v4}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_36

    iget-object v3, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-nez v3, :cond_18

    goto :goto_33

    :cond_18
    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v4

    if-eq v4, p2, :cond_33

    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result p1

    return p1

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_36
    return v0
.end method

.method public a(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_23

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/kwai/filedownloader/services/h;->e:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1e

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    const/4 p1, 0x0

    goto :goto_20

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    :goto_20
    iput p1, p0, Lcom/kwai/filedownloader/services/h;->e:I

    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public declared-synchronized a(I)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/h;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_11

    const-string p1, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_59

    monitor-exit p0

    return v1

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/kwai/filedownloader/f/e;->a(I)I

    move-result p1

    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    const-string v0, "change the max network thread count, from %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/kwai/filedownloader/services/h;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p0, v0, v3}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    const-string v3, "Network"

    invoke-static {p1, v3}, Lcom/kwai/filedownloader/f/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_55

    const-string v3, "recreate the network thread pool and discard %d tasks"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p0, v3, v4}, Lcom/kwai/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_55
    iput p1, p0, Lcom/kwai/filedownloader/services/h;->d:I
    :try_end_57
    .catchall {:try_start_11 .. :try_end_57} :catchall_59

    monitor-exit p0

    return v2

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_a
    iget-object v2, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v2}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2c
    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .registers 7

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->a()V

    iget-object v1, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_31

    const-string v1, "successful cancel %d %B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
