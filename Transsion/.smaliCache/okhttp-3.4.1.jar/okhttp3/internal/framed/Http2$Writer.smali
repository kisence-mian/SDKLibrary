.class final Lokhttp3/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field final hpackWriter:Lokhttp3/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 5
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    .line 369
    iput-boolean p2, p0, Lokhttp3/internal/framed/Http2$Writer;->client:Z

    .line 370
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    .line 371
    new-instance v1, Lokhttp3/internal/framed/Hpack$Writer;

    invoke-direct {v1, v0}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v1, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackWriter:Lokhttp3/internal/framed/Hpack$Writer;

    .line 372
    const/16 v0, 0x4000

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 373
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_25

    .line 458
    iget v2, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 459
    .local v3, "length":I
    int-to-long v4, v3

    sub-long/2addr p2, v4

    .line 460
    const/16 v2, 0x9

    cmp-long v4, p2, v0

    if-nez v4, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v3, v2, v0}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 461
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v4, v3

    invoke-interface {v0, v1, v4, v5}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 462
    .end local v3    # "length":I
    goto :goto_0

    .line 463
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 7
    .param p1, "peerSettings"    # Lokhttp3/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_2b

    .line 383
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 384
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1d

    .line 385
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackWriter:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->setHeaderTableSizeSetting(I)V

    .line 387
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_1d
    const/4 v0, 0x0

    .line 388
    .local v0, "length":I
    const/4 v1, 0x4

    .line 389
    .local v1, "type":B
    const/4 v2, 0x1

    .line 390
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 391
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 392
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_33

    .line 393
    monitor-exit p0

    return-void

    .line 382
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 381
    .end local p1    # "peerSettings":Lokhttp3/internal/framed/Settings;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 565
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    .line 566
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 567
    monitor-exit p0

    return-void

    .line 564
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_46

    .line 397
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4e

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 398
    :cond_b
    :try_start_b
    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 399
    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Lokhttp3/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_32
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    # getter for: Lokhttp3/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 402
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_4e

    .line 403
    monitor-exit p0

    return-void

    .line 396
    :cond_46
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 395
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 7
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_10

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "flags":B
    if-eqz p1, :cond_b

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 487
    :cond_b
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 488
    monitor-exit p0

    return-void

    .line 484
    .end local v0    # "flags":B
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    .line 483
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 493
    if-lez p4, :cond_c

    .line 494
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 496
    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 376
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 377
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 378
    monitor-exit p0

    return-void

    .line 376
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 375
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method frameHeader(IIBB)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    # getter for: Lokhttp3/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lokhttp3/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 571
    :cond_18
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_4e

    .line 574
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3f

    .line 575
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    # invokes: Lokhttp3/internal/framed/Http2;->writeMedium(Lokio/BufferedSink;I)V
    invoke-static {v0, p2}, Lokhttp3/internal/framed/Http2;->access$600(Lokio/BufferedSink;I)V

    .line 576
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 577
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 578
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 579
    return-void

    .line 574
    :cond_3f
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    # invokes: Lokhttp3/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 572
    :cond_4e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    # invokes: Lokhttp3/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v3}, Lokhttp3/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 534
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_38

    .line 535
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 536
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 537
    .local v0, "length":I
    const/4 v1, 0x7

    .line 538
    .local v1, "type":B
    const/4 v2, 0x0

    .line 539
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 540
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 541
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 542
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v5, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 543
    array-length v4, p3

    if-lez v4, :cond_27

    .line 544
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 546
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_27
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_40

    .line 547
    monitor-exit p0

    return-void

    .line 535
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_2e
    :try_start_2e
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    # invokes: Lokhttp3/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 534
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_40

    .line 533
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 421
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_b

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 423
    monitor-exit p0

    return-void

    .line 421
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 420
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .registers 13
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3c

    .line 443
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackWriter:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 446
    .local v0, "byteCount":J
    iget v2, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 447
    .local v3, "length":I
    const/4 v2, 0x1

    .line 448
    .local v2, "type":B
    int-to-long v4, v3

    cmp-long v6, v0, v4

    if-nez v6, :cond_1f

    const/4 v4, 0x4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 449
    .local v4, "flags":B
    :goto_20
    if-eqz p1, :cond_25

    or-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 450
    :cond_25
    invoke-virtual {p0, p2, v3, v2, v4}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 451
    iget-object v5, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v3

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 453
    int-to-long v5, v3

    cmp-long v7, v0, v5

    if-lez v7, :cond_3b

    int-to-long v5, v3

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lokhttp3/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 454
    :cond_3b
    return-void

    .line 442
    .end local v0    # "byteCount":J
    .end local v2    # "type":B
    .end local v3    # "length":I
    .end local v4    # "flags":B
    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDataLength()I
    .registers 2

    .line 479
    iget v0, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 9
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 521
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_22

    .line 522
    const/16 v0, 0x8

    .line 523
    .local v0, "length":I
    const/4 v1, 0x6

    .line 524
    .local v1, "type":B
    if-eqz p1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 525
    .local v2, "flags":B
    :goto_d
    const/4 v3, 0x0

    .line 526
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 527
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 528
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 529
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    .line 530
    monitor-exit p0

    return-void

    .line 521
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 520
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 427
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 428
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackWriter:Lokhttp3/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 431
    .local v0, "byteCount":J
    iget v2, p0, Lokhttp3/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 432
    .local v2, "length":I
    const/4 v4, 0x5

    .line 433
    .local v4, "type":B
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-nez v7, :cond_21

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 434
    .local v3, "flags":B
    :goto_22
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, p1, v5, v4, v3}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 435
    iget-object v5, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 436
    iget-object v5, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lokhttp3/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 438
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_43

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lokhttp3/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    .line 439
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_43
    monitor-exit p0

    return-void

    .line 427
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "flags":B
    .end local v4    # "type":B
    :cond_45
    :try_start_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    .line 426
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 467
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_24

    .line 468
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 470
    const/4 v0, 0x4

    .line 471
    .local v0, "length":I
    const/4 v1, 0x3

    .line 472
    .local v1, "type":B
    const/4 v2, 0x0

    .line 473
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 474
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 475
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    .line 476
    monitor-exit p0

    return-void

    .line 468
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 467
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    .line 466
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lokhttp3/internal/framed/ErrorCode;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lokhttp3/internal/framed/Settings;)V
    .registers 10
    .param p1, "settings"    # Lokhttp3/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 499
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3f

    .line 500
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 501
    .local v0, "length":I
    const/4 v1, 0x4

    .line 502
    .local v1, "type":B
    const/4 v2, 0x0

    .line 503
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 504
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 505
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    const/16 v5, 0xa

    if-ge v4, v5, :cond_38

    .line 506
    invoke-virtual {p1, v4}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_35

    .line 507
    :cond_1d
    move v5, v4

    .line 508
    .local v5, "id":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_23

    .line 509
    const/4 v5, 0x3

    goto :goto_27

    .line 510
    :cond_23
    const/4 v6, 0x7

    if-ne v5, v6, :cond_27

    .line 511
    const/4 v5, 0x4

    .line 513
    :cond_27
    :goto_27
    iget-object v6, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 514
    iget-object v6, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 505
    .end local v5    # "id":I
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 516
    .end local v4    # "i":I
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_38
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    .line 517
    monitor-exit p0

    return-void

    .line 499
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 498
    .end local p1    # "settings":Lokhttp3/internal/framed/Settings;
    :catchall_47
    move-exception p1

    monitor-exit p0

    goto :goto_4b

    :goto_4a
    throw p1

    :goto_4b
    goto :goto_4a
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 415
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_a

    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 417
    monitor-exit p0

    return-void

    .line 415
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    .line 414
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    monitor-enter p0

    .line 408
    if-nez p2, :cond_16

    .line 409
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 410
    invoke-virtual {p0, p1, p3, p5}, Lokhttp3/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 411
    monitor-exit p0

    return-void

    .line 409
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :catchall_14
    move-exception p1

    goto :goto_1c

    .line 408
    .restart local p1    # "outFinished":Z
    .restart local p2    # "inFinished":Z
    .restart local p3    # "streamId":I
    .restart local p4    # "associatedStreamId":I
    .restart local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_14

    .line 407
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 551
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_37

    .line 552
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_26

    .line 556
    const/4 v0, 0x4

    .line 557
    .local v0, "length":I
    const/16 v1, 0x8

    .line 558
    .local v1, "type":B
    const/4 v2, 0x0

    .line 559
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 560
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 561
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3f

    .line 562
    monitor-exit p0

    return-void

    .line 553
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local p0    # "this":Lokhttp3/internal/framed/Http2$Writer;
    :cond_26
    :try_start_26
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 554
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 553
    # invokes: Lokhttp3/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 551
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3f

    .line 550
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
