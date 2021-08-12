.class public Lcom/ss/android/downloadlib/d;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/d$1;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/ss/android/downloadlib/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/d;
    .registers 1

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/d$a;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;Z)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 6

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 87
    goto :goto_e

    .line 85
    :catchall_a
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :goto_e
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 3

    .line 58
    if-nez p1, :cond_3

    .line 59
    return-void

    .line 61
    :cond_3
    if-eqz p2, :cond_f

    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result p2

    if-nez p2, :cond_f

    .line 62
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 64
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    :goto_16
    return-void
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .registers 12

    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_43

    .line 104
    const-class v0, Lcom/ss/android/downloadlib/d;

    monitor-enter v0

    .line 105
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3e

    .line 106
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v10, Lcom/ss/android/downloadlib/g;

    .line 109
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "-CPUThreadPool"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 111
    :cond_3e
    monitor-exit v0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1

    .line 113
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;Z)V

    .line 52
    return-void
.end method

.method public b(Ljava/lang/Runnable;Z)V
    .registers 3

    .line 72
    if-nez p1, :cond_3

    .line 73
    return-void

    .line 75
    :cond_3
    if-eqz p2, :cond_f

    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result p2

    if-nez p2, :cond_f

    .line 76
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 78
    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/d;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_16
    return-void
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .registers 12

    .line 117
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_43

    .line 118
    const-class v0, Lcom/ss/android/downloadlib/d;

    monitor-enter v0

    .line 119
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/downloadlib/d;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_3e

    .line 120
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v10, Lcom/ss/android/downloadlib/g;

    .line 123
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "-IOThreadPool"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 125
    :cond_3e
    monitor-exit v0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1

    .line 127
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 7

    .line 131
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_36

    .line 132
    const-class v0, Lcom/ss/android/downloadlib/d;

    monitor-enter v0

    .line 133
    :try_start_7
    iget-object v1, p0, Lcom/ss/android/downloadlib/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_31

    .line 134
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x0

    new-instance v3, Lcom/ss/android/socialbase/downloader/h/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/ss/android/downloadlib/g;

    .line 135
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-ScheduledThreadPool"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 137
    :cond_31
    monitor-exit v0

    goto :goto_36

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1

    .line 139
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public e()V
    .registers 2

    .line 151
    new-instance v0, Lcom/ss/android/downloadlib/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/d$1;-><init>(Lcom/ss/android/downloadlib/d;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method
