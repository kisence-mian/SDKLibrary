.class public Lcom/tds/lz4/LZ4BlockInputStream;
.super Ljava/io/FilterInputStream;
.source "LZ4BlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buffer:[B

.field private final checksum:Ljava/util/zip/Checksum;

.field private compressedBuffer:[B

.field private final decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

.field private finished:Z

.field private o:I

.field private originalLen:I

.field private final stopOnEmptyBlock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 128
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tds/lz4/LZ4BlockInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressor"    # Lcom/tds/lz4/LZ4FastDecompressor;

    .line 102
    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0

    const v1, -0x68b84d74

    invoke-virtual {v0, v1}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->asChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tds/lz4/LZ4BlockInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;Ljava/util/zip/Checksum;Z)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;Ljava/util/zip/Checksum;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressor"    # Lcom/tds/lz4/LZ4FastDecompressor;
    .param p3, "checksum"    # Ljava/util/zip/Checksum;

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/lz4/LZ4BlockInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;Ljava/util/zip/Checksum;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;Ljava/util/zip/Checksum;Z)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressor"    # Lcom/tds/lz4/LZ4FastDecompressor;
    .param p3, "checksum"    # Ljava/util/zip/Checksum;
    .param p4, "stopOnEmptyBlock"    # Z

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    iput-object p2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    .line 67
    iput-object p3, p0, Lcom/tds/lz4/LZ4BlockInputStream;->checksum:Ljava/util/zip/Checksum;

    .line 68
    iput-boolean p4, p0, Lcom/tds/lz4/LZ4BlockInputStream;->stopOnEmptyBlock:Z

    .line 69
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    .line 70
    sget v1, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    .line 71
    iput v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    iput v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    .line 72
    iput-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "stopOnEmptyBlock"    # Z

    .line 116
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;

    move-result-object v0

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    const v2, -0x68b84d74

    invoke-virtual {v1, v2}, Lcom/tds/xxhash/XXHashFactory;->newStreamingHash32(I)Lcom/tds/xxhash/StreamingXXHash32;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/xxhash/StreamingXXHash32;->asChecksum()Ljava/util/zip/Checksum;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tds/lz4/LZ4BlockInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4FastDecompressor;Ljava/util/zip/Checksum;Z)V

    .line 117
    return-void
.end method

