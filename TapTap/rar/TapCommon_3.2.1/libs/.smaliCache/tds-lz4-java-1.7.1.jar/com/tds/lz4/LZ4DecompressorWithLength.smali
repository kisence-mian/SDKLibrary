.class public Lcom/tds/lz4/LZ4DecompressorWithLength;
.super Ljava/lang/Object;
.source "LZ4DecompressorWithLength.java"


# instance fields
.field private final decompressor:Lcom/tds/lz4/LZ4FastDecompressor;


# direct methods
.method public constructor <init>(Lcom/tds/lz4/LZ4FastDecompressor;)V
    .registers 2
    .param p1, "decompressor"    # Lcom/tds/lz4/LZ4FastDecompressor;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    .line 81
    return-void
.end method

.method public static getDecompressedLength(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public static getDecompressedLength(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOff"    # I

    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getDecompressedLength([B)I
    .registers 2
    .param p0, "src"    # [B

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result v0

    return v0
.end method

.method public static getDecompressedLength([BI)I
    .registers 4
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 50
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
    .registers 12
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "destOff"    # I

    .line 161
    invoke-static {p1, p2}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 162
    .local v6, "destLen":I
    iget-object v0, p0, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public decompress([BI[BI)I
    .registers 12
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "dest"    # [B
    .param p4, "destOff"    # I

    .line 106
    invoke-static {p1, p2}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result v6

    .line 107
    .local v6, "destLen":I
    iget-object v0, p0, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public decompress([B[B)I
    .registers 4
    .param p1, "src"    # [B
    .param p2, "dest"    # [B

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompress([BI[BI)I

    move-result v0

    return v0
.end method

.method public decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 145
    .local v0, "destLen":I
    iget-object v1, p0, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move-object v2, p1

    move-object v4, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v1

    .line 146
    .local v1, "read":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    return-void
.end method

.method public decompress([B)[B
    .registers 3
    .param p1, "src"    # [B

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompress([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public decompress([BI)[B
    .registers 6
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I

    .line 133
    invoke-static {p1, p2}, Lcom/tds/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result v0

    .line 134
    .local v0, "destLen":I
    iget-object v1, p0, Lcom/tds/lz4/LZ4DecompressorWithLength;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    add-int/lit8 v2, p2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BII)[B

    move-result-object v1

    return-object v1
.end method
