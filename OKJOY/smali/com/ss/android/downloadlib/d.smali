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
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 11

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/ss/android/socialbase/downloader/l/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v9, Lcom/ss/android/downloadlib/h;

    .line 42
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "-ThreadPool"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/d$1;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ss/android/downloadlib/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/d;
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lcom/ss/android/downloadlib/d$a;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 50
    :goto_5
    return-void

    .line 47
    :catch_6
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public b()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ss/android/downloadlib/d;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 58
    :goto_9
    return-void

    .line 56
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9
.end method

.method public c()V
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/ss/android/downloadlib/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/d$1;-><init>(Lcom/ss/android/downloadlib/d;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
