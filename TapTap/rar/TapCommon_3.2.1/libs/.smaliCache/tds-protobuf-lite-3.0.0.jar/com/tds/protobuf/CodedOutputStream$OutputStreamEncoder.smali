.class final Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 2253
    invoke-direct {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 2254
    if-eqz p1, :cond_8

    .line 2257
    iput-object p1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    .line 2258
    return-void

    .line 2255
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doFlush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2593
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2594
    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2595
    return-void
.end method

.method private flushIfNotAvailable(I)V
    .registers 4
    .param p1, "requiredSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2587
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 2588
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2590
    :cond_a
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2502
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    if-lez v0, :cond_7

    .line 2504
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2506
    :cond_7
    return-void
.end method

.method public write(B)V
    .registers 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-ne v0, v1, :cond_9

    .line 2397
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2400
    :cond_9
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2401
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2549
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2550
    .local v0, "length":I
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1d

    .line 2552
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2553
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2554
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_62

    .line 2558
    :cond_1d
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v1, v2

    .line 2559
    .local v1, "bytesWritten":I
    iget-object v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2560
    sub-int/2addr v0, v1

    .line 2561
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2562
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2563
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2568
    :goto_36
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_56

    .line 2570
    iget-object v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2571
    iget-object v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 2572
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    sub-int/2addr v0, v2

    .line 2573
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_36

    .line 2575
    :cond_56
    iget-object v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2576
    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2577
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2579
    .end local v1    # "bytesWritten":I
    :goto_62
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2511
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_19

    .line 2513
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2514
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2515
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    goto :goto_4a

    .line 2519
    :cond_19
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v0, v1

    .line 2520
    .local v0, "bytesWritten":I
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2521
    add-int/2addr p2, v0

    .line 2522
    sub-int/2addr p3, v0

    .line 2523
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2524
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2525
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2530
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-gt p3, v1, :cond_40

    .line 2532
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2533
    iput p3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    goto :goto_45

    .line 2536
    :cond_40
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2538
    :goto_45
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2540
    .end local v0    # "bytesWritten":I
    :goto_4a
    return-void
.end method

.method public writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2302
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2304
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer(B)V

    .line 2305
    return-void
.end method

.method public writeByteArray(I[B)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2321
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

    .line 2322
    return-void
.end method

.method public writeByteArray(I[BII)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2328
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2329
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    .line 2330
    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2348
    invoke-virtual {p0, p3}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2349
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2350
    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2335
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2336
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2337
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2338
    return-void
.end method

.method public writeBytes(ILcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2315
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2316
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    .line 2317
    return-void
.end method

.method public writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2342
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2343
    invoke-virtual {p1, p0}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 2344
    return-void
.end method

.method public writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2281
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2282
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2283
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2284
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2421
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2422
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed32NoTag(I)V

    .line 2423
    return-void
.end method

.method public writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2295
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2296
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2297
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2298
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .registers 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2433
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2434
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferFixed64NoTag(J)V

    .line 2435
    return-void
.end method

.method public writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2267
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2269
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferInt32NoTag(I)V

    .line 2270
    return-void
.end method

.method public writeInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    if-ltz p1, :cond_6

    .line 2406
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2409
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    .line 2411
    :goto_a
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2583
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2584
    return-void
.end method

.method public writeLazy([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2544
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    .line 2545
    return-void
.end method

.method public writeMessage(ILcom/tds/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2366
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2367
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V

    .line 2368
    return-void
.end method

.method public writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2390
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2391
    invoke-interface {p1, p0}, Lcom/tds/protobuf/MessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 2392
    return-void
.end method

.method public writeMessageSetExtension(ILcom/tds/protobuf/MessageLite;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2373
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2374
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2375
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 2376
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2377
    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2354
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2355
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_20

    .line 2357
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2358
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2359
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2361
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_20
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/tds/protobuf/ByteString;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2382
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2383
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    .line 2384
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILcom/tds/protobuf/ByteString;)V

    .line 2385
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2386
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2309
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 2310
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2311
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2442
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2443
    .local v0, "maxLength":I
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2447
    .local v1, "maxLengthVarIntSize":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    if-le v2, v3, :cond_1e

    .line 2452
    new-array v2, v0, [B

    .line 2453
    .local v2, "encodedBytes":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2454
    .local v4, "actualLength":I
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2455
    invoke-virtual {p0, v2, v3, v4}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    .line 2456
    return-void

    .line 2460
    .end local v2    # "encodedBytes":[B
    .end local v4    # "actualLength":I
    :cond_1e
    add-int v2, v1, v0

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2a

    .line 2462
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 2467
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 2468
    .local v2, "minLengthVarIntSize":I
    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I
    :try_end_34
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_34} :catch_7f

    .line 2471
    .local v3, "oldPosition":I
    if-ne v2, v1, :cond_52

    .line 2472
    add-int v4, v3, v2

    :try_start_38
    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2473
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->limit:I

    iget v7, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v7

    invoke-static {p1, v4, v5, v6}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2476
    .local v4, "newPosition":I
    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2477
    sub-int v5, v4, v3

    sub-int/2addr v5, v2

    .line 2478
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2479
    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2480
    .end local v4    # "newPosition":I
    goto :goto_64

    .line 2481
    .end local v5    # "length":I
    :cond_52
    invoke-static {p1}, Lcom/tds/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    move v5, v4

    .line 2482
    .restart local v5    # "length":I
    invoke-virtual {p0, v5}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2483
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->buffer:[B

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    invoke-static {p1, v4, v6, v5}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2485
    :goto_64
    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I
    :try_end_69
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_38 .. :try_end_69} :catch_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_38 .. :try_end_69} :catch_6b

    .line 2494
    nop

    .line 2497
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v5    # "length":I
    goto :goto_83

    .line 2492
    .restart local v0    # "maxLength":I
    .restart local v1    # "maxLengthVarIntSize":I
    .restart local v2    # "minLengthVarIntSize":I
    .restart local v3    # "oldPosition":I
    :catch_6b
    move-exception v4

    .line 2493
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6c
    new-instance v5, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v5, v4}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v5

    .line 2486
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_72
    move-exception v4

    .line 2489
    .local v4, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    sub-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->totalBytesWritten:I

    .line 2490
    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 2491
    nop

    .end local p0    # "this":Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;
    .end local p1    # "value":Ljava/lang/String;
    throw v4
    :try_end_7f
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_6c .. :try_end_7f} :catch_7f

    .line 2495
    .end local v0    # "maxLength":I
    .end local v1    # "maxLengthVarIntSize":I
    .end local v2    # "minLengthVarIntSize":I
    .end local v3    # "oldPosition":I
    .end local v4    # "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    .restart local p0    # "this":Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 2496
    .local v0, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2498
    .end local v0    # "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    :goto_83
    return-void
.end method

.method public writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2262
    invoke-static {p1, p2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 2263
    return-void
.end method

.method public writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2274
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2276
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2277
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2415
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2416
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt32NoTag(I)V

    .line 2417
    return-void
.end method

.method public writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2288
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferTag(II)V

    .line 2290
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2291
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .registers 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2427
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    .line 2428
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;->bufferUInt64NoTag(J)V

    .line 2429
    return-void
.end method
