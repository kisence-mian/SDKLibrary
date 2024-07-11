.class final Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorExtractor.java"


# static fields
.field private static final ASYNC_TASK_CLASS_NAME:Ljava/lang/String; = "android.os.AsyncTask"

.field private static final LEGACY_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LEGACY_ASYNC_TASK_FIELD_NAME:Ljava/lang/String; = "sExecutor"

.field private static final LOAD_ASYNC_TASK_CLASS:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final MODERN_ASYNC_TASK_CLASS_NAME:Ljava/lang/String; = "androidx.loader.content.ModernAsyncTask"

.field private static final MODERN_ASYNC_TASK_EXTRACTOR:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODERN_ASYNC_TASK_FIELD_NAME:Ljava/lang/String; = "THREAD_POOL_EXECUTOR"

.field private static final POST_HONEYCOMB_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$2;

    invoke-direct {v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->MODERN_ASYNC_TASK_EXTRACTOR:Ljava/util/concurrent/Callable;

    .line 125
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$3;

    invoke-direct {v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$3;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->LOAD_ASYNC_TASK_CLASS:Ljava/util/concurrent/Callable;

    .line 133
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$4;

    invoke-direct {v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$4;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->LEGACY_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;

    .line 150
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$5;

    invoke-direct {v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$5;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->POST_HONEYCOMB_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->mainHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Callable;
    .registers 1

    .line 39
    sget-object v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->LOAD_ASYNC_TASK_CLASS:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method private runOnMainThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "futureToRun"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 83
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    iget-object v1, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor$1;-><init>(Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :try_start_1a
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 101
    goto :goto_25

    .line 97
    :catch_1e
    move-exception v0

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 102
    :goto_25
    goto :goto_31

    .line 99
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while waiting for task to complete."

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 103
    :cond_2e
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 106
    :goto_31
    return-object p1
.end method


# virtual methods
.method public getAsyncTaskThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 4

    .line 53
    nop

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 55
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->LEGACY_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    goto :goto_16

    .line 57
    :cond_f
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->POST_HONEYCOMB_ASYNC_TASK_EXECUTOR:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 61
    :goto_16
    :try_start_16
    invoke-direct {p0, v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->runOnMainThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_26} :catch_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_26} :catch_27

    return-object v0

    .line 64
    :catch_27
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    :catch_32
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to get the async task executor!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCompatAsyncTaskThreadPool()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->MODERN_ASYNC_TASK_EXTRACTOR:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->runOnMainThread(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_12

    .line 71
    return-object v0

    .line 76
    :catch_12
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :catch_1d
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to get the compat async executor!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
