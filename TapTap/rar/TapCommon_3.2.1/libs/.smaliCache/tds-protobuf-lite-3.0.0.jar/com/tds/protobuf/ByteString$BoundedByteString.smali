.class final Lcom/tds/protobuf/ByteString$BoundedByteString;
.super Lcom/tds/protobuf/ByteString$LiteralByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytesLength:I

.field private final bytesOffset:I


# direct methods
.method constructor <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1485
    invoke-direct {p0, p1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 1486
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/tds/protobuf/ByteString$BoundedByteString;->checkRange(III)I

    .line 1488
    iput p2, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 1489
    iput p3, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytesLength:I

    .line 1490
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1540
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteAt(I)B
    .registers 4
    .param p1, "index"    # I

    .line 1506
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tds/protobuf/ByteString$BoundedByteString;->checkIndex(II)V

    .line 1507
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytes:[B

    iget v1, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected copyToInternal([BIII)V
    .registers 7
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 1526
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1528
    return-void
.end method

.method protected getOffsetIntoBytes()I
    .registers 2

    .line 1517
    iget v0, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method public size()I
    .registers 2

    .line 1512
    iget v0, p0, Lcom/tds/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1536
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$BoundedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->wrap([B)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
