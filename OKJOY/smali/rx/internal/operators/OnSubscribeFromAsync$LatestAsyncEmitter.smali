.class final Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 421
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 422
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 424
    return-void
.end method


# virtual methods
.method drain()V
    .registers 15

    .prologue
    .line 458
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_9

    .line 531
    :goto_8
    return-void

    .line 462
    :cond_9
    const/4 v6, 0x1

    .line 463
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->actual:Lrx/Subscriber;

    .line 464
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 467
    .local v8, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->get()J

    move-result-wide v10

    .line 468
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 470
    .local v2, "e":J
    :goto_14
    cmp-long v9, v2, v10

    if-eqz v9, :cond_41

    .line 471
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 472
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_8

    .line 476
    :cond_23
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 478
    .local v1, "d":Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 480
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_39

    const/4 v4, 0x1

    .line 482
    .local v4, "empty":Z
    :goto_2d
    if-eqz v1, :cond_3f

    if-eqz v4, :cond_3f

    .line 483
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 484
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_3b

    .line 485
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 480
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_39
    const/4 v4, 0x0

    goto :goto_2d

    .line 487
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_3b
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 492
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3f
    if-eqz v4, :cond_50

    .line 501
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_41
    cmp-long v9, v2, v10

    if-nez v9, :cond_78

    .line 502
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 503
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_8

    .line 496
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_50
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v7}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 498
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 499
    goto :goto_14

    .line 507
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5d
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 509
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_72

    const/4 v4, 0x1

    .line 511
    .restart local v4    # "empty":Z
    :goto_66
    if-eqz v1, :cond_78

    if-eqz v4, :cond_78

    .line 512
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 513
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_74

    .line 514
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 509
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_72
    const/4 v4, 0x0

    goto :goto_66

    .line 516
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_74
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 522
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_78
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_81

    .line 523
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 526
    :cond_81
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 527
    if-nez v6, :cond_e

    goto/16 :goto_8
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 442
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 443
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 436
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 437
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 430
    return-void
.end method

.method onRequested()V
    .registers 1

    .prologue
    .line 447
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 448
    return-void
.end method

.method onUnsubscribed()V
    .registers 3

    .prologue
    .line 452
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    .line 453
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 455
    :cond_e
    return-void
.end method
