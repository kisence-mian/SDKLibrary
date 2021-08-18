.class final Lokhttp3/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 313
    const-class v0, Lokhttp3/internal/framed/FramedStream;

    return-void
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedStream;J)V
    .registers 4
    .param p2, "maxByteCount"    # J

    .line 332
    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    .line 318
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    .line 333
    iput-wide p2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedStream;JLokhttp3/internal/framed/FramedStream$1;)V
    .registers 5
    .param p1, "x0"    # Lokhttp3/internal/framed/FramedStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lokhttp3/internal/framed/FramedStream$1;

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;-><init>(Lokhttp3/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic access$100(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic access$102(Lokhttp3/internal/framed/FramedStream$FramedDataSource;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSource;
    .param p1, "x1"    # Z

    .line 313
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lokhttp3/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/framed/FramedStream$FramedDataSource;

    .line 313
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_19

    .line 440
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_d

    .line 443
    return-void

    .line 441
    :cond_d
    new-instance v0, Lokhttp3/internal/framed/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/StreamResetException;-><init>(Lokhttp3/internal/framed/ErrorCode;)V

    throw v0

    .line 438
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadable()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 375
    :goto_9
    :try_start_9
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2b

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->errorCode:Lokhttp3/internal/framed/ErrorCode;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$800(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 376
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$900(Lokhttp3/internal/framed/FramedStream;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_36

    goto :goto_9

    .line 379
    :cond_2b
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 380
    nop

    .line 381
    return-void

    .line 379
    :catchall_36
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    goto :goto_42

    :goto_41
    throw v0

    :goto_42
    goto :goto_41
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v0

    .line 429
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 430
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 431
    iget-object v1, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 433
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # invokes: Lokhttp3/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$1000(Lokhttp3/internal/framed/FramedStream;)V

    .line 434
    return-void

    .line 432
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 15
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b2

    .line 341
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 342
    :try_start_9
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 343
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 344
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_1d

    const-wide/16 v0, -0x1

    monitor-exit v2

    return-wide v0

    .line 347
    :cond_1d
    iget-object v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 350
    .local v3, "read":J
    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v6, v5, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 351
    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v5, v5, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    iget-object v7, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    .line 352
    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v7}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v7

    iget-object v7, v7, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-long v9, v7

    cmp-long v7, v5, v9

    if-ltz v7, :cond_62

    .line 353
    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v5}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->id:I
    invoke-static {v6}, Lokhttp3/internal/framed/FramedStream;->access$600(Lokhttp3/internal/framed/FramedStream;)I

    move-result v6

    iget-object v7, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iget-wide v9, v7, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {v5, v6, v9, v10}, Lokhttp3/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 354
    iget-object v5, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    iput-wide v0, v5, Lokhttp3/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 356
    :cond_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_af

    .line 359
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v5

    monitor-enter v5

    .line 360
    :try_start_6a
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v6, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 361
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-wide v6, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    .line 362
    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v2, v8}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_aa

    .line 363
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    const/4 v6, 0x0

    iget-object v7, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v7}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v7

    iget-wide v7, v7, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v6, v7, v8}, Lokhttp3/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 364
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->connection:Lokhttp3/internal/framed/FramedConnection;
    invoke-static {v2}, Lokhttp3/internal/framed/FramedStream;->access$500(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedConnection;

    move-result-object v2

    iput-wide v0, v2, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 366
    :cond_aa
    monitor-exit v5

    .line 368
    return-wide v3

    .line 366
    :catchall_ac
    move-exception v0

    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_6a .. :try_end_ae} :catchall_ac

    throw v0

    .line 356
    .end local v3    # "read":J
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    .line 338
    :cond_b2
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
    .registers 16
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    nop

    .line 386
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6d

    .line 389
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 390
    :try_start_a
    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 391
    .local v3, "finished":Z
    iget-object v4, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    .line 392
    .local v4, "flowControlError":Z
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_6a

    .line 395
    if-eqz v4, :cond_2c

    .line 396
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 397
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 398
    return-void

    .line 402
    :cond_2c
    if-eqz v3, :cond_32

    .line 403
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 404
    return-void

    .line 408
    :cond_32
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v5

    .line 409
    .local v5, "read":J
    const-wide/16 v10, -0x1

    cmp-long v2, v5, v10

    if-eqz v2, :cond_64

    .line 410
    sub-long v10, p2, v5

    .line 413
    .end local p2    # "byteCount":J
    .local v10, "byteCount":J
    iget-object v2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    monitor-enter v2

    .line 414
    :try_start_43
    iget-object p2, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide p2

    cmp-long v7, p2, v0

    if-nez v7, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v8, 0x0

    :goto_4f
    move p2, v8

    .line 415
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {p3, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 416
    if-eqz p2, :cond_5e

    .line 417
    iget-object p3, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 419
    .end local p2    # "wasEmpty":Z
    :cond_5e
    monitor-exit v2

    .line 420
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v5    # "read":J
    move-wide p2, v10

    goto :goto_1

    .line 419
    .restart local v3    # "finished":Z
    .restart local v4    # "flowControlError":Z
    .restart local v5    # "read":J
    :catchall_61
    move-exception p2

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    throw p2

    .line 409
    .end local v10    # "byteCount":J
    .local p2, "byteCount":J
    :cond_64
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 392
    .end local v3    # "finished":Z
    .end local v4    # "flowControlError":Z
    .end local v5    # "read":J
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0

    .line 421
    :cond_6d
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 424
    iget-object v0, p0, Lokhttp3/internal/framed/FramedStream$FramedDataSource;->this$0:Lokhttp3/internal/framed/FramedStream;

    # getter for: Lokhttp3/internal/framed/FramedStream;->readTimeout:Lokhttp3/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lokhttp3/internal/framed/FramedStream;->access$700(Lokhttp3/internal/framed/FramedStream;)Lokhttp3/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method
