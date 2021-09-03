.class Lcom/tds/protobuf/ByteString$LiteralByteString;
.super Lcom/tds/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 1252
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1253
    iput-object p1, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1254
    return-void
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1302
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1307
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 1261
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 1297
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1298
    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 1292
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1293
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 1351
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 1352
    return v0

    .line 1354
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1355
    return v2

    .line 1358
    :cond_a
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/tds/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    .line 1359
    return v2

    .line 1361
    :cond_18
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_1f

    .line 1362
    return v0

    .line 1365
    :cond_1f
    instance-of v0, p1, Lcom/tds/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_41

    .line 1366
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    .line 1369
    .local v0, "otherAsLiteral":Lcom/tds/protobuf/ByteString$LiteralByteString;
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v1

    .line 1370
    .local v1, "thisHash":I
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->peekCachedHashCode()I

    move-result v3

    .line 1371
    .local v3, "thatHash":I
    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-eq v1, v3, :cond_35

    .line 1372
    return v2

    .line 1375
    :cond_35
    move-object v4, p1

    check-cast v4, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5}, Lcom/tds/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/tds/protobuf/ByteString;II)Z

    move-result v2

    return v2

    .line 1378
    .end local v0    # "otherAsLiteral":Lcom/tds/protobuf/ByteString$LiteralByteString;
    .end local v1    # "thisHash":I
    .end local v3    # "thatHash":I
    :cond_41
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final equalsRange(Lcom/tds/protobuf/ByteString;II)Z
    .registers 13
    .param p1, "other"    # Lcom/tds/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1393
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_76

    .line 1396
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_47

    .line 1401
    instance-of v0, p1, Lcom/tds/protobuf/ByteString$LiteralByteString;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 1402
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    .line 1403
    .local v0, "lbsOther":Lcom/tds/protobuf/ByteString$LiteralByteString;
    iget-object v2, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1404
    .local v2, "thisBytes":[B
    iget-object v3, v0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1405
    .local v3, "otherBytes":[B
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v4

    add-int/2addr v4, p3

    .line 1407
    .local v4, "thisLimit":I
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v5

    .line 1408
    .local v5, "thisIndex":I
    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v6

    add-int/2addr v6, p2

    .line 1409
    .local v6, "otherIndex":I
    :goto_28
    if-ge v5, v4, :cond_36

    .line 1410
    aget-byte v7, v2, v5

    aget-byte v8, v3, v6

    if-eq v7, v8, :cond_31

    .line 1411
    return v1

    .line 1409
    :cond_31
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 1414
    .end local v5    # "thisIndex":I
    .end local v6    # "otherIndex":I
    :cond_36
    const/4 v1, 0x1

    return v1

    .line 1417
    .end local v0    # "lbsOther":Lcom/tds/protobuf/ByteString$LiteralByteString;
    .end local v2    # "thisBytes":[B
    .end local v3    # "otherBytes":[B
    .end local v4    # "thisLimit":I
    :cond_38
    add-int v0, p2, p3

    invoke-virtual {p1, p2, v0}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, p3}, Lcom/tds/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1397
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1398
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getOffsetIntoBytes()I
    .registers 2

    .line 1450
    const/4 v0, 0x0

    return v0
.end method

.method public final isValidUtf8()Z
    .registers 4

    .line 1336
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1337
    .local v0, "offset":I
    iget-object v1, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/tds/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    return v1
.end method

.method public final newCodedInput()Lcom/tds/protobuf/CodedInputStream;
    .registers 5

    .line 1437
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1438
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    .line 1437
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tds/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final newInput()Ljava/io/InputStream;
    .registers 5

    .line 1430
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method protected final partialHash(III)I
    .registers 6
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1422
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/tds/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    return v0
.end method

.method protected final partialIsValidUtf8(III)I
    .registers 7
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1342
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 1343
    .local v0, "index":I
    iget-object v1, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/tds/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1
.end method

.method public size()I
    .registers 2

    .line 1266
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final substring(II)Lcom/tds/protobuf/ByteString;
    .registers 7
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1274
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->checkRange(III)I

    move-result v0

    .line 1276
    .local v0, "length":I
    if-nez v0, :cond_d

    .line 1277
    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    return-object v1

    .line 1280
    :cond_d
    new-instance v1, Lcom/tds/protobuf/ByteString$BoundedByteString;

    iget-object v2, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/tds/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v1
.end method

.method protected final toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1328
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final writeTo(Lcom/tds/protobuf/ByteOutput;)V
    .registers 5
    .param p1, "output"    # Lcom/tds/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tds/protobuf/ByteOutput;->writeLazy([BII)V

    .line 1324
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1313
    return-void
.end method

.method final writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1319
    return-void
.end method
