.class public abstract Lcom/tds/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/ByteString$BoundedByteString;,
        Lcom/tds/protobuf/ByteString$LiteralByteString;,
        Lcom/tds/protobuf/ByteString$CodedBuilder;,
        Lcom/tds/protobuf/ByteString$Output;,
        Lcom/tds/protobuf/ByteString$LeafByteString;,
        Lcom/tds/protobuf/ByteString$ByteIterator;,
        Lcom/tds/protobuf/ByteString$ArraysByteArrayCopier;,
        Lcom/tds/protobuf/ByteString$SystemByteArrayCopier;,
        Lcom/tds/protobuf/ByteString$ByteArrayCopier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CONCATENATE_BY_COPY_SIZE:I = 0x80

.field public static final EMPTY:Lcom/tds/protobuf/ByteString;

.field static final MAX_READ_FROM_CHUNK_SIZE:I = 0x2000

.field static final MIN_READ_FROM_CHUNK_SIZE:I = 0x100

.field private static final byteArrayCopier:Lcom/tds/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 68
    nop

    .line 89
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/tds/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    .line 129
    const/4 v0, 0x1

    .line 131
    .local v0, "isAndroid":Z
    :try_start_b
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_11

    .line 134
    goto :goto_13

    .line 132
    :catch_11
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 136
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_13
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    new-instance v2, Lcom/tds/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v2, v1}, Lcom/tds/protobuf/ByteString$SystemByteArrayCopier;-><init>(Lcom/tds/protobuf/ByteString$1;)V

    goto :goto_21

    :cond_1c
    new-instance v2, Lcom/tds/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v2, v1}, Lcom/tds/protobuf/ByteString$ArraysByteArrayCopier;-><init>(Lcom/tds/protobuf/ByteString$1;)V

    :goto_21
    sput-object v2, Lcom/tds/protobuf/ByteString;->byteArrayCopier:Lcom/tds/protobuf/ByteString$ByteArrayCopier;

    .line 137
    .end local v0    # "isAndroid":Z
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/ByteString;->hash:I

    .line 147
    return-void
.end method

