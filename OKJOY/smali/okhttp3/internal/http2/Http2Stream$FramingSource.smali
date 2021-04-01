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

    .prologue
    .line 329
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .registers 6
    .param p2, "maxByteCount"    # J

    .prologue
    .line 348
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 334
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 349
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 350
    return-void
.end method

.method private updateConnectionFlowControl(J)V
    .registers 4
    .param p1, "read"    # J

    .prologue
    .line 428
    sget-boolean v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 429
    :cond_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 430
    return-void
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    const/4 v4, 0x0

    .line 479
    .local v4, "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    const/4 v3, 0x0

    .line 480
    .local v3, "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v7

    .line 481
    const/4 v6, 0x1

    :try_start_6
    iput-boolean v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 482
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 483
    .local v0, "bytesDiscarded":J
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->clear()V

    .line 484
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_6c

    .line 486
    .end local v4    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    .local v5, "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    :try_start_32
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Deque;->clear()V

    .line 487
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v6}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_70

    move-result-object v3

    move-object v4, v5

    .line 489
    .end local v5    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    .restart local v4    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    :cond_42
    :try_start_42
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit v7
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6c

    .line 491
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_51

    .line 492
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 494
    :cond_51
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 495
    if-eqz v3, :cond_6f

    .line 496
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Headers;

    .line 497
    .local v2, "headers":Lokhttp3/Headers;
    invoke-interface {v3, v2}, Lokhttp3/internal/http2/Header$Listener;->onHeaders(Lokhttp3/Headers;)V

    goto :goto_5c

    .line 490
    .end local v0    # "bytesDiscarded":J
    .end local v2    # "headers":Lokhttp3/Headers;
    :catchall_6c
    move-exception v6

    :goto_6d
    :try_start_6d
    monitor-exit v7
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v6

    .line 500
    .restart local v0    # "bytesDiscarded":J
    :cond_6f
    return-void

    .line 490
    .end local v4    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    .restart local v5    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    :catchall_70
    move-exception v6

    move-object v4, v5

    .end local v5    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    .restart local v4    # "headersToDeliver":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Headers;>;"
    goto :goto_6d
.end method

