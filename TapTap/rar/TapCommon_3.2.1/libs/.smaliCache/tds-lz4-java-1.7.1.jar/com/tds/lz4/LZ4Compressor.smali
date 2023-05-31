.class public abstract Lcom/tds/lz4/LZ4Compressor;
.super Ljava/lang/Object;
.source "LZ4Compressor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method public final compress([BII[BI)I
    .registers 14
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I

    .line 95
    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BII)I

    move-result v0

    return v0
.end method

.method public abstract compress([BII[BII)I
.end method

.method public final compress([B[B)I
    .registers 9
    .param p1, "src"    # [B
    .param p2, "dest"    # [B

    .line 108
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BI)I

    move-result v0

    return v0
.end method

.method public final compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/nio/ByteBuffer;

    .line 158
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

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 159
    .local v0, "cpLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    return-void
.end method

.method public final compress([B)[B
    .registers 4
    .param p1, "src"    # [B

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/lz4/LZ4Compressor;->compress([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final compress([BII)[B
    .registers 12
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I

    .line 132
    invoke-virtual {p0, p3}, Lcom/tds/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v0

    .line 133
    .local v0, "maxCompressedLength":I
    new-array v7, v0, [B

    .line 134
    .local v7, "compressed":[B
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BI)I

    move-result v1

    .line 135
    .local v1, "compressedLength":I
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public final maxCompressedLength(I)I
    .registers 3
    .param p1, "length"    # I

    .line 35
    invoke-static {p1}, Lcom/tds/lz4/LZ4Utils;->maxCompressedLength(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
