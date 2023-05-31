.class final Lcom/tds/protobuf/ByteBufferWriter;
.super Ljava/lang/Object;
.source "ByteBufferWriter.java"


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final BUFFER_REALLOCATION_THRESHOLD:F = 0.5f

.field private static final MAX_CACHED_BUFFER_SIZE:I = 0x4000

.field private static final MIN_CACHED_BUFFER_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/tds/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCachedBuffer()V
    .registers 2

    .line 82
    sget-object v0, Lcom/tds/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method private static getBuffer()[B
    .registers 2

    .line 138
    sget-object v0, Lcom/tds/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 139
    .local v0, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_12
    return-object v1
.end method

.method private static getOrCreateBuffer(I)[B
    .registers 3
    .param p0, "requestedSize"    # I

    .line 116
    const/16 v0, 0x400

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 118
    invoke-static {}, Lcom/tds/protobuf/ByteBufferWriter;->getBuffer()[B

    move-result-object v0

    .line 120
    .local v0, "buffer":[B
    if-eqz v0, :cond_13

    array-length v1, v0

    invoke-static {p0, v1}, Lcom/tds/protobuf/ByteBufferWriter;->needToReallocate(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 121
    :cond_13
    new-array v0, p0, [B

    .line 124
    const/16 v1, 0x4000

    if-gt p0, v1, :cond_1c

    .line 125
    invoke-static {v0}, Lcom/tds/protobuf/ByteBufferWriter;->setBuffer([B)V

    .line 128
    :cond_1c
    return-object v0
.end method

.method private static needToReallocate(II)Z
    .registers 5
    .param p0, "requestedSize"    # I
    .param p1, "bufferLength"    # I

    .line 133
    if-ge p1, p0, :cond_d

    int-to-float v0, p1

    int-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static setBuffer([B)V
    .registers 3
    .param p0, "value"    # [B

    .line 143
    sget-object v0, Lcom/tds/protobuf/ByteBufferWriter;->BUFFER:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method static write(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 92
    .local v0, "initialPos":I
    :try_start_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4d

    .line 96
    :cond_1f
    instance-of v1, p1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2e

    .line 98
    move-object v1, p1

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4d

    .line 102
    :cond_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Lcom/tds/protobuf/ByteBufferWriter;->getOrCreateBuffer(I)[B

    move-result-object v1

    .line 103
    .local v1, "array":[B
    :goto_36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    .local v2, "length":I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_52

    .line 107
    .end local v2    # "length":I
    goto :goto_36

    .line 111
    .end local v1    # "array":[B
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_52
    move-exception v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1
.end method
