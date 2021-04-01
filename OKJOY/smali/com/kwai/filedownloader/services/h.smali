.class Lcom/kwai/filedownloader/services/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwai/filedownloader/services/h;->d:I

    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/kwai/filedownloader/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iput p1, p0, Lcom/kwai/filedownloader/services/h;->c:I

    return-void
.end method

.method private declared-synchronized c()V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_2b

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    iput-object v2, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
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
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)I
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_37

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-nez v0, :cond_1c

    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_1c
    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b()I

    move-result v4

    if-eq v4, p2, :cond_18

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b()I

    move-result v0

    goto :goto_4

    :cond_37
    move v0, v1

    goto :goto_4
.end method

.method public a(I)V
    .registers 7

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->e()V

    iget-object v1, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    sget-boolean v1, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_38

    if-eqz v1, :cond_31

    const-string v1, "successful cancel %d %B"

    const/4 v2, 0x2

    :try_start_1e
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public a(Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->f()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_25

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/kwai/filedownloader/services/h;->d:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwai/filedownloader/services/h;->d:I

    :goto_1f
    return-void

    :cond_20
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwai/filedownloader/services/h;->d:I

    goto :goto_1f

    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/h;->c()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2e
    monitor-exit p0

    return-object v2

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/services/h;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/DownloadLaunchRunnable;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public declared-synchronized c(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/kwai/filedownloader/services/h;->a()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t change the max network thread count, because the  network thread pool isn\'t in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly."

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_5e

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Lcom/kwai/filedownloader/h0/e;->a(I)I

    move-result v0

    sget-boolean v2, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v2, :cond_33

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/kwai/filedownloader/services/h;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "change the max network thread count, from %d to %d"

    invoke-static {p0, v3, v2}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    iget-object v2, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    const-string v3, "Network"

    invoke-static {v0, v3}, Lcom/kwai/filedownloader/h0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, p0, Lcom/kwai/filedownloader/services/h;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "recreate the network thread pool and discard %d tasks"

    invoke-static {p0, v2, v3}, Lcom/kwai/filedownloader/h0/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5a
    iput v0, p0, Lcom/kwai/filedownloader/services/h;->c:I
    :try_end_5c
    .catchall {:try_start_13 .. :try_end_5c} :catchall_5e

    move v0, v1

    goto :goto_11

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
