.class public Lcom/tds/lz4/LZ4CompressorWithLength;
.super Ljava/lang/Object;
.source "LZ4CompressorWithLength.java"


# instance fields
.field private final compressor:Lcom/tds/lz4/LZ4Compressor;


# direct methods
.method public constructor <init>(Lcom/tds/lz4/LZ4Compressor;)V
    .registers 2
    .param p1, "compressor"    # Lcom/tds/lz4/LZ4Compressor;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tds/lz4/LZ4CompressorWithLength;->compressor:Lcom/tds/lz4/LZ4Compressor;

    .line 41
    return-void
.end method

.method private putOriginalLength(Ljava/nio/ByteBuffer;II)V
    .registers 6
    .param p1, "dest"    # Ljava/nio/ByteBuffer;
    .param p2, "destOff"    # I
    .param p3, "originalLength"    # I

    .line 51
    int-to-byte v0, p3

    invoke-virtual {p1, p2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 52
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 53
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 54
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 55
    return-void
.end method

.method private putOriginalLength([BII)V
    .registers 6
    .param p1, "dest"    # [B
    .param p2, "destOff"    # I
    .param p3, "originalLength"    # I

    .line 44
    int-to-byte v0, p3

    aput-byte v0, p1, p2

    .line 45
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 46
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 47
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 48
    return-void
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 14
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 195
    iget-object v0, p0, Lcom/tds/lz4/LZ4CompressorWithLength;->compressor:Lcom/tds/lz4/LZ4Compressor;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 196
    .local v0, "compressedLength":I
    invoke-direct {p0, p4, p5, p3}, Lcom/tds/lz4/LZ4CompressorWithLength;->putOriginalLength(Ljava/nio/ByteBuffer;II)V

    .line 197
    add-int/lit8 v1, v0, 0x4

    return v1
.end method

.method public compress([BII[BI)I
    .registers 14
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I

    .line 131
    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4CompressorWithLength;->compress([BII[BII)I

    move-result v0

    return v0
.end method

.method public compress([BII[BII)I
    .registers 14
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 154
    iget-object v0, p0, Lcom/tds/lz4/LZ4CompressorWithLength;->compressor:Lcom/tds/lz4/LZ4Compressor;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BII)I

    move-result v0

    .line 155
    .local v0, "compressedLength":I
    invoke-direct {p0, p4, p5, p3}, Lcom/tds/lz4/LZ4CompressorWithLength;->putOriginalLength([BII)V

    .line 156
    add-int/lit8 v1, v0, 0x4

    return v1
.end method

.method public compress([B[B)I
    .registers 9
    .param p1, "src"    # [B
    .param p2, "dest"    # [B

    .line 115
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4CompressorWithLength;->compress([BII[BI)I

    move-result v0

    return v0
.end method

.method public compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4CompressorWithLength;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 169
    .local v0, "compressedLength":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    return-void
.end method

.method public compress([B)[B
    .registers 4
    .param p1, "src"    # [B

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/lz4/LZ4CompressorWithLength;->compress([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public compress([BII)[B
    .registers 12
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I

    .line 99
    invoke-virtual {p0, p3}, Lcom/tds/lz4/LZ4CompressorWithLength;->maxCompressedLength(I)I

    move-result v0

    .line 100
    .local v0, "maxCompressedLength":I
    new-array v7, v0, [B

    .line 101
    .local v7, "compressed":[B
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/tds/lz4/LZ4CompressorWithLength;->compress([BII[BI)I

    move-result v1

    .line 102
    .local v1, "compressedLength":I
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public maxCompressedLength(I)I
    .registers 3
    .param p1, "length"    # I

    .line 64
    iget-object v0, p0, Lcom/tds/lz4/LZ4CompressorWithLength;->compressor:Lcom/tds/lz4/LZ4Compressor;

    invoke-virtual {v0, p1}, Lcom/tds/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
