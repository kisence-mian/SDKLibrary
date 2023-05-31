.class final Lrx/observables/SyncOnSubscribe$SubscriptionProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final actualSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private hasTerminated:Z

.field private onNextCalled:Z

.field private final parent:Lrx/observables/SyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 341
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 342
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 343
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 344
    return-void
.end method

.method private doUnsubscribe()V
    .registers 4

    .prologue
    .line 382
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/SyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 387
    :goto_7
    return-void

    .line 383
    :catch_8
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 385
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private fastpath()V
    .registers 5

    .prologue
    .line 401
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 402
    .local v2, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 406
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_4
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 407
    invoke-direct {p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_11

    .line 412
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    :goto_10
    return-void

    .line 408
    :catch_11
    move-exception v1

    .line 409
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_8

    .line 420
    invoke-static {p2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 426
    :goto_7
    return-void

    .line 422
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 423
    invoke-virtual {p1, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->unsubscribe()V

    goto :goto_7
.end method

.method private nextIteration(Lrx/observables/SyncOnSubscribe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lrx/observables/SyncOnSubscribe;->next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private slowPath(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v10, 0x0

    .line 429
    iget-object v6, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 430
    .local v6, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 431
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-wide v4, p1

    .line 433
    .local v4, "numRequested":J
    :cond_7
    move-wide v2, v4

    .line 436
    .local v2, "numRemaining":J
    :cond_8
    const/4 v7, 0x0

    :try_start_9
    iput-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 437
    invoke-direct {p0, v6}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_15

    .line 442
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 456
    :goto_14
    return-void

    .line 438
    :catch_15
    move-exception v1

    .line 439
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 445
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1a
    iget-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v7, :cond_21

    .line 446
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 448
    :cond_21
    cmp-long v7, v2, v10

    if-nez v7, :cond_8

    .line 449
    neg-long v8, v4

    invoke-virtual {p0, v8, v9}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->addAndGet(J)J

    move-result-wide v4

    .line 450
    cmp-long v7, v4, v10

    if-gtz v7, :cond_7

    .line 455
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    goto :goto_14
.end method

.method private tryUnsubscribe()Z
    .registers 5

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, -0x1

    .line 372
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 373
    :cond_e
    invoke-virtual {p0, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->set(J)V

    .line 374
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 348
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 464
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 468
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 469
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 471
    :cond_1c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 475
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_c

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 479
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 480
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 482
    :cond_1c
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
    .line 486
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v0, :cond_c

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 490
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, 0x0

    .line 391
    cmp-long v0, p1, v2

    if-lez v0, :cond_1a

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 392
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1b

    .line 393
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->fastpath()V

    .line 398
    :cond_1a
    :goto_1a
    return-void

    .line 395
    :cond_1b
    invoke-direct {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->slowPath(J)V

    goto :goto_1a
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .line 354
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    .line 355
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 356
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 363
    :goto_11
    return-void

    .line 359
    :cond_12
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_11
.end method
