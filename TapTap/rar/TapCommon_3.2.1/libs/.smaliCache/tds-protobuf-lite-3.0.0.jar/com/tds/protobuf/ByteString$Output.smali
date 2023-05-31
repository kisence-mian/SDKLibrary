.class public final Lcom/tds/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tds/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 929
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tds/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 947
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 948
    if-ltz p1, :cond_13

    .line 951
    iput p1, p0, Lcom/tds/protobuf/ByteString$Output;->initialCapacity:I

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 953
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    .line 954
    return-void

    .line 949
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyArray([BI)[B
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 999
    new-array v0, p2, [B

    .line 1000
    .local v0, "result":[B
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1001
    return-object v0
.end method

.method private flushFullBuffer(I)V
    .registers 5
    .param p1, "minSize"    # I

    .line 1062
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/tds/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1067
    iget v1, p0, Lcom/tds/protobuf/ByteString$Output;->initialCapacity:I

    ushr-int/lit8 v0, v0, 0x1

    .line 1068
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1067
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1069
    .local v0, "newSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    .line 1070
    const/4 v1, 0x0

    iput v1, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    .line 1071
    return-void
.end method

.method private flushLastBuffer()V
    .registers 4

    .line 1078
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 1079
    if-lez v0, :cond_28

    .line 1080
    invoke-direct {p0, v1, v0}, Lcom/tds/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    .line 1081
    .local v0, "bufferCopy":[B
    iget-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/tds/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v0}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    .end local v0    # "bufferCopy":[B
    goto :goto_28

    .line 1086
    :cond_18
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/tds/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v0, Lcom/tds/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    .line 1094
    :cond_28
    :goto_28
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1095
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    .line 1096
    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 1045
    :try_start_1
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1046
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1047
    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1048
    monitor-exit p0

    return-void

    .line 1044
    .end local p0    # "this":Lcom/tds/protobuf/ByteString$Output;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 3

    monitor-enter p0

    .line 1036
    :try_start_1
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 1036
    .end local p0    # "this":Lcom/tds/protobuf/ByteString$Output;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/tds/protobuf/ByteString;
    .registers 2

    monitor-enter p0

    .line 991
    :try_start_1
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 992
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tds/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/tds/protobuf/ByteString;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 990
    .end local p0    # "this":Lcom/tds/protobuf/ByteString$Output;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1052
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1053
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$Output;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1052
    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .param p1, "b"    # I

    monitor-enter p0

    .line 958
    :try_start_1
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 961
    .end local p0    # "this":Lcom/tds/protobuf/ByteString$Output;
    :cond_c
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 962
    monitor-exit p0

    return-void

    .line 957
    .end local p1    # "b":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    monitor-enter p0

    .line 966
    :try_start_1
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_12

    .line 968
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 969
    iget v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_24

    .line 972
    .end local p0    # "this":Lcom/tds/protobuf/ByteString$Output;
    :cond_12
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 973
    .local v1, "copySize":I
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 974
    add-int/2addr p2, v1

    .line 975
    sub-int/2addr p3, v1

    .line 978
    invoke-direct {p0, p3}, Lcom/tds/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 979
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    iput p3, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 982
    .end local v1    # "copySize":I
    :goto_24
    monitor-exit p0

    return-void

    .line 965
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    monitor-enter p0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 1019
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/protobuf/ByteString;

    .line 1020
    .local v0, "cachedFlushBuffers":[Lcom/tds/protobuf/ByteString;
    iget-object v1, p0, Lcom/tds/protobuf/ByteString$Output;->buffer:[B

    .line 1021
    .local v1, "cachedBuffer":[B
    iget v2, p0, Lcom/tds/protobuf/ByteString$Output;->bufferPos:I

    .line 1022
    .local v2, "cachedBufferPos":I
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_28

    .line 1023
    array-length v3, v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_20

    aget-object v5, v0, v4

    .line 1024
    .local v5, "byteString":Lcom/tds/protobuf/ByteString;
    invoke-virtual {v5, p1}, Lcom/tds/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 1023
    .end local v5    # "byteString":Lcom/tds/protobuf/ByteString;
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1027
    :cond_20
    invoke-direct {p0, v1, v2}, Lcom/tds/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1028
    return-void

    .line 1022
    .end local v0    # "cachedFlushBuffers":[Lcom/tds/protobuf/ByteString;
    .end local v1    # "cachedBuffer":[B
    .end local v2    # "cachedBufferPos":I
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
