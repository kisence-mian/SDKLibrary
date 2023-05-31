.class public Lcom/tds/lz4/LZ4BlockOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LZ4BlockOutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final COMPRESSION_LEVEL_BASE:I = 0xa

.field static final COMPRESSION_METHOD_LZ4:I = 0x20

.field static final COMPRESSION_METHOD_RAW:I = 0x10

.field static final DEFAULT_SEED:I = -0x68b84d74

.field static final HEADER_LENGTH:I

.field static final MAGIC:[B

.field static final MAGIC_LENGTH:I

.field static final MAX_BLOCK_SIZE:I = 0x2000000

.field static final MIN_BLOCK_SIZE:I = 0x40


# instance fields
.field private final blockSize:I

.field private final buffer:[B

.field private final checksum:Ljava/util/zip/Checksum;

.field private final compressedBuffer:[B

.field private final compressionLevel:I

.field private final compressor:Lcom/tds/lz4/LZ4Compressor;

.field private finished:Z

.field private o:I

.field private final syncFlush:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    nop

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC:[B

    .line 38
    array-length v0, v0

    sput v0, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    return-void

    :array_18
    .array-data 1
        0x4ct
        0x5at
        0x34t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 149
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lcom/tds/lz4/LZ4BlockOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I

    .line 138
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastCompressor()Lcom/tds/lz4/LZ4Compressor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/lz4/LZ4BlockOutputStream;-><init>(Ljava/io/OutputStream;ILcom/tds/lz4/LZ4Compressor;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILcom/tds/lz4/LZ4Compressor;)V
    .registers 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "compressor"    # Lcom/tds/lz4/LZ4Compressor;

    .line 123
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0

    const v1, -0x68b84d74

    invoke-virtual {v0, v1}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->asChecksum()Ljava/util/zip/Checksum;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/tds/lz4/LZ4BlockOutputStream;-><init>(Ljava/io/OutputStream;ILcom/tds/lz4/LZ4Compressor;Ljava/util/zip/Checksum;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ILcom/tds/lz4/LZ4Compressor;Ljava/util/zip/Checksum;Z)V
    .registers 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .param p3, "compressor"    # Lcom/tds/lz4/LZ4Compressor;
    .param p4, "checksum"    # Ljava/util/zip/Checksum;
    .param p5, "syncFlush"    # Z

    .line 95
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    iput p2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->blockSize:I

    .line 97
    iput-object p3, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressor:Lcom/tds/lz4/LZ4Compressor;

    .line 98
    iput-object p4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->checksum:Ljava/util/zip/Checksum;

    .line 99
    invoke-static {p2}, Lcom/tds/lz4/LZ4BlockOutputStream;->compressionLevel(I)I

    move-result v0

    iput v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressionLevel:I

    .line 100
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    .line 101
    sget v0, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    invoke-virtual {p3, p2}, Lcom/tds/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    .local v0, "compressedBlockSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    .line 103
    iput-boolean p5, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->syncFlush:Z

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    .line 105
    iput-boolean v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->finished:Z

    .line 106
    sget-object v3, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC:[B

    sget v4, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-void
.end method

.method private static compressionLevel(I)I
    .registers 4
    .param p0, "blockSize"    # I

    .line 57
    const/16 v0, 0x40

    if-lt p0, v0, :cond_34

    .line 59
    const/high16 v0, 0x2000000

    if-gt p0, v0, :cond_1b

    .line 62
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 63
    .local v0, "compressionLevel":I
    nop

    .line 64
    nop

    .line 65
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    nop

    .line 67
    return v0

    .line 60
    .end local v0    # "compressionLevel":I
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize must be <= 33554432, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSize must be >= 64, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNotFinished()V
    .registers 3

    .line 153
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->finished:Z

    if-nez v0, :cond_5

    .line 156
    return-void

    .line 154
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stream is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushBufferedData()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    if-nez v0, :cond_5

    .line 203
    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 206
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->checksum:Ljava/util/zip/Checksum;

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    iget v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 207
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 208
    .local v0, "check":I
    iget-object v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressor:Lcom/tds/lz4/LZ4Compressor;

    iget-object v5, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    iget-object v8, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    sget v1, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BI)I

    move-result v2

    .line 210
    .local v2, "compressedLength":I
    iget v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    if-lt v2, v4, :cond_3b

    .line 211
    const/16 v5, 0x10

    .line 212
    .local v5, "compressMethod":I
    iget v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    .line 213
    iget-object v6, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    iget-object v7, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    invoke-static {v6, v3, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3d

    .line 215
    .end local v5    # "compressMethod":I
    :cond_3b
    const/16 v5, 0x20

    .line 218
    .restart local v5    # "compressMethod":I
    :goto_3d
    iget-object v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    sget v6, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    iget v7, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressionLevel:I

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 219
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v4, v7}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 220
    iget v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    iget-object v7, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    add-int/lit8 v8, v6, 0x5

    invoke-static {v4, v7, v8}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 221
    iget-object v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    add-int/lit8 v6, v6, 0x9

    invoke-static {v0, v4, v6}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 222
    nop

    .line 223
    iget-object v4, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    add-int/2addr v1, v2

    invoke-virtual {v4, v6, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 224
    iput v3, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    .line 225
    return-void
.end method

.method private static writeIntLE(I[BI)V
    .registers 5
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "off"    # I

    .line 267
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    int-to-byte v1, p0

    aput-byte v1, p1, p2

    .line 268
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 269
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 270
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 271
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->finished:Z

    if-nez v0, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->finish()V

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    .line 196
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    .line 199
    :cond_13
    return-void
.end method

.method public finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->ensureNotFinished()V

    .line 255
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->flushBufferedData()V

    .line 256
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    sget v1, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    iget v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressionLevel:I

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 257
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 258
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    add-int/lit8 v2, v1, 0x5

    invoke-static {v3, v0, v2}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 259
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    add-int/lit8 v1, v1, 0x9

    invoke-static {v3, v0, v1}, Lcom/tds/lz4/LZ4BlockOutputStream;->writeIntLE(I[BI)V

    .line 260
    nop

    .line 261
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressedBuffer:[B

    sget v2, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->finished:Z

    .line 263
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 264
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    .line 240
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->syncFlush:Z

    if-eqz v0, :cond_b

    .line 241
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->flushBufferedData()V

    .line 243
    :cond_b
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 245
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->blockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->compressor:Lcom/tds/lz4/LZ4Compressor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checksum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->ensureNotFinished()V

    .line 161
    iget v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    iget v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->blockSize:I

    if-ne v0, v1, :cond_c

    .line 162
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->flushBufferedData()V

    .line 164
    :cond_c
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    iget v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 165
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->ensureNotFinished()V

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/lz4/LZ4BlockOutputStream;->write([BII)V

    .line 188
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 170
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->ensureNotFinished()V

    .line 172
    :goto_6
    iget v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->blockSize:I

    if-le v1, v2, :cond_20

    .line 173
    sub-int v1, v2, v0

    .line 174
    .local v1, "l":I
    iget-object v3, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    sub-int/2addr v2, v0

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->blockSize:I

    iput v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    .line 176
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockOutputStream;->flushBufferedData()V

    .line 177
    add-int/2addr p2, v1

    .line 178
    sub-int/2addr p3, v1

    .line 179
    .end local v1    # "l":I
    goto :goto_6

    .line 180
    :cond_20
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/lz4/LZ4BlockOutputStream;->o:I

    .line 182
    return-void
.end method
