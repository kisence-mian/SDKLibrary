.class public abstract Lcom/tds/lz4/LZ4SafeDecompressor;
.super Ljava/lang/Object;
.source "LZ4SafeDecompressor.java"

# interfaces
.implements Lcom/tds/lz4/LZ4UnknownSizeDecompressor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decompress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method public final decompress([BII[BI)I
    .registers 14
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I

    .line 74
    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BII[BII)I

    move-result v0

    return v0
.end method

.method public abstract decompress([BII[BII)I
.end method

.method public final decompress([B[B)I
    .registers 9
    .param p1, "src"    # [B
    .param p2, "dest"    # [B

    .line 87
    array-length v3, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BII[BI)I

    move-result v0

    return v0
.end method

.method public final decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/nio/ByteBuffer;

    .line 145
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

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 146
    .local v0, "decompressed":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    return-void
.end method

.method public final decompress([BI)[B
    .registers 5
    .param p1, "src"    # [B
    .param p2, "maxDestLen"    # I

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public final decompress([BIII)[B
    .registers 13
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "maxDestLen"    # I

    .line 115
    new-array v7, p4, [B

    .line 116
    .local v7, "decompressed":[B
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v7

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BII[BII)I

    move-result v0

    .line 117
    .local v0, "decompressedLength":I
    array-length v1, v7

    if-eq v0, v1, :cond_14

    .line 118
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 120
    :cond_14
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
