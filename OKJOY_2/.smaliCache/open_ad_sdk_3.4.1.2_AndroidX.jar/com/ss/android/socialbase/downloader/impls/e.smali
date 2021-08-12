.class public Lcom/ss/android/socialbase/downloader/impls/e;
.super Lcom/ss/android/socialbase/downloader/impls/a;
.source "DefaultDownloadEngine.java"


# static fields
.field private static b:Lcom/ss/android/socialbase/downloader/h/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/a;-><init>()V

    .line 52
    new-instance v0, Lcom/ss/android/socialbase/downloader/h/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/h/d;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    .line 53
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_9

    .line 38
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 40
    :cond_9
    return-void
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 46
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_11

    .line 48
    :cond_25
    return-object v1
.end method

.method public static e(Ljava/util/List;)Ljava/lang/Runnable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    if-eqz p0, :cond_65

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_65

    .line 60
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 61
    instance-of v2, v1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_46

    .line 62
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_46

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    .line 64
    nop

    .line 65
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 67
    instance-of v4, v3, Ljava/lang/Runnable;

    if-eqz v4, :cond_3e

    invoke-interface {v1, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 68
    check-cast v3, Ljava/lang/Runnable;

    .line 69
    goto :goto_40

    .line 71
    :cond_3e
    goto :goto_25

    .line 65
    :cond_3f
    move-object v3, v0

    .line 72
    :goto_40
    if-eqz v3, :cond_46

    .line 73
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_47

    .line 74
    return-object v3

    .line 80
    :cond_46
    goto :goto_64

    .line 78
    :catchall_47
    move-exception p0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnstartedTask() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DefaultDownloadEngine"

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_64
    return-object v0

    .line 57
    :cond_65
    :goto_65
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/h/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(IJ)V
    .registers 5

    .line 140
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    if-nez v0, :cond_5

    .line 141
    return-void

    .line 144
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/h/d;->a(IJ)V

    .line 145
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/model/DownloadTask;)V
    .registers 5

    .line 111
    if-nez p2, :cond_3

    .line 112
    return-void

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start doDownload for task : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadTask"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance p1, Lcom/ss/android/socialbase/downloader/h/c;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/e;->a:Lcom/ss/android/socialbase/downloader/h/g;

    invoke-direct {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/h/c;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Landroid/os/Handler;)V

    .line 115
    sget-object p2, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/h/d;->a(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 116
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/h/c;)V
    .registers 3

    .line 103
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    if-nez v0, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/h/d;->b(Lcom/ss/android/socialbase/downloader/h/c;)V

    .line 107
    return-void
.end method

.method public a(I)Z
    .registers 4

    .line 86
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return v1

    .line 88
    :cond_6
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/h/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 89
    return v1

    .line 90
    :cond_d
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/e;->d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 91
    if-nez v0, :cond_14

    .line 92
    return v1

    .line 93
    :cond_14
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isDownloading(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 94
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/e;->b(I)V

    .line 95
    return v1

    .line 97
    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method public b(I)V
    .registers 3

    .line 120
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    if-nez v0, :cond_5

    .line 121
    return-void

    .line 122
    :cond_5
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/h/d;->c(I)V

    .line 123
    return-void
.end method

.method protected c(I)Lcom/ss/android/socialbase/downloader/h/c;
    .registers 3

    .line 127
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/h/d;

    if-nez v0, :cond_6

    .line 128
    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_6
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/h/d;->b(I)Lcom/ss/android/socialbase/downloader/h/c;

    move-result-object p1

    return-object p1
.end method
