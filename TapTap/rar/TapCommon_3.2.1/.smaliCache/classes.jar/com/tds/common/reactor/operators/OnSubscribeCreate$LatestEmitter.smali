.class final Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 413
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 416
    return-void
.end method


# virtual methods
.method drain()V
    .registers 14

    .line 450
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    return-void

    .line 454
    :cond_9
    const/4 v0, 0x1

    .line 455
    .local v0, "missed":I
    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 456
    .local v1, "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v2, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 459
    .local v2, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :goto_e
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->get()J

    move-result-wide v3

    .line 460
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 462
    .local v5, "e":J
    :goto_14
    cmp-long v7, v5, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_4e

    .line 463
    invoke-virtual {v1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 464
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 465
    return-void

    .line 468
    :cond_25
    iget-boolean v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 470
    .local v7, "d":Z
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 472
    .local v11, "o":Ljava/lang/Object;
    if-nez v11, :cond_2f

    move v12, v8

    goto :goto_30

    :cond_2f
    move v12, v9

    .line 474
    .local v12, "empty":Z
    :goto_30
    if-eqz v7, :cond_40

    if-eqz v12, :cond_40

    .line 475
    iget-object v8, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 476
    .local v8, "ex":Ljava/lang/Throwable;
    if-eqz v8, :cond_3c

    .line 477
    invoke-super {p0, v8}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 479
    :cond_3c
    invoke-super {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 481
    :goto_3f
    return-void

    .line 484
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_40
    if-eqz v12, :cond_43

    .line 485
    goto :goto_4e

    .line 488
    :cond_43
    invoke-static {v11}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 490
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 491
    .end local v7    # "d":Z
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "empty":Z
    goto :goto_14

    .line 493
    :cond_4e
    :goto_4e
    cmp-long v7, v5, v3

    if-nez v7, :cond_76

    .line 494
    invoke-virtual {v1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 495
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 496
    return-void

    .line 499
    :cond_5c
    iget-boolean v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 501
    .restart local v7    # "d":Z
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_65

    goto :goto_66

    :cond_65
    move v8, v9

    .line 503
    .local v8, "empty":Z
    :goto_66
    if-eqz v7, :cond_76

    if-eqz v8, :cond_76

    .line 504
    iget-object v9, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 505
    .local v9, "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_72

    .line 506
    invoke-super {p0, v9}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_75

    .line 508
    :cond_72
    invoke-super {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 510
    :goto_75
    return-void

    .line 514
    .end local v7    # "d":Z
    .end local v8    # "empty":Z
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_76
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_7f

    .line 515
    invoke-static {p0, v5, v6}, Lcom/tds/common/reactor/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 518
    :cond_7f
    iget-object v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 519
    if-nez v0, :cond_8a

    .line 520
    nop

    .line 523
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 522
    :cond_8a
    goto :goto_e
.end method

.method public onCompleted()V
    .registers 2

    .line 433
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 434
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 435
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 426
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->error:Ljava/lang/Throwable;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->done:Z

    .line 428
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 429
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 422
    return-void
.end method

.method onRequested()V
    .registers 1

    .line 439
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->drain()V

    .line 440
    return-void
.end method

.method onUnsubscribed()V
    .registers 3

    .line 444
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_e

    .line 445
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$LatestEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 447
    :cond_e
    return-void
.end method
