.class public abstract Lcom/tds/lz4/LZ4FastDecompressor;
.super Ljava/lang/Object;
.source "LZ4FastDecompressor.java"

# interfaces
.implements Lcom/tds/lz4/LZ4Decompressor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
.end method

.method public abstract decompress([BI[BII)I
.end method

.method public final decompress([B[B)I
    .registers 4
    .param p1, "src"    # [B
    .param p2, "dest"    # [B

    .line 84
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([B[BI)I

    move-result v0

    return v0
.end method

.method public final decompress([B[BI)I
    .registers 10
    .param p1, "src"    # [B
    .param p2, "dest"    # [B
    .param p3, "destLen"    # I

    .line 72
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    move-result v0

    return v0
.end method

.method public final decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 133
    .local v0, "read":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    return-void
.end method

.method public final decompress([BI)[B
    .registers 4
    .param p1, "src"    # [B
    .param p2, "destLen"    # I

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final decompress([BII)[B
    .registers 11
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "destLen"    # I

    .line 106
    new-array v6, p3, [B

    .line 107
    .local v6, "decompressed":[B
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    .line 108
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
