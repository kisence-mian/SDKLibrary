.class final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 329
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .registers 4
    .param p2, "maxByteCount"    # J

    .line 348
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 334
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 349
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 350
    return-void
.end method

.method private updateConnectionFlowControl(J)V
    .registers 4
    .param p1, "read"    # J

    .line 428
    nop

    .line 429
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 430
    return-void
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    const/4 v1, 0x0

    .line 480
    .local v1, "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 481
    const/4 v3, 0x1

    :try_start_6
    iput-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 482
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 483
    .local v3, "bytesDiscarded":J
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    .line 484
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_43

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v5

    .line 486
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->clear()V

    .line 487
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v5

    move-object v1, v5

    .line 489
    :cond_43
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_6e

    .line 491
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_52

    .line 492
    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 494
    :cond_52
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 495
    if-eqz v1, :cond_6d

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Headers;

    .line 497
    .local v5, "headers":Lokhttp3/Headers;
    invoke-interface {v1, v5}, Lokhttp3/internal/http2/Header$Listener;->onHeaders(Lokhttp3/Headers;)V

    .line 498
    .end local v5    # "headers":Lokhttp3/Headers;
    goto :goto_5d

    .line 500
    :cond_6d
    return-void

    .line 490
    .end local v3    # "bytesDiscarded":J
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v3
.end method

.method public read(Lokio/Buffer;J)J
    .registers 16
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_e6

    .line 356
    :goto_6
    const/4 v2, 0x0

    .line 357
    .local v2, "headersToDeliver":Lokhttp3/Headers;
    const/4 v3, 0x0

    .line 358
    .local v3, "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    const-wide/16 v4, -0x1

    .line 359
    .local v4, "readBytesDelivered":J
    const/4 v6, 0x0

    .line 363
    .local v6, "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v7

    .line 364
    :try_start_e
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_e3

    .line 366
    :try_start_15
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v8, :cond_20

    .line 368
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    move-object v6, v8

    .line 371
    :cond_20
    iget-boolean v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v8, :cond_d2

    .line 374
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v8}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4d

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v8}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v8

    if-eqz v8, :cond_4d

    .line 376
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v8}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/Headers;

    move-object v2, v8

    .line 377
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v8}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v8

    move-object v3, v8

    goto :goto_ad

    .line 379
    :cond_4d
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-lez v8, :cond_98

    .line 381
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v9

    invoke-static {p2, p3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v8, p1, v9, v10}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v8

    move-wide v4, v8

    .line 382
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v9, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v9, v4

    iput-wide v9, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 384
    if-nez v6, :cond_ad

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v10, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v10, v10, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 386
    invoke-virtual {v10}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_ad

    .line 389
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v9, v9, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v10, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v10, v10, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v8, v9, v10, v11}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 390
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iput-wide v0, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    goto :goto_ad

    .line 392
    :cond_98
    iget-boolean v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v8, :cond_ad

    if-nez v6, :cond_ad

    .line 394
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_a3
    .catchall {:try_start_15 .. :try_end_a3} :catchall_da

    .line 398
    :try_start_a3
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v7

    goto/16 :goto_6

    :cond_ad
    :goto_ad
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v8}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 399
    nop

    .line 400
    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_a3 .. :try_end_b6} :catchall_e3

    .line 404
    if-eqz v2, :cond_bf

    if-eqz v3, :cond_bf

    .line 405
    invoke-interface {v3, v2}, Lokhttp3/internal/http2/Header$Listener;->onHeaders(Lokhttp3/Headers;)V

    .line 406
    goto/16 :goto_6

    .line 409
    :cond_bf
    const-wide/16 v0, -0x1

    cmp-long v7, v4, v0

    if-eqz v7, :cond_c9

    .line 411
    invoke-direct {p0, v4, v5}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 412
    return-wide v4

    .line 415
    :cond_c9
    if-nez v6, :cond_cc

    .line 423
    return-wide v0

    .line 420
    :cond_cc
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v0, v6}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 372
    :cond_d2
    :try_start_d2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "headersToDeliver":Lokhttp3/Headers;
    .end local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_da

    .line 398
    .restart local v2    # "headersToDeliver":Lokhttp3/Headers;
    .restart local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .restart local v4    # "readBytesDelivered":J
    .restart local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_da
    move-exception v0

    :try_start_db
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .end local v2    # "headersToDeliver":Lokhttp3/Headers;
    .end local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 400
    .restart local v2    # "headersToDeliver":Lokhttp3/Headers;
    .restart local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .restart local v4    # "readBytesDelivered":J
    .restart local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_e3
    move-exception v0

    monitor-exit v7
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_e3

    throw v0

    .line 353
    .end local v2    # "headersToDeliver":Lokhttp3/Headers;
    .end local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .end local v4    # "readBytesDelivered":J
    .end local v6    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method receive(Lokio/BufferedSource;J)V
    .registers 15
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    nop

    .line 435
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6d

    .line 438
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 439
    :try_start_a
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 440
    .local v3, "finished":Z
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v6

    .line 441
    .local v4, "flowControlError":Z
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_6a

    .line 444
    if-eqz v4, :cond_2c

    .line 445
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 446
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 447
    return-void

    .line 451
    :cond_2c
    if-eqz v3, :cond_32

    .line 452
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 453
    return-void

    .line 457
    :cond_32
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v7

    .line 458
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_64

    .line 459
    sub-long v9, p2, v7

    .line 462
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 463
    :try_start_43
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-nez p2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v5, v6

    :goto_4f
    move p2, v5

    .line 464
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {p3, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 465
    if-eqz p2, :cond_5e

    .line 466
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 468
    .end local p2    # "wasEmpty":Z
    :cond_5e
    monitor-exit v2

    .line 469
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    move-wide p2, v9

    goto :goto_1

    .line 468
    .restart local v3    # "finished":Z
    .restart local v4    # "flowControlError":Z
    .restart local v7    # "read":J
    :catchall_61
    move-exception p2

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    throw p2

    .line 458
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :cond_64
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 441
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v7    # "read":J
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    .line 470
    :cond_6d
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 473
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