.method private readFully([BI)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/tds/lz4/LZ4BlockInputStream;->tryReadFully([BI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 283
    return-void

    .line 281
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private refill()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    sget v1, Lcom/tds/lz4/LZ4BlockOutputStream;->HEADER_LENGTH:I

    invoke-direct {p0, v0, v1}, Lcom/tds/lz4/LZ4BlockInputStream;->tryReadFully([BI)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 191
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->stopOnEmptyBlock:Z

    if-nez v0, :cond_12

    .line 192
    iput-boolean v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    .line 196
    return-void

    .line 194
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    sget v2, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    const-string v3, "Stream is corrupted"

    if-ge v0, v2, :cond_34

    .line 199
    iget-object v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    aget-byte v2, v2, v0

    sget-object v4, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC:[B

    aget-byte v4, v4, v0

    if-ne v2, v4, :cond_2e

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 200
    :cond_2e
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    sget v2, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 204
    .local v0, "token":I
    and-int/lit16 v2, v0, 0xf0

    .line 205
    .local v2, "compressionMethod":I
    and-int/lit8 v4, v0, 0xf

    add-int/lit8 v4, v4, 0xa

    .line 206
    .local v4, "compressionLevel":I
    const/16 v5, 0x10

    if-eq v2, v5, :cond_51

    const/16 v6, 0x20

    if-ne v2, v6, :cond_4b

    goto :goto_51

    .line 207
    :cond_4b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_51
    :goto_51
    iget-object v6, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    sget v7, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v6

    .line 210
    .local v6, "compressedLen":I
    iget-object v7, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    sget v8, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    add-int/lit8 v8, v8, 0x5

    invoke-static {v7, v8}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v7

    iput v7, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    .line 211
    iget-object v7, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    sget v8, Lcom/tds/lz4/LZ4BlockOutputStream;->MAGIC_LENGTH:I

    add-int/lit8 v8, v8, 0x9

    invoke-static {v7, v8}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v7

    .line 212
    .local v7, "check":I
    nop

    .line 213
    iget v8, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    shl-int v9, v1, v4

    if-gt v8, v9, :cond_117

    if-ltz v8, :cond_117

    if-ltz v6, :cond_117

    if-nez v8, :cond_7f

    if-nez v6, :cond_117

    :cond_7f
    if-eqz v8, :cond_83

    if-eqz v6, :cond_117

    :cond_83
    if-ne v2, v5, :cond_87

    if-ne v8, v6, :cond_117

    .line 221
    :cond_87
    if-nez v8, :cond_9e

    if-nez v6, :cond_9e

    .line 222
    if-nez v7, :cond_98

    .line 225
    iget-boolean v3, p0, Lcom/tds/lz4/LZ4BlockInputStream;->stopOnEmptyBlock:Z

    if-nez v3, :cond_95

    .line 226
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockInputStream;->refill()V

    goto :goto_97

    .line 228
    :cond_95
    iput-boolean v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    .line 230
    :goto_97
    return-void

    .line 223
    :cond_98
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_9e
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    array-length v5, v1

    if-ge v5, v8, :cond_b0

    .line 233
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    .line 235
    :cond_b0
    sparse-switch v2, :sswitch_data_11e

    .line 254
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 240
    :sswitch_b9
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    array-length v5, v1

    if-ge v5, v6, :cond_cb

    .line 241
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    .line 243
    :cond_cb
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    invoke-direct {p0, v1, v6}, Lcom/tds/lz4/LZ4BlockInputStream;->readFully([BI)V

    .line 245
    :try_start_d0
    iget-object v8, p0, Lcom/tds/lz4/LZ4BlockInputStream;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    iget-object v9, p0, Lcom/tds/lz4/LZ4BlockInputStream;->compressedBuffer:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    const/4 v12, 0x0

    iget v13, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    invoke-virtual/range {v8 .. v13}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    move-result v1

    .line 246
    .local v1, "compressedLen2":I
    if-ne v6, v1, :cond_e1

    .line 251
    .end local v1    # "compressedLen2":I
    goto :goto_f6

    .line 247
    .restart local v1    # "compressedLen2":I
    :cond_e1
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":I
    .end local v2    # "compressionMethod":I
    .end local v4    # "compressionLevel":I
    .end local v6    # "compressedLen":I
    .end local v7    # "check":I
    .end local p0    # "this":Lcom/tds/lz4/LZ4BlockInputStream;
    throw v5
    :try_end_e7
    .catch Lcom/tds/lz4/LZ4Exception; {:try_start_d0 .. :try_end_e7} :catch_e7

    .line 249
    .end local v1    # "compressedLen2":I
    .restart local v0    # "token":I
    .restart local v2    # "compressionMethod":I
    .restart local v4    # "compressionLevel":I
    .restart local v6    # "compressedLen":I
    .restart local v7    # "check":I
    .restart local p0    # "this":Lcom/tds/lz4/LZ4BlockInputStream;
    :catch_e7
    move-exception v1

    .line 250
    .local v1, "e":Lcom/tds/lz4/LZ4Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 237
    .end local v1    # "e":Lcom/tds/lz4/LZ4Exception;
    :sswitch_ee
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    iget v5, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    invoke-direct {p0, v1, v5}, Lcom/tds/lz4/LZ4BlockInputStream;->readFully([BI)V

    .line 238
    nop

    .line 256
    :goto_f6
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->reset()V

    .line 257
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->checksum:Ljava/util/zip/Checksum;

    iget-object v5, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    iget v8, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    const/4 v9, 0x0

    invoke-interface {v1, v5, v9, v8}, Ljava/util/zip/Checksum;->update([BII)V

    .line 258
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v10

    long-to-int v1, v10

    if-ne v1, v7, :cond_111

    .line 261
    iput v9, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    .line 262
    return-void

    .line 259
    :cond_111
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_117
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_11e
    .sparse-switch
        0x10 -> :sswitch_ee
        0x20 -> :sswitch_b9
    .end sparse-switch
.end method

.method private tryReadFully([BI)Z
    .registers 6
    .param p1, "b"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "read":I
    :goto_1
    if-ge v0, p2, :cond_11

    .line 269
    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->in:Ljava/io/InputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 270
    .local v1, "r":I
    if-gez v1, :cond_f

    .line 271
    const/4 v2, 0x0

    return v2

    .line 273
    :cond_f
    add-int/2addr v0, v1

    .line 274
    .end local v1    # "r":I
    goto :goto_1

    .line 275
    :cond_11
    nop

    .line 276
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    .line 294
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 139
    return v1

    .line 141
    :cond_6
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    iget v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    if-ne v0, v2, :cond_f

    .line 142
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockInputStream;->refill()V

    .line 144
    :cond_f
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    if-eqz v0, :cond_14

    .line 145
    return v1

    .line 147
    :cond_14
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/lz4/LZ4BlockInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 153
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 154
    return v1

    .line 156
    :cond_9
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    iget v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    if-ne v0, v2, :cond_12

    .line 157
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockInputStream;->refill()V

    .line 159
    :cond_12
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    if-eqz v0, :cond_17

    .line 160
    return v1

    .line 162
    :cond_17
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 163
    iget-object v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->buffer:[B

    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    .line 165
    return p3
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2b

    iget-boolean v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    if-eqz v2, :cond_b

    goto :goto_2b

    .line 178
    :cond_b
    iget v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    iget v3, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    if-ne v2, v3, :cond_14

    .line 179
    invoke-direct {p0}, Lcom/tds/lz4/LZ4BlockInputStream;->refill()V

    .line 181
    :cond_14
    iget-boolean v2, p0, Lcom/tds/lz4/LZ4BlockInputStream;->finished:Z

    if-eqz v2, :cond_19

    .line 182
    return-wide v0

    .line 184
    :cond_19
    iget v0, p0, Lcom/tds/lz4/LZ4BlockInputStream;->originalLen:I

    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 185
    .local v0, "skipped":I
    iget v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->o:I

    .line 186
    int-to-long v1, v0

    return-wide v1

    .line 176
    .end local v0    # "skipped":I
    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decompressor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->decompressor:Lcom/tds/lz4/LZ4FastDecompressor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checksum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/lz4/LZ4BlockInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
