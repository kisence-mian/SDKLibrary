.class public Lcom/tds/common/utils/Lz4Util;
.super Ljava/lang/Object;
.source "Lz4Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressedByte([B)[B
    .registers 4
    .param p0, "srcByte"    # [B

    .line 10
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    .line 11
    .local v0, "factory":Lcom/tds/lz4/LZ4Factory;
    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastCompressor()Lcom/tds/lz4/LZ4Compressor;

    move-result-object v1

    .line 12
    .local v1, "compressor":Lcom/tds/lz4/LZ4Compressor;
    invoke-virtual {v1, p0}, Lcom/tds/lz4/LZ4Compressor;->compress([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static decompressorByte([BI)[B
    .registers 5
    .param p0, "compressorByte"    # [B
    .param p1, "srcLength"    # I

    .line 16
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    .line 17
    .local v0, "factory":Lcom/tds/lz4/LZ4Factory;
    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;

    move-result-object v1

    .line 18
    .local v1, "decompressor":Lcom/tds/lz4/LZ4FastDecompressor;
    invoke-virtual {v1, p0, p1}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI)[B

    move-result-object v2

    return-object v2
.end method
