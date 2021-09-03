.class final Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final out:Lcom/tds/protobuf/ByteOutput;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/ByteOutput;I)V
    .registers 5
    .param p1, "out"    # Lcom/tds/protobuf/ByteOutput;
    .param p2, "bufferSize"    # I

    .line 1950
    invoke-direct {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 1951
    if-eqz p1, :cond_8

    .line 1954
    iput-object p1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    .line 1955
    return-void

    .line 1952
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

    .line 2240
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/tds/protobuf/ByteOutput;->write([BII)V

    .line 2241
    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2242
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

    .line 2234
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 2235
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2237
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

    .line 2197
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    if-lez v0, :cond_7

    .line 2199
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2201
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

    .line 2093
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-ne v0, v1, :cond_9

    .line 2094
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2097
    :cond_9
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2098
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2219
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2221
    .local v0, "length":I
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/tds/protobuf/ByteOutput;->write(Ljava/nio/ByteBuffer;)V

    .line 2222
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2223
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2205
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2206
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/protobuf/ByteOutput;->write([BII)V

    .line 2207
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2208
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

    .line 1999
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2001
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2002
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

    .line 2018
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArray(I[BII)V

    .line 2019
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

    .line 2025
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2026
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArrayNoTag([BII)V

    .line 2027
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

    .line 2045
    invoke-virtual {p0, p3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2046
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    .line 2047
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

    .line 2032
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2033
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2034
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2035
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

    .line 2012
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2013
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    .line 2014
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

    .line 2039
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2040
    invoke-virtual {p1, p0}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 2041
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

    .line 1978
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 1979
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1980
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 1981
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

    .line 2118
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2119
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 2120
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

    .line 1992
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 1993
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1994
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 1995
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

    .line 2130
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2131
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 2132
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

    .line 1964
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 1965
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1966
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferInt32NoTag(I)V

    .line 1967
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

    .line 2102
    if-ltz p1, :cond_6

    .line 2103
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 2106
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt64NoTag(J)V

    .line 2108
    :goto_a
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2227
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2228
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2229
    .local v0, "length":I
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/tds/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 2230
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2231
    return-void
.end method

.method public writeLazy([BII)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2212
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2213
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/tds/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/protobuf/ByteOutput;->writeLazy([BII)V

    .line 2214
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2215
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

    .line 2063
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2064
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V

    .line 2065
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

    .line 2087
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2088
    invoke-interface {p1, p0}, Lcom/tds/protobuf/MessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 2089
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

    .line 2070
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2071
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2072
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 2073
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2074
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

    .line 2051
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2052
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    goto :goto_20

    .line 2054
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2055
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2056
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2058
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

    .line 2079
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2080
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2081
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytes(ILcom/tds/protobuf/ByteString;)V

    .line 2082
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2083
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

    .line 2006
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2007
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2008
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

    .line 2138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2139
    .local v0, "maxLength":I
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2143
    .local v1, "maxLengthVarIntSize":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-le v2, v3, :cond_1e

    .line 2148
    new-array v2, v0, [B

    .line 2149
    .local v2, "encodedBytes":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2150
    .local v4, "actualLength":I
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2151
    invoke-virtual {p0, v2, v3, v4}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeLazy([BII)V

    .line 2152
    return-void

    .line 2156
    .end local v2    # "encodedBytes":[B
    .end local v4    # "actualLength":I
    :cond_1e
    add-int v2, v1, v0

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2a

    .line 2158
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2161
    :cond_2a
    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2165
    .local v2, "oldPosition":I
    :try_start_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 2167
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v1, :cond_57

    .line 2168
    add-int v4, v2, v3

    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2169
    iget-object v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v7, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v6, v7

    invoke-static {p1, v4, v5, v6}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2172
    .local v4, "newPosition":I
    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2173
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    .line 2174
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2175
    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2176
    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2177
    .end local v4    # "newPosition":I
    .end local v5    # "length":I
    goto :goto_83

    .line 2178
    :cond_57
    invoke-static {p1}, Lcom/tds/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 2179
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2180
    iget-object v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    invoke-static {p1, v5, v6, v4}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v5

    iput v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2181
    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I
    :try_end_6d
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2c .. :try_end_6d} :catch_75
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2c .. :try_end_6d} :catch_6e

    goto :goto_83

    .line 2190
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_6e
    move-exception v3

    .line 2191
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v4, v3}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2183
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_75
    move-exception v3

    .line 2185
    .local v3, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2186
    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2189
    invoke-virtual {p0, p1, v3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2192
    .end local v3    # "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    :goto_83
    nop

    .line 2193
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

    .line 1959
    invoke-static {p1, p2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 1960
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

    .line 1971
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1973
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 1974
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

    .line 2112
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2113
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2114
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

    .line 1985
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 1986
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 1987
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 1988
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

    .line 2124
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2125
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 2126
    return-void
.end method
