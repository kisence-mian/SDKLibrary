.class final Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferAsyncEmitter"
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
.field private static final serialVersionUID:J = 0x21aef8f9f7f1cbc3L


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

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 4
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 290
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    :goto_e
    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    .line 293
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    .line 295
    return-void

    .line 290
    :cond_1e
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_e
.end method


# virtual methods
.method drain()V
    .registers 15

    .prologue
    .line 329
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_9

    .line 402
    :goto_8
    return-void

    .line 333
    :cond_9
    const/4 v6, 0x1

    .line 334
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->actual:Lrx/Subscriber;

    .line 335
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    .line 338
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->get()J

    move-result-wide v10

    .line 339
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 341
    .local v2, "e":J
    :goto_14
    cmp-long v9, v2, v10

    if-eqz v9, :cond_3f

    .line 342
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 343
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_8

    .line 347
    :cond_22
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->done:Z

    .line 349
    .local v1, "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    .line 351
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_37

    const/4 v4, 0x1

    .line 353
    .local v4, "empty":Z
    :goto_2b
    if-eqz v1, :cond_3d

    if-eqz v4, :cond_3d

    .line 354
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 355
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_39

    .line 356
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 351
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_37
    const/4 v4, 0x0

    goto :goto_2b

    .line 358
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_39
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 363
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3d
    if-eqz v4, :cond_4d

    .line 372
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_3f
    cmp-long v9, v2, v10

    if-nez v9, :cond_70

    .line 373
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 374
    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_8

    .line 367
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_4d
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v7}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 369
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 370
    goto :goto_14

    .line 378
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5a
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->done:Z

    .line 380
    .restart local v1    # "d":Z
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    .line 382
    .restart local v4    # "empty":Z
    if-eqz v1, :cond_70

    if-eqz v4, :cond_70

    .line 383
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 384
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_6c

    .line 385
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 387
    :cond_6c
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_8

    .line 393
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_70
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_79

    .line 394
    invoke-static {p0, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 397
    :cond_79
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 398
    if-nez v6, :cond_e

    goto :goto_8
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 312
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->done:Z

    .line 313
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->drain()V

    .line 314
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->done:Z

    .line 307
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->drain()V

    .line 308
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
    .line 299
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->drain()V

    .line 301
    return-void
.end method

.method onRequested()V
    .registers 1

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->drain()V

    .line 319
    return-void
.end method

.method onUnsubscribed()V
    .registers 2

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 324
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$BufferAsyncEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 326
    :cond_d
    return-void
.end method
