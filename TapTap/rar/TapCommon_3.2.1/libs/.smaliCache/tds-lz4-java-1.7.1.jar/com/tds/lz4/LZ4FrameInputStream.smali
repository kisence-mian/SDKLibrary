.class public Lcom/tds/lz4/LZ4FrameInputStream;
.super Ljava/io/FilterInputStream;
.source "LZ4FrameInputStream.java"


# static fields
.field static final BLOCK_HASH_MISMATCH:Ljava/lang/String; = "Block checksum mismatch"

.field static final DESCRIPTOR_HASH_MISMATCH:Ljava/lang/String; = "Stream frame descriptor corrupted"

.field static final MAGIC_SKIPPABLE_BASE:I = 0x184d2a50

.field static final NOT_SUPPORTED:Ljava/lang/String; = "Stream unsupported"

.field static final PREMATURE_EOS:Ljava/lang/String; = "Stream ended prematurely"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final checksum:Lcom/tds/xxhash/XXHash32;

.field private compressedBuffer:[B

.field private final decompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

.field private expectedContentSize:J

.field private frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

.field private final headerArray:[B

.field private final headerBuffer:Ljava/nio/ByteBuffer;

.field private maxBlockSize:I

.field private rawBuffer:[B

.field private final readNumberBuff:Ljava/nio/ByteBuffer;

.field private final readSingleFrame:Z

.field private totalContentSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->safeDecompressor()Lcom/tds/lz4/LZ4SafeDecompressor;

    move-result-object v0

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/xxhash/XXHashFactory;->hash32()Lcom/tds/xxhash/XXHash32;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4SafeDecompressor;Lcom/tds/xxhash/XXHash32;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4SafeDecompressor;Lcom/tds/xxhash/XXHash32;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressor"    # Lcom/tds/lz4/LZ4SafeDecompressor;
    .param p3, "checksum"    # Lcom/tds/xxhash/XXHash32;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4SafeDecompressor;Lcom/tds/xxhash/XXHash32;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4SafeDecompressor;Lcom/tds/xxhash/XXHash32;Z)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressor"    # Lcom/tds/lz4/LZ4SafeDecompressor;
    .param p3, "checksum"    # Lcom/tds/xxhash/XXHash32;
    .param p4, "readSingleFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerArray:[B

    .line 50
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->rawBuffer:[B

    .line 55
    const/4 v1, -0x1

    iput v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->maxBlockSize:I

    .line 56
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->expectedContentSize:J

    .line 57
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 59
    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    .line 214
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    .line 117
    iput-object p2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->decompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

    .line 118
    iput-object p3, p0, Lcom/tds/lz4/LZ4FrameInputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    .line 119
    iput-boolean p4, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    .line 120
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "readSingleFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->safeDecompressor()Lcom/tds/lz4/LZ4SafeDecompressor;

    move-result-object v0

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/xxhash/XXHashFactory;->hash32()Lcom/tds/xxhash/XXHash32;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tds/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lcom/tds/lz4/LZ4SafeDecompressor;Lcom/tds/xxhash/XXHash32;Z)V

    .line 89
    return-void
.end method

.method private nextFrameInfo()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :goto_0
    const/4 v0, 0x0

    .line 134
    .local v0, "size":I
    :goto_1
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 135
    .local v1, "mySize":I
    const/4 v2, 0x0

    if-gez v1, :cond_13

    .line 136
    return v2

    .line 138
    :cond_13
    add-int/2addr v0, v1

    .line 139
    .end local v1    # "mySize":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_3a

    .line 140
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 141
    .local v1, "magic":I
    const v2, 0x184d2204

    if-ne v1, v2, :cond_27

    .line 142
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->readHeader()V

    .line 143
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_27
    ushr-int/lit8 v2, v1, 0x4

    const v3, 0x184d2a5

    if-ne v2, v3, :cond_32

    .line 145
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->skippableFrame()V

    .line 149
    .end local v0    # "size":I
    .end local v1    # "magic":I
    goto :goto_0

    .line 147
    .restart local v0    # "size":I
    .restart local v1    # "magic":I
    :cond_32
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream unsupported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v1    # "magic":I
    :cond_3a
    goto :goto_1
.end method

.method private readBlock()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 248
    .local v0, "blockSize":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v3

    .line 249
    .local v1, "compressed":Z
    :goto_10
    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 252
    if-nez v0, :cond_58

    .line 253
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v3, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v2, v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 254
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lcom/tds/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 255
    .local v2, "contentChecksum":I
    iget-object v3, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->currentStreamHash()I

    move-result v3

    if-ne v2, v3, :cond_2f

    goto :goto_37

    .line 256
    :cond_2f
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Content checksum mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    .end local v2    # "contentChecksum":I
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v3, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v2, v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-wide v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->expectedContentSize:J

    iget-wide v4, p0, Lcom/tds/lz4/LZ4FrameInputStream;->totalContentSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4a

    goto :goto_52

    .line 260
    :cond_4a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Size check mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->finish()V

    .line 263
    return-void

    .line 267
    :cond_58
    if-eqz v1, :cond_5d

    .line 268
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameInputStream;->compressedBuffer:[B

    .local v4, "tmpBuffer":[B
    goto :goto_5f

    .line 270
    .end local v4    # "tmpBuffer":[B
    :cond_5d
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameInputStream;->rawBuffer:[B

    .line 272
    .restart local v4    # "tmpBuffer":[B
    :goto_5f
    iget v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->maxBlockSize:I

    if-gt v0, v5, :cond_d5

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, "offset":I
    :goto_64
    if-ge v2, v0, :cond_7a

    .line 278
    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    sub-int v6, v0, v2

    invoke-virtual {v5, v4, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 279
    .local v5, "lastRead":I
    if-ltz v5, :cond_72

    .line 282
    add-int/2addr v2, v5

    .line 283
    .end local v5    # "lastRead":I
    goto :goto_64

    .line 280
    .restart local v5    # "lastRead":I
    :cond_72
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Stream ended prematurely"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    .end local v5    # "lastRead":I
    :cond_7a
    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v6, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v5, v6}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 287
    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v5}, Lcom/tds/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v5

    .line 288
    .local v5, "hashCheck":I
    iget-object v6, p0, Lcom/tds/lz4/LZ4FrameInputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    invoke-virtual {v6, v4, v3, v0, v3}, Lcom/tds/xxhash/XXHash32;->hash([BIII)I

    move-result v6

    if-ne v5, v6, :cond_93

    goto :goto_9b

    .line 289
    :cond_93
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Block checksum mismatch"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    .end local v5    # "hashCheck":I
    :cond_9b
    :goto_9b
    if-eqz v1, :cond_b2

    .line 296
    :try_start_9d
    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->decompressor:Lcom/tds/lz4/LZ4SafeDecompressor;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/tds/lz4/LZ4FrameInputStream;->rawBuffer:[B

    const/4 v10, 0x0

    array-length v11, v9

    move-object v6, v4

    move v8, v0

    invoke-virtual/range {v5 .. v11}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress([BII[BII)I

    move-result v5
    :try_end_aa
    .catch Lcom/tds/lz4/LZ4Exception; {:try_start_9d .. :try_end_aa} :catch_ab

    .line 299
    .local v5, "currentBufferSize":I
    goto :goto_b3

    .line 297
    .end local v5    # "currentBufferSize":I
    :catch_ab
    move-exception v3

    .line 298
    .local v3, "e":Lcom/tds/lz4/LZ4Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 301
    .end local v3    # "e":Lcom/tds/lz4/LZ4Exception;
    :cond_b2
    move v5, v0

    .line 303
    .restart local v5    # "currentBufferSize":I
    :goto_b3
    iget-object v6, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v7, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v6, v7}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 304
    iget-object v6, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    iget-object v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->rawBuffer:[B

    invoke-virtual {v6, v7, v3, v5}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->updateStreamHash([BII)V

    .line 306
    :cond_c4
    iget-wide v6, p0, Lcom/tds/lz4/LZ4FrameInputStream;->totalContentSize:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tds/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 307
    iget-object v3, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 308
    iget-object v3, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 309
    return-void

    .line 273
    .end local v2    # "offset":I
    .end local v5    # "currentBufferSize":I
    :cond_d5
    new-instance v5, Ljava/io/IOException;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v3, p0, Lcom/tds/lz4/LZ4FrameInputStream;->maxBlockSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    const-string v2, "Block size %s exceeded max: %s"

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readHeader()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 173
    .local v0, "flgRead":I
    const-string v1, "Stream ended prematurely"

    if-ltz v0, :cond_a2

    .line 176
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 177
    .local v2, "bdRead":I
    if-ltz v2, :cond_9c

    .line 181
    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    .line 182
    .local v3, "flgByte":B
    invoke-static {v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->fromByte(B)Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    move-result-object v4

    .line 183
    .local v4, "flg":Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    .line 185
    .local v5, "bdByte":B
    invoke-static {v5}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->fromByte(B)Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    move-result-object v6

    .line 186
    .local v6, "bd":Lcom/tds/lz4/LZ4FrameOutputStream$BD;
    iget-object v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    new-instance v7, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-direct {v7, v4, v6}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;-><init>(Lcom/tds/lz4/LZ4FrameOutputStream$FLG;Lcom/tds/lz4/LZ4FrameOutputStream$BD;)V

    iput-object v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    .line 190
    sget-object v7, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v4, v7}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 191
    iget-object v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v7}, Lcom/tds/lz4/LZ4FrameInputStream;->readLong(Ljava/io/InputStream;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->expectedContentSize:J

    .line 192
    iget-object v9, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 194
    :cond_4b
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 197
    iget-object v7, p0, Lcom/tds/lz4/LZ4FrameInputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    iget-object v8, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerArray:[B

    iget-object v9, p0, Lcom/tds/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9, v10}, Lcom/tds/xxhash/XXHash32;->hash([BIII)I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 198
    .local v7, "hash":B
    iget-object v8, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 199
    .local v8, "expectedHash":I
    if-ltz v8, :cond_96

    .line 203
    and-int/lit16 v1, v8, 0xff

    int-to-byte v1, v1

    if-ne v7, v1, :cond_8e

    .line 207
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->getBD()Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->getBlockMaximumSize()I

    move-result v1

    iput v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->maxBlockSize:I

    .line 208
    new-array v9, v1, [B

    iput-object v9, p0, Lcom/tds/lz4/LZ4FrameInputStream;->compressedBuffer:[B

    .line 209
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->rawBuffer:[B

    .line 210
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 212
    return-void

    .line 204
    :cond_8e
    new-instance v1, Ljava/io/IOException;

    const-string v9, "Stream frame descriptor corrupted"

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_96
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 178
    .end local v3    # "flgByte":B
    .end local v4    # "flg":Lcom/tds/lz4/LZ4FrameOutputStream$FLG;
    .end local v5    # "bdByte":B
    .end local v6    # "bd":Lcom/tds/lz4/LZ4FrameOutputStream$BD;
    .end local v7    # "hash":B
    .end local v8    # "expectedHash":I
    :cond_9c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v2    # "bdRead":I
    :cond_a2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readInt(Ljava/io/InputStream;)I
    .registers 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "offset":I
    :cond_1
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 232
    .local v1, "mySize":I
    if-ltz v1, :cond_1b

    .line 235
    add-int/2addr v0, v1

    .line 236
    .end local v1    # "mySize":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 233
    .restart local v1    # "mySize":I
    :cond_1b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream ended prematurely"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readLong(Ljava/io/InputStream;)J
    .registers 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "offset":I
    :cond_1
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x8

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 220
    .local v1, "mySize":I
    if-ltz v1, :cond_1c

    .line 223
    add-int/2addr v0, v1

    .line 224
    .end local v1    # "mySize":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 221
    .restart local v1    # "mySize":I
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream ended prematurely"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private skippableFrame()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 154
    .local v0, "skipSize":I
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 155
    .local v1, "skipBuffer":[B
    :goto_a
    if-lez v0, :cond_24

    .line 156
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 157
    .local v2, "mySize":I
    if-ltz v2, :cond_1c

    .line 160
    sub-int/2addr v0, v2

    .line 161
    .end local v2    # "mySize":I
    goto :goto_a

    .line 158
    .restart local v2    # "mySize":I
    :cond_1c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Stream ended prematurely"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v2    # "mySize":I
    :cond_24
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 377
    return-void
.end method

.method public getExpectedContentSize()J
    .registers 3

    .line 404
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    if-eqz v0, :cond_7

    .line 407
    iget-wide v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->expectedContentSize:J

    return-wide v0

    .line 405
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not permitted when multiple frames can be read"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExpectedContentSizeDefined()Z
    .registers 7

    .line 416
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 417
    iget-wide v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->expectedContentSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 419
    :cond_f
    return v1
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 381
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    .line 381
    .end local p0    # "this":Lcom/tds/lz4/LZ4FrameInputStream;
    .end local p1    # "readlimit":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_21

    .line 314
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 315
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_16

    .line 316
    return v1

    .line 318
    :cond_16
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 319
    return v1

    .line 322
    :cond_1d
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_0

    .line 324
    :cond_21
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    if-ltz p2, :cond_3a

    if-ltz p3, :cond_3a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3a

    .line 332
    :goto_9
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2a

    .line 333
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 334
    iget-boolean v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1f

    .line 335
    return v1

    .line 337
    :cond_1f
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v0

    if-nez v0, :cond_26

    .line 338
    return v1

    .line 341
    :cond_26
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_9

    .line 343
    :cond_2a
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 344
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 345
    return p3

    .line 330
    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 386
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    .line 386
    .end local p0    # "this":Lcom/tds/lz4/LZ4FrameInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 351
    return-wide v0

    .line 353
    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_27

    .line 354
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 355
    iget-boolean v2, p0, Lcom/tds/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    if-eqz v2, :cond_1c

    .line 356
    return-wide v0

    .line 358
    :cond_1c
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v2

    if-nez v2, :cond_23

    .line 359
    return-wide v0

    .line 362
    :cond_23
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_7

    .line 364
    :cond_27
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 365
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    return-wide p1
.end method