.method private static balancedConcat(Ljava/util/Iterator;I)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/tds/protobuf/ByteString;",
            ">;I)",
            "Lcom/tds/protobuf/ByteString;"
        }
    .end annotation

    .line 556
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/protobuf/ByteString;>;"
    nop

    .line 558
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 559
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/ByteString;

    .local v0, "result":Lcom/tds/protobuf/ByteString;
    goto :goto_1c

    .line 561
    .end local v0    # "result":Lcom/tds/protobuf/ByteString;
    :cond_b
    ushr-int/lit8 v0, p1, 0x1

    .line 562
    .local v0, "halfLength":I
    invoke-static {p0, v0}, Lcom/tds/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    .line 563
    .local v1, "left":Lcom/tds/protobuf/ByteString;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/tds/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    .line 564
    .local v2, "right":Lcom/tds/protobuf/ByteString;
    invoke-virtual {v1, v2}, Lcom/tds/protobuf/ByteString;->concat(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v3

    move-object v0, v3

    .line 566
    .end local v1    # "left":Lcom/tds/protobuf/ByteString;
    .end local v2    # "right":Lcom/tds/protobuf/ByteString;
    .local v0, "result":Lcom/tds/protobuf/ByteString;
    :goto_1c
    return-object v0
.end method

.method static checkIndex(II)V
    .registers 5
    .param p0, "index"    # I
    .param p1, "size"    # I

    .line 1191
    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_45

    .line 1192
    if-gez p0, :cond_22

    .line 1193
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_22
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_45
    return-void
.end method

.method static checkRange(III)I
    .registers 7
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "size"    # I

    .line 1209
    sub-int v0, p1, p0

    .line 1210
    .local v0, "length":I
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_73

    .line 1211
    if-ltz p0, :cond_54

    .line 1214
    if-ge p1, p0, :cond_31

    .line 1215
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index larger than ending index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_31
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :cond_54
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1221
    :cond_73
    return v0
.end method

.method public static copyFrom(Ljava/lang/Iterable;)Lcom/tds/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/tds/protobuf/ByteString;",
            ">;)",
            "Lcom/tds/protobuf/ByteString;"
        }
    .end annotation

    .line 535
    .local p0, "byteStrings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/tds/protobuf/ByteString;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_17

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "tempSize":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/protobuf/ByteString;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 540
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/protobuf/ByteString;>;"
    :cond_15
    nop

    .line 541
    .local v0, "size":I
    goto :goto_1e

    .line 542
    .end local v0    # "size":I
    :cond_17
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 545
    .restart local v0    # "size":I
    :goto_1e
    if-nez v0, :cond_23

    .line 546
    sget-object v1, Lcom/tds/protobuf/ByteString;->EMPTY:Lcom/tds/protobuf/ByteString;

    return-object v1

    .line 549
    :cond_23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tds/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/tds/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/protobuf/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 367
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/tds/protobuf/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 379
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 353
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tds/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/tds/protobuf/ByteString;
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 340
    new-array v0, p1, [B

    .line 341
    .local v0, "copy":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 342
    new-instance v1, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-direct {v1, v0}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFrom([B)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p0, "bytes"    # [B

    .line 310
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/tds/protobuf/ByteString;->copyFrom([BII)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/tds/protobuf/ByteString;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 300
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/tds/protobuf/ByteString;->byteArrayCopier:Lcom/tds/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p0, p1, p2}, Lcom/tds/protobuf/ByteString$ByteArrayCopier;->copyFrom([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;

    .line 390
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static newCodedBuilder(I)Lcom/tds/protobuf/ByteString$CodedBuilder;
    .registers 3
    .param p0, "size"    # I

    .line 1114
    new-instance v0, Lcom/tds/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tds/protobuf/ByteString$CodedBuilder;-><init>(ILcom/tds/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/tds/protobuf/ByteString$Output;
    .registers 2

    .line 915
    new-instance v0, Lcom/tds/protobuf/ByteString$Output;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method public static newOutput(I)Lcom/tds/protobuf/ByteString$Output;
    .registers 2
    .param p0, "initialCapacity"    # I

    .line 901
    new-instance v0, Lcom/tds/protobuf/ByteString$Output;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method private static readChunk(Ljava/io/InputStream;I)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    new-array v0, p1, [B

    .line 481
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 482
    .local v1, "bytesRead":I
    :goto_3
    if-ge v1, p1, :cond_11

    .line 483
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 484
    .local v2, "count":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 485
    goto :goto_11

    .line 487
    :cond_f
    add-int/2addr v1, v2

    .line 488
    .end local v2    # "count":I
    goto :goto_3

    .line 490
    :cond_11
    :goto_11
    if-nez v1, :cond_15

    .line 491
    const/4 v2, 0x0

    return-object v2

    .line 495
    :cond_15
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/tds/protobuf/ByteString;->copyFrom([BII)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method public static readFrom(Ljava/io/InputStream;)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const/16 v0, 0x100

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Lcom/tds/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static readFrom(Ljava/io/InputStream;I)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-static {p0, p1, p1}, Lcom/tds/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static readFrom(Ljava/io/InputStream;II)Lcom/tds/protobuf/ByteString;
    .registers 7
    .param p0, "streamToDrain"    # Ljava/io/InputStream;
    .param p1, "minChunkSize"    # I
    .param p2, "maxChunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/protobuf/ByteString;>;"
    move v1, p1

    .line 457
    .local v1, "chunkSize":I
    :goto_6
    invoke-static {p0, v1}, Lcom/tds/protobuf/ByteString;->readChunk(Ljava/io/InputStream;I)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    .line 458
    .local v2, "chunk":Lcom/tds/protobuf/ByteString;
    if-nez v2, :cond_12

    .line 459
    nop

    .line 465
    .end local v2    # "chunk":Lcom/tds/protobuf/ByteString;
    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/tds/protobuf/ByteString;

    move-result-object v2

    return-object v2

    .line 461
    .restart local v2    # "chunk":Lcom/tds/protobuf/ByteString;
    :cond_12
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    mul-int/lit8 v3, v1, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 463
    .end local v2    # "chunk":Lcom/tds/protobuf/ByteString;
    goto :goto_6
.end method

.method static wrap([B)Lcom/tds/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # [B

    .line 319
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static wrap([BII)Lcom/tds/protobuf/ByteString;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 328
    new-instance v0, Lcom/tds/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/tds/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asReadOnlyByteBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract byteAt(I)B
.end method

.method public final concat(Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 5
    .param p1, "other"    # Lcom/tds/protobuf/ByteString;

    .line 512
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 517
    invoke-static {p0, p1}, Lcom/tds/protobuf/RopeByteString;->concatenate(Lcom/tds/protobuf/ByteString;Lcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 513
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract copyTo(Ljava/nio/ByteBuffer;)V
.end method

.method public copyTo([BI)V
    .registers 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .line 580
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/tds/protobuf/ByteString;->copyTo([BIII)V

    .line 581
    return-void
.end method

.method public final copyTo([BIII)V
    .registers 7
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "numberToCopy"    # I

    .line 595
    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/tds/protobuf/ByteString;->checkRange(III)I

    .line 596
    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/tds/protobuf/ByteString;->checkRange(III)I

    .line 597
    if-lez p4, :cond_14

    .line 598
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    .line 600
    :cond_14
    return-void
.end method

.method protected abstract copyToInternal([BIII)V
.end method

.method public final endsWith(Lcom/tds/protobuf/ByteString;)Z
    .registers 4
    .param p1, "suffix"    # Lcom/tds/protobuf/ByteString;

    .line 284
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 285
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/ByteString;->substring(I)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract getTreeDepth()I
.end method

.method public final hashCode()I
    .registers 4

    .line 843
    iget v0, p0, Lcom/tds/protobuf/ByteString;->hash:I

    .line 845
    .local v0, "h":I
    if-nez v0, :cond_12

    .line 846
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    .line 847
    .local v1, "size":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v1}, Lcom/tds/protobuf/ByteString;->partialHash(III)I

    move-result v0

    .line 848
    if-nez v0, :cond_10

    .line 849
    const/4 v0, 0x1

    .line 851
    :cond_10
    iput v0, p0, Lcom/tds/protobuf/ByteString;->hash:I

    .line 853
    .end local v1    # "size":I
    :cond_12
    return v0
.end method

.method protected abstract isBalanced()Z
.end method

.method public final isEmpty()Z
    .registers 2

    .line 229
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract isValidUtf8()Z
.end method

.method public final iterator()Lcom/tds/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 170
    new-instance v0, Lcom/tds/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/ByteString$1;-><init>(Lcom/tds/protobuf/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->iterator()Lcom/tds/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract newCodedInput()Lcom/tds/protobuf/CodedInputStream;
.end method

.method public abstract newInput()Ljava/io/InputStream;
.end method

.method protected abstract partialHash(III)I
.end method

.method protected abstract partialIsValidUtf8(III)I
.end method

.method protected final peekCachedHashCode()I
    .registers 2

    .line 1167
    iget v0, p0, Lcom/tds/protobuf/ByteString;->hash:I

    return v0
.end method

.method public abstract size()I
.end method

.method public final startsWith(Lcom/tds/protobuf/ByteString;)Z
    .registers 5
    .param p1, "prefix"    # Lcom/tds/protobuf/ByteString;

    .line 270
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1b

    .line 271
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    nop

    :goto_1c
    return v2
.end method

.method public final substring(I)Lcom/tds/protobuf/ByteString;
    .registers 3
    .param p1, "beginIndex"    # I

    .line 245
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/ByteString;->substring(II)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public abstract substring(II)Lcom/tds/protobuf/ByteString;
.end method

.method public final toByteArray()[B
    .registers 4

    .line 627
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    .line 628
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 629
    sget-object v1, Lcom/tds/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 631
    :cond_9
    new-array v1, v0, [B

    .line 632
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/tds/protobuf/ByteString;->copyToInternal([BIII)V

    .line 633
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1226
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1227
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1226
    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 715
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 716
    :catch_9
    move-exception v0

    .line 717
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 718
    .local v1, "exception":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 719
    throw v1
.end method

.method public final toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 731
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/ByteString;->toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method protected abstract toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final toStringUtf8()Ljava/lang/String;
    .registers 2

    .line 752
    sget-object v0, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract writeTo(Lcom/tds/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final writeTo(Ljava/io/OutputStream;II)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sourceOffset"    # I
    .param p3, "numberToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    add-int v0, p2, p3

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/tds/protobuf/ByteString;->checkRange(III)I

    .line 656
    if-lez p3, :cond_e

    .line 657
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    .line 659
    :cond_e
    return-void
.end method

.method abstract writeToInternal(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
