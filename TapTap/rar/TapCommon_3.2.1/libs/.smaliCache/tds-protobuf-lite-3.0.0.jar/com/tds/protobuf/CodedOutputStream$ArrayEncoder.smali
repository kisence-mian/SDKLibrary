.class Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/tds/protobuf/CodedOutputStream;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;-><init>(Lcom/tds/protobuf/CodedOutputStream$1;)V

    .line 1105
    if-eqz p1, :cond_3f

    .line 1108
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 1113
    iput-object p1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 1114
    iput p2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    .line 1115
    iput p2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1116
    add-int v0, p2, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 1117
    return-void

    .line 1109
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p1

    .line 1111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1109
    const-string v2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public flush()V
    .registers 1

    .line 1434
    return-void
.end method

.method public final getTotalBytesWritten()I
    .registers 3

    .line 1443
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final spaceLeft()I
    .registers 3

    .line 1438
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final write(B)V
    .registers 7
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_c

    .line 1255
    nop

    .line 1256
    return-void

    .line 1252
    :catch_c
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1384
    .local v0, "length":I
    :try_start_4
    iget-object v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1385
    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_12

    .line 1389
    nop

    .line 1390
    return-void

    .line 1386
    :catch_12
    move-exception v1

    .line 1387
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1388
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Pos: %d, limit: %d, len: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final write([BII)V
    .registers 9
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1368
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_e

    .line 1372
    nop

    .line 1373
    return-void

    .line 1369
    :catch_e
    move-exception v0

    .line 1370
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1371
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeBool(IZ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1157
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write(B)V

    .line 1158
    return-void
.end method

.method public final writeByteArray(I[B)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArray(I[BII)V

    .line 1175
    return-void
.end method

.method public final writeByteArray(I[BII)V
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

    .line 1181
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1182
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeByteArrayNoTag([BII)V

    .line 1183
    return-void
.end method

.method public final writeByteArrayNoTag([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    invoke-virtual {p0, p3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1203
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1204
    return-void
.end method

.method public final writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1188
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1189
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1190
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 1191
    return-void
.end method

.method public final writeBytes(ILcom/tds/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1169
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    .line 1170
    return-void
.end method

.method public final writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1196
    invoke-virtual {p1, p0}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 1197
    return-void
.end method

.method public final writeFixed32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1138
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1139
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed32NoTag(I)V

    .line 1140
    return-void
.end method

.method public final writeFixed32NoTag(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1304
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1305
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1306
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1307
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2e} :catch_30

    .line 1311
    nop

    .line 1312
    return-void

    .line 1308
    :catch_30
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1310
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeFixed64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1151
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeFixed64NoTag(J)V

    .line 1152
    return-void
.end method

.method public final writeFixed64NoTag(J)V
    .registers 8
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1351
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1352
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1353
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1354
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1355
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1356
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1357
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    const/16 v1, 0x38

    shr-long v3, p1, v1

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2
    :try_end_70
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_70} :catch_72

    .line 1361
    nop

    .line 1362
    return-void

    .line 1358
    :catch_72
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1127
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeInt32NoTag(I)V

    .line 1128
    return-void
.end method

.method public final writeInt32NoTag(I)V
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1260
    if-ltz p1, :cond_6

    .line 1261
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    goto :goto_a

    .line 1264
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1266
    :goto_a
    return-void
.end method

.method public final writeLazy(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1395
    return-void
.end method

.method public final writeLazy([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1377
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    .line 1378
    return-void
.end method

.method public final writeMessage(ILcom/tds/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1221
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V

    .line 1222
    return-void
.end method

.method public final writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V
    .registers 3
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1245
    invoke-interface {p1, p0}, Lcom/tds/protobuf/MessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 1246
    return-void
.end method

.method public final writeMessageSetExtension(ILcom/tds/protobuf/MessageLite;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1228
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1229
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeMessage(ILcom/tds/protobuf/MessageLite;)V

    .line 1230
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1231
    return-void
.end method

.method public final writeRawBytes(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1209
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write([BII)V

    goto :goto_20

    .line 1211
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1212
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1213
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 1215
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_20
    return-void
.end method

.method public final writeRawMessageSetExtension(ILcom/tds/protobuf/ByteString;)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1236
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1237
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 1238
    invoke-virtual {p0, v1, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeBytes(ILcom/tds/protobuf/ByteString;)V

    .line 1239
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1240
    return-void
.end method

.method public final writeString(ILjava/lang/String;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1163
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method public final writeStringNoTag(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1403
    .local v0, "oldPosition":I
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 1404
    .local v1, "maxLength":I
    invoke-static {v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v2

    .line 1405
    .local v2, "maxLengthVarIntSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 1406
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v2, :cond_2f

    .line 1407
    add-int v4, v0, v3

    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1408
    iget-object v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v6

    invoke-static {p1, v5, v4, v6}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 1411
    .local v4, "newPosition":I
    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1412
    sub-int v5, v4, v0

    sub-int/2addr v5, v3

    .line 1413
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1414
    iput v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1415
    .end local v4    # "newPosition":I
    .end local v5    # "length":I
    goto :goto_52

    .line 1416
    :cond_2f
    invoke-static {p1}, Lcom/tds/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1417
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1418
    iget-object v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v6, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v7

    invoke-static {p1, v5, v6, v7}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v5

    iput v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_44
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_52

    .line 1426
    .end local v1    # "maxLength":I
    .end local v2    # "maxLengthVarIntSize":I
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_45
    move-exception v1

    .line 1427
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1420
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_4c
    move-exception v1

    .line 1422
    .local v1, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1425
    invoke-virtual {p0, p1, v1}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 1428
    .end local v1    # "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    :goto_52
    nop

    .line 1429
    return-void
.end method

.method public final writeTag(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    invoke-static {p1, p2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1122
    return-void
.end method

.method public final writeUInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1133
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32NoTag(I)V

    .line 1134
    return-void
.end method

.method public final writeUInt32NoTag(I)V
    .registers 9
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3e

    .line 1271
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v2

    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 1273
    .local v2, "pos":J
    :goto_17
    and-int/lit8 v0, p1, -0x80

    const-wide/16 v4, 0x1

    if-nez v0, :cond_2a

    .line 1274
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long/2addr v4, v2

    .end local v2    # "pos":J
    .local v4, "pos":J
    int-to-byte v6, p1

    invoke-static {v0, v2, v3, v6}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1275
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1276
    return-void

    .line 1278
    .end local v4    # "pos":J
    .restart local v2    # "pos":J
    :cond_2a
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long/2addr v4, v2

    .end local v2    # "pos":J
    .restart local v4    # "pos":J
    and-int/lit8 v6, p1, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v0, v2, v3, v6}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1279
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1280
    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v4

    goto :goto_17

    .line 1286
    .end local v4    # "pos":J
    :cond_3e
    :goto_3e
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_4e

    .line 1287
    :try_start_42
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1288
    return-void

    .line 1290
    :cond_4e
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5d} :catch_60

    .line 1291
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_3e

    .line 1294
    :catch_60
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final writeUInt64(IJ)V
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeTag(II)V

    .line 1145
    invoke-virtual {p0, p2, p3}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt64NoTag(J)V

    .line 1146
    return-void
.end method

.method public final writeUInt64NoTag(J)V
    .registers 15
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1316
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$100()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const/4 v6, 0x1

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->spaceLeft()I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_46

    .line 1317
    # getter for: Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J
    invoke-static {}, Lcom/tds/protobuf/CodedOutputStream;->access$200()J

    move-result-wide v7

    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 1319
    .local v7, "pos":J
    :goto_1c
    and-long v9, p1, v4

    cmp-long v0, v9, v2

    const-wide/16 v9, 0x1

    if-nez v0, :cond_32

    .line 1320
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long/2addr v9, v7

    .end local v7    # "pos":J
    .local v9, "pos":J
    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-static {v0, v7, v8, v1}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1321
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1322
    return-void

    .line 1324
    .end local v9    # "pos":J
    .restart local v7    # "pos":J
    :cond_32
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    add-long/2addr v9, v7

    .end local v7    # "pos":J
    .restart local v9    # "pos":J
    long-to-int v11, p1

    and-int/lit8 v11, v11, 0x7f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    invoke-static {v0, v7, v8, v11}, Lcom/tds/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1325
    iget v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1326
    ushr-long/2addr p1, v1

    move-wide v7, v9

    goto :goto_1c

    .line 1332
    .end local v9    # "pos":J
    :cond_46
    :goto_46
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_59

    .line 1333
    :try_start_4c
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1334
    return-void

    .line 1336
    :cond_59
    iget-object v0, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    iget v7, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v7
    :try_end_69
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_69} :catch_6b

    .line 1337
    ushr-long/2addr p1, v1

    goto :goto_46

    .line 1340
    :catch_6b
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 1342
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Pos: %d, limit: %d, len: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
