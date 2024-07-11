.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field volatile oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final stopwatch:Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3392
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->unset()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V

    .line 3393
    return-void
.end method

.method public constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3388
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;->create()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    .line 3389
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;->createUnstarted()Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->stopwatch:Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;

    .line 3396
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    .line 3397
    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3423
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "value",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3499
    return-object p0
.end method

.method public elapsedNanos()J
    .registers 3

    .line 3474
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->stopwatch:Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3493
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3488
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 3411
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 3406
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 3401
    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "loader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3442
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->stopwatch:Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;->start()Landroidx/test/espresso/core/internal/deps/guava/base/Stopwatch;

    .line 3443
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3444
    if-nez v0, :cond_1f

    .line 3445
    invoke-virtual {p2, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3446
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_1e
    return-object p1

    .line 3448
    :cond_1f
    invoke-virtual {p2, p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 3449
    if-nez p1, :cond_2b

    .line 3450
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3454
    :cond_2b
    new-instance p2, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference$1;

    invoke-direct {p2, p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;)V

    .line 3463
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3454
    invoke-static {p1, p2, v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/Futures;->transform(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;Landroidx/test/espresso/core/internal/deps/guava/base/Function;Ljava/util/concurrent/Executor;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object p1

    .line 3464
    :catchall_39
    move-exception p1

    .line 3465
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    goto :goto_47

    :cond_43
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3466
    :goto_47
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_52

    .line 3467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 3469
    :cond_52
    return-object p2
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 3428
    if-eqz p1, :cond_6

    .line 3431
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3434
    :cond_6
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->unset()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->oldValue:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;

    .line 3438
    :goto_c
    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 3415
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 3419
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$LoadingValueReference;->futureValue:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
