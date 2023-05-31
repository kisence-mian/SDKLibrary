.class public Lcom/tds/common/reactor/internal/util/RxRingBuffer;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# static fields
.field public static final SIZE:I


# instance fields
.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 243
    const/16 v0, 0x80

    .line 246
    .local v0, "defaultSize":I
    invoke-static {}, Lcom/tds/common/reactor/util/PlatformDependent;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 247
    const/16 v0, 0x10

    .line 251
    :cond_a
    const-string v1, "rx.ring-buffer.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 254
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_18

    move v0, v2

    .line 257
    goto :goto_3f

    .line 255
    :catch_18
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    :goto_3f
    sput v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    .line 261
    .end local v0    # "defaultSize":I
    .end local v1    # "sizeFromProperty":Ljava/lang/String;
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 290
    new-instance v0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;

    sget v1, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;-><init>(Ljava/util/Queue;I)V

    .line 291
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .registers 3
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 275
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 277
    iput p2, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->size:I

    .line 278
    return-void
.end method

.method public static getSpmcInstance()Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    .registers 1

    .line 272
    new-instance v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method

.method public static getSpscInstance()Lcom/tds/common/reactor/internal/util/RxRingBuffer;
    .registers 1

    .line 267
    new-instance v0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lcom/tds/common/reactor/Observer;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "child"    # Lcom/tds/common/reactor/Observer;

    .line 403
    invoke-static {p2, p1}, Lcom/tds/common/reactor/operators/NotificationLite;->accept(Lcom/tds/common/reactor/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public asError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 407
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public available()I
    .registers 3

    .line 332
    iget v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->size:I

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 336
    iget v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->size:I

    return v0
.end method

.method public count()I
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 341
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_6

    .line 342
    const/4 v1, 0x0

    return v1

    .line 344
    :cond_6
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    return v1
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 390
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 349
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public isError(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 394
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 320
    invoke-static {}, Lcom/tds/common/reactor/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 322
    :cond_a
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 326
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 327
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 329
    :cond_a
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/reactor/exceptions/MissingBackpressureException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 300
    .local v1, "mbe":Z
    monitor-enter p0

    .line 301
    :try_start_3
    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 302
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_13

    .line 303
    invoke-static {p1}, Lcom/tds/common/reactor/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_14

    .line 305
    :cond_13
    const/4 v0, 0x1

    .line 307
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    .line 309
    if-nez v0, :cond_20

    .line 312
    if-nez v1, :cond_1a

    .line 315
    return-void

    .line 313
    :cond_1a
    new-instance v2, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;

    invoke-direct {v2}, Lcom/tds/common/reactor/exceptions/MissingBackpressureException;-><init>()V

    throw v2

    .line 310
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public peek()Ljava/lang/Object;
    .registers 5

    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 376
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_8

    .line 378
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 380
    :cond_8
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 382
    .local v2, "ts":Ljava/lang/Object;
    if-nez v1, :cond_19

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    .line 383
    move-object v1, v2

    .line 385
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :cond_19
    monitor-exit p0

    .line 386
    return-object v1

    .line 385
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 6

    .line 354
    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 356
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 358
    monitor-exit p0

    return-object v1

    .line 360
    :cond_8
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 362
    .local v2, "o":Ljava/lang/Object;
    iget-object v3, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 363
    .local v3, "ts":Ljava/lang/Object;
    if-nez v2, :cond_1b

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 364
    move-object v2, v3

    .line 366
    iput-object v1, p0, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 368
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v3    # "ts":Ljava/lang/Object;
    :cond_1b
    monitor-exit p0

    .line 369
    return-object v2

    .line 368
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 1

    monitor-enter p0

    .line 282
    monitor-exit p0

    return-void
.end method

.method public unsubscribe()V
    .registers 1

    .line 286
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/RxRingBuffer;->release()V

    .line 287
    return-void
.end method
