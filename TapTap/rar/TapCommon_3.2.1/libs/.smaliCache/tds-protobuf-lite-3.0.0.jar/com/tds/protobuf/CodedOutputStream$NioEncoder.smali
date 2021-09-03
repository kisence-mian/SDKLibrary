.class final Lcom/tds/protobuf/CodedOutputStream$NioEncoder;
.super Lcom/tds/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NioEncoder"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final originalBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;-><init>(Lcom/tds/protobuf/CodedOutputStream$1;)V

    .line 1478
    iput-object p1, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    .line 1479
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1480
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->initialPosition:I

    .line 1481
    return-void
.end method

.method private encode(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1772
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/tds/protobuf/Utf8;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1775
    nop

    .line 1776
    return-void

    .line 1773
    :catch_7
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 1757
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->originalBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1758
    return-void
.end method

.method public getTotalBytesWritten()I
    .registers 3

    .line 1767
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public spaceLeft()I
    .registers 2

    .line 1762
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public write(B)V
    .registers 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1591
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1594
    nop

    .line 1595
    return-void

    .line 1592
    :catch_7
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1704
    nop

    .line 1705
    return-void

    .line 1702
    :catch_7
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .registers 6
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1685
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1690
    nop

    .line 1691
    return-void

    .line 1688
    :catch_7
    move-exception v0

    .line 1689
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1686
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_e
    move-exception v0

    .line 1687
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 1520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1521
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write(B)V

    .line 1522
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

    .line 1538
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeByteArray(I[BII)V

    .line 1539
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

    .line 1545
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1546
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeByteArrayNoTag([BII)V

    .line 1547
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

    .line 1605
    invoke-virtual {p0, p3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1606
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    .line 1607
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

    .line 1552
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1553
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1554
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1555
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

    .line 1532
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1533
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    .line 1534
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

    .line 1599
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1600
    invoke-virtual {p1, p0}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 1601
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

    .line 1502
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1503
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeFixed32NoTag(I)V

    .line 1504
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1653
    nop

    .line 1654
    return-void

    .line 1651
    :catch_7
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 1514
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1515
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeFixed64NoTag(J)V

    .line 1516
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1679
    nop

    .line 1680
    return-void

    .line 1677
    :catch_7
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 1490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1491
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeInt32NoTag(I)V

    .line 1492
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

    .line 1622
    if-ltz p1, :cond_6

    .line 1623
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 1626
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt64NoTag(J)V

    .line 1628
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

    .line 1709
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1710
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

    .line 1695
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    .line 1696
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

    .line 1560
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1561
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V

    .line 1562
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

    .line 1584
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1585
    invoke-interface {p1, p0}, Lcom/tds/protobuf/MessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 1586
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

    .line 1567
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1568
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32(II)V

    .line 1569
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 1570
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1571
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

    .line 1611
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write([BII)V

    goto :goto_20

    .line 1614
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1615
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1616
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1618
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

    .line 1576
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1577
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32(II)V

    .line 1578
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeBytes(ILcom/tds/protobuf/ByteString;)V

    .line 1579
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1580
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

    .line 1526
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1527
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1714
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1718
    .local v0, "startPos":I
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1719
    .local v1, "maxEncodedSize":I
    invoke-static {v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1720
    .local v2, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1721
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v2, :cond_40

    .line 1724
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    .line 1725
    .local v4, "startOfBytes":I
    iget-object v5, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1728
    invoke-direct {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->encode(Ljava/lang/String;)V

    .line 1731
    iget-object v5, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1732
    .local v5, "endOfBytes":I
    iget-object v6, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1733
    sub-int v6, v5, v4

    invoke-virtual {p0, v6}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1736
    iget-object v6, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1737
    nop

    .end local v4    # "startOfBytes":I
    .end local v5    # "endOfBytes":I
    goto :goto_5b

    .line 1738
    :cond_40
    invoke-static {p1}, Lcom/tds/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1739
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1740
    invoke-direct {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->encode(Ljava/lang/String;)V
    :try_end_4a
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_6 .. :try_end_4a} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_4a} :catch_4b

    goto :goto_5b

    .line 1748
    .end local v1    # "maxEncodedSize":I
    .end local v2    # "maxLengthVarIntSize":I
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_4b
    move-exception v1

    .line 1750
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1742
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v1

    .line 1744
    .local v1, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    iget-object v2, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1747
    invoke-virtual {p0, p1, v1}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1751
    .end local v1    # "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    :goto_5b
    nop

    .line 1752
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

    .line 1485
    invoke-static {p1, p2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1486
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

    .line 1496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1497
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt32NoTag(I)V

    .line 1498
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_b

    .line 1635
    :try_start_4
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1636
    return-void

    .line 1638
    :cond_b
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_15} :catch_18

    .line 1639
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 1642
    :catch_18
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 1508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeTag(II)V

    .line 1509
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->writeUInt64NoTag(J)V

    .line 1510
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .registers 7
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1660
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1661
    :try_start_9
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1662
    return-void

    .line 1664
    :cond_11
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;->buffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1c
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_1c} :catch_1f

    .line 1665
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 1668
    :catch_1f
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
