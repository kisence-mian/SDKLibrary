.class public Lcom/ss/android/socialbase/downloader/impls/e;
.super Lcom/ss/android/socialbase/downloader/impls/a;
.source "DefaultDownloadEngine.java"


# static fields
.field private static b:Lcom/ss/android/socialbase/downloader/l/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/a;-><init>()V

    .line 52
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/l/d;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    .line 53
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_9

    .line 38
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 40
    :cond_9
    return-void
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 46
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 48
    :cond_25
    return-object v2
.end method

.method public static d(Ljava/util/List;)Ljava/lang/Runnable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move-object v0, v1

    .line 81
    :goto_a
    return-object v0

    .line 60
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 61
    instance-of v2, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_60

    .line 62
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_60

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    .line 65
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 67
    instance-of v4, v0, Ljava/lang/Runnable;

    if-eqz v4, :cond_25

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 68
    check-cast v0, Ljava/lang/Runnable;

    .line 72
    :goto_3d
    if-eqz v0, :cond_60

    .line 73
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_42} :catch_43

    goto :goto_a

    .line 78
    :catch_43
    move-exception v0

    .line 79
    const-string v2, "DefaultDownloadEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUnstartedTask() error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    move-object v0, v1

    .line 81
    goto :goto_a

    :cond_62
    move-object v0, v1

    goto :goto_3d
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/l/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ss/android/socialbase/downloader/g/d;)V
    .registers 6

    .prologue
    .line 111
    if-nez p2, :cond_3

    .line 116
    :goto_2
    return-void

    .line 113
    :cond_3
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start doDownload for task : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/ss/android/socialbase/downloader/l/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/e;->a:Lcom/ss/android/socialbase/downloader/l/f;

    invoke-direct {v0, p2, v1}, Lcom/ss/android/socialbase/downloader/l/c;-><init>(Lcom/ss/android/socialbase/downloader/g/d;Landroid/os/Handler;)V

    .line 115
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/l/d;->a(Lcom/ss/android/socialbase/downloader/l/c;)V

    goto :goto_2
.end method

.method public a(Lcom/ss/android/socialbase/downloader/l/c;)V
    .registers 3

    .prologue
    .line 103
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    if-nez v0, :cond_5

    .line 107
    :goto_4
    return-void

    .line 106
    :cond_5
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/l/d;->b(Lcom/ss/android/socialbase/downloader/l/c;)V

    goto :goto_4
.end method

.method public a(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    if-nez v1, :cond_6

    .line 97
    :cond_5
    :goto_5
    return v0

    .line 88
    :cond_6
    sget-object v1, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/l/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/e;->d(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/b/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 94
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/e;->b(I)V

    goto :goto_5

    .line 97
    :cond_22
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 120
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    if-nez v0, :cond_5

    .line 123
    :goto_4
    return-void

    .line 122
    :cond_5
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/l/d;->c(I)V

    goto :goto_4
.end method

.method protected c(I)Lcom/ss/android/socialbase/downloader/l/c;
    .registers 3

    .prologue
    .line 127
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->b:Lcom/ss/android/socialbase/downloader/l/d;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/l/d;->b(I)Lcom/ss/android/socialbase/downloader/l/c;

    move-result-object v0

    goto :goto_5
.end method