.method public read(Lokio/Buffer;J)J
    .registers 18
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const-wide/16 v8, 0x0

    cmp-long v5, p2, v8

    if-gez v5, :cond_34

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "byteCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 392
    .local v2, "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .local v3, "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .local v4, "headersToDeliver":Lokhttp3/Headers;
    .local v6, "readBytesDelivered":J
    :cond_21
    :try_start_21
    iget-boolean v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v5, :cond_8d

    if-nez v2, :cond_8d

    .line 394
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_59

    .line 398
    :try_start_2c
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_62

    .line 356
    .end local v2    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    .end local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    .end local v4    # "headersToDeliver":Lokhttp3/Headers;
    .end local v6    # "readBytesDelivered":J
    :cond_34
    :goto_34
    const/4 v4, 0x0

    .line 357
    .restart local v4    # "headersToDeliver":Lokhttp3/Headers;
    const/4 v3, 0x0

    .line 358
    .restart local v3    # "headersListenerToNotify":Lokhttp3/internal/http2/Header$Listener;
    const-wide/16 v6, -0x1

    .line 359
    .restart local v6    # "readBytesDelivered":J
    const/4 v2, 0x0

    .line 363
    .restart local v2    # "errorCodeToDeliver":Lokhttp3/internal/http2/ErrorCode;
    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v8

    .line 364
    :try_start_3c
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_62

    .line 366
    :try_start_43
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v5, :cond_4d

    .line 368
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v5, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 371
    :cond_4d
    iget-boolean v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v5, :cond_65

    .line 372
    new-instance v5, Ljava/io/IOException;

    const-string v9, "stream closed"

    invoke-direct {v5, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_59

    .line 398
    :catchall_59
    move-exception v5

    :try_start_5a
    iget-object v9, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v9, v9, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v5

    .line 400
    :catchall_62
    move-exception v5

    monitor-exit v8
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_62

    throw v5

    .line 374
    :cond_65
    :try_start_65
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9d

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    move-result-object v5

    if-eqz v5, :cond_9d

    .line 376
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lokhttp3/Headers;

    move-object v4, v0

    .line 377
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    # getter for: Lokhttp3/internal/http2/Http2Stream;->headersListener:Lokhttp3/internal/http2/Header$Listener;
    invoke-static {v5}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_59

    move-result-object v3

    .line 398
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 400
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_62

    .line 404
    if-eqz v4, :cond_ef

    if-eqz v3, :cond_ef

    .line 405
    invoke-interface {v3, v4}, Lokhttp3/internal/http2/Header$Listener;->onHeaders(Lokhttp3/Headers;)V

    goto :goto_34

    .line 379
    :cond_9d
    :try_start_9d
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_21

    .line 381
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v10

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v5, p1, v10, v11}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v6

    .line 382
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v10, v5, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v10, v6

    iput-wide v10, v5, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 384
    if-nez v2, :cond_8d

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v10, v5, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 386
    invoke-virtual {v5}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-long v12, v5

    cmp-long v5, v10, v12

    if-ltz v5, :cond_8d

    .line 389
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v9, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v9, v9, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v10, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v10, v10, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v5, v9, v10, v11}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 390
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    const-wide/16 v10, 0x0

    iput-wide v10, v5, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J
    :try_end_ee
    .catchall {:try_start_9d .. :try_end_ee} :catchall_59

    goto :goto_8d

    .line 409
    :cond_ef
    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f9

    .line 411
    invoke-direct {p0, v6, v7}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 423
    .end local v6    # "readBytesDelivered":J
    :goto_f8
    return-wide v6

    .line 415
    .restart local v6    # "readBytesDelivered":J
    :cond_f9
    if-eqz v2, :cond_101

    .line 420
    new-instance v5, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {v5, v2}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    throw v5

    .line 423
    :cond_101
    const-wide/16 v6, -0x1

    goto :goto_f8
.end method

.method receive(Lokio/BufferedSource;J)V
    .registers 16
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    sget-boolean v5, Lokhttp3/internal/http2/Http2Stream$FramingSource;->$assertionsDisabled:Z

    if-nez v5, :cond_32

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 459
    .local v0, "finished":Z
    .local v1, "flowControlError":Z
    .local v2, "read":J
    :cond_12
    sub-long/2addr p2, v2

    .line 462
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    .line 463
    :try_start_16
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_76

    const/4 v4, 0x1

    .line 464
    .local v4, "wasEmpty":Z
    :goto_23
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v5, v7}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 465
    if-eqz v4, :cond_31

    .line 466
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 468
    :cond_31
    monitor-exit v6
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_78

    .line 435
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    .end local v2    # "read":J
    .end local v4    # "wasEmpty":Z
    :cond_32
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_58

    .line 438
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v6

    .line 439
    :try_start_3b
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 440
    .restart local v0    # "finished":Z
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, p2

    iget-wide v10, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_59

    const/4 v1, 0x1

    .line 441
    .restart local v1    # "flowControlError":Z
    :goto_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5b

    .line 444
    if-eqz v1, :cond_5e

    .line 445
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 446
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v6}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 470
    .end local v0    # "finished":Z
    .end local v1    # "flowControlError":Z
    :cond_58
    :goto_58
    return-void

    .line 440
    .restart local v0    # "finished":Z
    :cond_59
    const/4 v1, 0x0

    goto :goto_4b

    .line 441
    .end local v0    # "finished":Z
    :catchall_5b
    move-exception v5

    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v5

    .line 451
    .restart local v0    # "finished":Z
    .restart local v1    # "flowControlError":Z
    :cond_5e
    if-eqz v0, :cond_64

    .line 452
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_58

    .line 457
    :cond_64
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v5, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 458
    .restart local v2    # "read":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_12

    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 463
    :cond_76
    const/4 v4, 0x0

    goto :goto_23

    .line 468
    :catchall_78
    move-exception v5

    :try_start_79
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v5
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
