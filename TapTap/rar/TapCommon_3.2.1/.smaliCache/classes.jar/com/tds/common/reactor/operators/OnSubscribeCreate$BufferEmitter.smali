.class final Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferEmitter"
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
.field private static final serialVersionUID:J = 0x21aef8f9f7f1cbc3L


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;I)V
    .registers 4
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 288
    new-instance v0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p2}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    .line 289
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 290
    return-void
.end method


# virtual methods
.method drain()V
    .registers 13

    .line 324
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_9

    .line 325
    return-void

    .line 328
    :cond_9
    const/4 v0, 0x1

    .line 329
    .local v0, "missed":I
    iget-object v1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 330
    .local v1, "a":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    iget-object v2, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    .line 333
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_e
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->get()J

    move-result-wide v3

    .line 334
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 336
    .local v5, "e":J
    :goto_14
    cmp-long v7, v5, v3

    if-eqz v7, :cond_4b

    .line 337
    invoke-virtual {v1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 338
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 339
    return-void

    .line 342
    :cond_22
    iget-boolean v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 344
    .local v7, "d":Z
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 346
    .local v8, "o":Ljava/lang/Object;
    if-nez v8, :cond_2c

    const/4 v9, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v9, 0x0

    .line 348
    .local v9, "empty":Z
    :goto_2d
    if-eqz v7, :cond_3d

    if-eqz v9, :cond_3d

    .line 349
    iget-object v10, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 350
    .local v10, "ex":Ljava/lang/Throwable;
    if-eqz v10, :cond_39

    .line 351
    invoke-super {p0, v10}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 353
    :cond_39
    invoke-super {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 355
    :goto_3c
    return-void

    .line 358
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_3d
    if-eqz v9, :cond_40

    .line 359
    goto :goto_4b

    .line 362
    :cond_40
    invoke-static {v8}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 364
    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    .line 365
    .end local v7    # "d":Z
    .end local v8    # "o":Ljava/lang/Object;
    .end local v9    # "empty":Z
    goto :goto_14

    .line 367
    :cond_4b
    :goto_4b
    cmp-long v7, v5, v3

    if-nez v7, :cond_6f

    .line 368
    invoke-virtual {v1}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 369
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 370
    return-void

    .line 373
    :cond_59
    iget-boolean v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 375
    .restart local v7    # "d":Z
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    .line 377
    .local v8, "empty":Z
    if-eqz v7, :cond_6f

    if-eqz v8, :cond_6f

    .line 378
    iget-object v9, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 379
    .local v9, "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_6b

    .line 380
    invoke-super {p0, v9}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_6e

    .line 382
    :cond_6b
    invoke-super {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;->onCompleted()V

    .line 384
    :goto_6e
    return-void

    .line 388
    .end local v7    # "d":Z
    .end local v8    # "empty":Z
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_6f
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_78

    .line 389
    invoke-static {p0, v5, v6}, Lcom/tds/common/reactor/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 392
    :cond_78
    iget-object v7, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 393
    if-nez v0, :cond_83

    .line 394
    nop

    .line 397
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 396
    :cond_83
    goto :goto_e
.end method

.method public onCompleted()V
    .registers 2

    .line 307
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 308
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 309
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 300
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iput-object p1, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->error:Ljava/lang/Throwable;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->done:Z

    .line 302
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 303
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 296
    return-void
.end method

.method onRequested()V
    .registers 1

    .line 313
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->drain()V

    .line 314
    return-void
.end method

.method onUnsubscribed()V
    .registers 2

    .line 318
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_d

    .line 319
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BufferEmitter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 321
    :cond_d
    return-void
.end method
