.class final Lcom/tds/protobuf/NioByteString;
.super Lcom/tds/protobuf/ByteString$LeafByteString;
.source "NioByteString.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString$LeafByteString;-><init>()V

    .line 52
    if-eqz p1, :cond_14

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    .line 57
    return-void

    .line 53
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/tds/protobuf/NioByteString;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/NioByteString;

    .line 48
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "NioByteString instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private slice(II)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 280
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt p1, v0, :cond_2f

    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-gt p2, v0, :cond_2f

    if-gt p1, p2, :cond_2f

    .line 285
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    .local v0, "slice":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    iget-object v1, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 288
    return-object v0

    .line 281
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid indices [%d, %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/tds/protobuf/NioByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .registers 5
    .param p1, "index"    # I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 84
    :catch_7
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_12
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    return-void
.end method

.method protected copyToInternal([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 109
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 188
    return v0

    .line 190
    :cond_4
    instance-of v1, p1, Lcom/tds/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 191
    return v2

    .line 193
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tds/protobuf/ByteString;

    .line 194
    .local v1, "otherString":Lcom/tds/protobuf/ByteString;
    invoke-virtual {p0}, Lcom/tds/protobuf/NioByteString;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 195
    return v2

    .line 197
    :cond_18
    invoke-virtual {p0}, Lcom/tds/protobuf/NioByteString;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 198
    return v0

    .line 200
    :cond_1f
    instance-of v0, p1, Lcom/tds/protobuf/NioByteString;

    if-eqz v0, :cond_2f

    .line 201
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    move-object v2, p1

    check-cast v2, Lcom/tds/protobuf/NioByteString;

    iget-object v2, v2, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 203
    :cond_2f
    instance-of v0, p1, Lcom/tds/protobuf/RopeByteString;

    if-eqz v0, :cond_38

    .line 204
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 206
    :cond_38
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/tds/protobuf/ByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method equalsRange(Lcom/tds/protobuf/ByteString;II)Z
    .registers 6
    .param p1, "other"    # Lcom/tds/protobuf/ByteString;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/tds/protobuf/NioByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidUtf8()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/tds/protobuf/Utf8;->isValidUtf8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public newCodedInput()Lcom/tds/protobuf/CodedInputStream;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/tds/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 2

    .line 219
    new-instance v0, Lcom/tds/protobuf/NioByteString$1;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/NioByteString$1;-><init>(Lcom/tds/protobuf/NioByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 7
    .param p1, "h"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 211
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_12

    .line 212
    mul-int/lit8 v1, p1, 0x1f

    iget-object v2, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int p1, v1, v2

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "i":I
    :cond_12
    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .registers 6
    .param p1, "state"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 182
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    add-int v1, p2, p3

    invoke-static {p1, v0, p2, v1}, Lcom/tds/protobuf/Utf8;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public substring(II)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 97
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tds/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "slice":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/tds/protobuf/NioByteString;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 101
    .end local v0    # "slice":Ljava/nio/ByteBuffer;
    :catch_a
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_15
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method protected toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 162
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 163
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 164
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    .local v1, "offset":I
    iget-object v2, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v2, "length":I
    goto :goto_28

    .line 168
    .end local v0    # "bytes":[B
    .end local v1    # "offset":I
    .end local v2    # "length":I
    :cond_22
    invoke-virtual {p0}, Lcom/tds/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    .line 169
    .restart local v0    # "bytes":[B
    const/4 v1, 0x0

    .line 170
    .restart local v1    # "offset":I
    array-length v2, v0

    .line 172
    .restart local v2    # "length":I
    :goto_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3
.end method

.method writeTo(Lcom/tds/protobuf/ByteOutput;)V
    .registers 3
    .param p1, "output"    # Lcom/tds/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tds/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 145
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/tds/protobuf/NioByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    return-void
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 134
    iget-object v0, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v1, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 135
    .local v0, "bufferOffset":I
    iget-object v1, p0, Lcom/tds/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    return-void

    .line 139
    .end local v0    # "bufferOffset":I
    :cond_20
    add-int v0, p2, p3

    invoke-direct {p0, p2, v0}, Lcom/tds/protobuf/NioByteString;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tds/protobuf/ByteBufferWriter;->write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 140
    return-void
.end method
