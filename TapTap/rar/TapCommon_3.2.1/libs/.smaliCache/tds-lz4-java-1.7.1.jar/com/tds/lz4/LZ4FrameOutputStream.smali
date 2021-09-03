.class public Lcom/tds/lz4/LZ4FrameOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;,
        Lcom/tds/lz4/LZ4FrameOutputStream$BD;,
        Lcom/tds/lz4/LZ4FrameOutputStream$FLG;,
        Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    }
.end annotation


# static fields
.field static final CLOSED_STREAM:Ljava/lang/String; = "The stream is already closed"

.field static final DEFAULT_FEATURES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

.field static final INTEGER_BYTES:I = 0x4

.field static final LONG_BYTES:I = 0x8

.field static final LZ4_FRAME_INCOMPRESSIBLE_MASK:I = -0x80000000

.field static final LZ4_MAX_HEADER_LENGTH:I = 0xf

.field static final MAGIC:I = 0x184d2204


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final checksum:Lcom/tds/xxhash/XXHash32;

.field private final compressedBuffer:[B

.field private final compressor:Lcom/tds/lz4/LZ4Compressor;

.field private frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

.field private final intLEBuffer:Ljava/nio/ByteBuffer;

.field private final knownSize:J

.field private final maxBlockSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_INDEPENDENCE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/tds/lz4/LZ4FrameOutputStream;->DEFAULT_FEATURES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_4MB:Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-direct {p0, p1, v0}, Lcom/tds/lz4/LZ4FrameOutputStream;-><init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/tds/lz4/LZ4FrameOutputStream;->DEFAULT_FEATURES:[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/lz4/LZ4FrameOutputStream;-><init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V

    .line 157
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;JLcom/tds/lz4/LZ4Compressor;Lcom/tds/xxhash/XXHash32;[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V
    .registers 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .param p3, "knownSize"    # J
    .param p5, "compressor"    # Lcom/tds/lz4/LZ4Compressor;
    .param p6, "checksum"    # Lcom/tds/xxhash/XXHash32;
    .param p7, "bits"    # [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    .line 133
    iput-object p5, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressor:Lcom/tds/lz4/LZ4Compressor;

    .line 134
    iput-object p6, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    .line 135
    new-instance v1, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    new-instance v2, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p7}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;-><init>(I[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V

    new-instance v3, Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    invoke-direct {v3, p2, v0}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;-><init>(Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;Lcom/tds/lz4/LZ4FrameOutputStream$1;)V

    invoke-direct {v1, v2, v3}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;-><init>(Lcom/tds/lz4/LZ4FrameOutputStream$FLG;Lcom/tds/lz4/LZ4FrameOutputStream$BD;)V

    iput-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    .line 136
    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->getBD()Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->getBlockMaximumSize()I

    move-result v0

    iput v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->maxBlockSize:I

    .line 137
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p5, v0}, Lcom/tds/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressedBuffer:[B

    .line 139
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->getFLG()Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    move-result-object v0

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_5c

    goto :goto_64

    .line 140
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Known size must be greater than zero in order to use the known size feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_64
    :goto_64
    iput-wide p3, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->knownSize:J

    .line 143
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->writeHeader()V

    .line 144
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;J[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V
    .registers 15
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .param p3, "knownSize"    # J
    .param p5, "bits"    # [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->fastestInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Factory;->fastCompressor()Lcom/tds/lz4/LZ4Compressor;

    move-result-object v6

    invoke-static {}, Lcom/tds/xxhash/XXHashFactory;->fastestInstance()Lcom/tds/xxhash/XXHashFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/xxhash/XXHashFactory;->hash32()Lcom/tds/xxhash/XXHash32;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/tds/lz4/LZ4FrameOutputStream;-><init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;JLcom/tds/lz4/LZ4Compressor;Lcom/tds/xxhash/XXHash32;[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V

    .line 117
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V
    .registers 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .param p3, "bits"    # [Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tds/lz4/LZ4FrameOutputStream;-><init>(Ljava/io/OutputStream;Lcom/tds/lz4/LZ4FrameOutputStream$BLOCKSIZE;J[Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)V

    .line 103
    return-void
.end method

.method private ensureNotFinished()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 302
    return-void

    .line 300
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stream is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBlock()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_9

    .line 199
    return-void

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressedBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 204
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressor:Lcom/tds/lz4/LZ4Compressor;

    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v6, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressedBuffer:[B

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/tds/lz4/LZ4Compressor;->compress([BII[BI)I

    move-result v0

    .line 209
    .local v0, "compressedLength":I
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lt v0, v2, :cond_40

    .line 210
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 211
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 212
    .local v2, "bufferToWrite":[B
    const/high16 v3, -0x80000000

    .local v3, "compressMethod":I
    goto :goto_43

    .line 214
    .end local v2    # "bufferToWrite":[B
    .end local v3    # "compressMethod":I
    :cond_40
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->compressedBuffer:[B

    .line 215
    .restart local v2    # "bufferToWrite":[B
    const/4 v3, 0x0

    .line 219
    .restart local v3    # "compressMethod":I
    :goto_43
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    or-int v5, v0, v3

    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 220
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 221
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 224
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v5, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v4, v5}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 225
    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    invoke-virtual {v5, v2, v1, v0, v1}, Lcom/tds/xxhash/XXHash32;->hash([BIII)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 226
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 228
    :cond_7a
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 229
    return-void
.end method

.method private writeEndMark()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 239
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 240
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v2, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 241
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->currentStreamHash()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->intLEBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 244
    :cond_31
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->finish()V

    .line 245
    return-void
.end method

.method private writeHeader()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "headerBuffer":Ljava/nio/ByteBuffer;
    const v1, 0x184d2204

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->getFLG()Lcom/tds/lz4/LZ4FrameOutputStream$FLG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FLG;->toByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->getBD()Lcom/tds/lz4/LZ4FrameOutputStream$BD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4FrameOutputStream$BD;->toByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v2, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v1, v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 182
    iget-wide v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->knownSize:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 185
    :cond_3b
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->checksum:Lcom/tds/xxhash/XXHash32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/tds/xxhash/XXHash32;->hash([BIII)I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 186
    .local v1, "hash":I
    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v2, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 189
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

    .line 306
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 307
    invoke-virtual {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->flush()V

    .line 308
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->writeEndMark()V

    .line 310
    :cond_e
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 311
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 290
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->writeBlock()V

    .line 292
    :cond_b
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 293
    return-void
.end method

.method public write(I)V
    .registers 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->ensureNotFinished()V

    .line 250
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->maxBlockSize:I

    if-ne v0, v1, :cond_10

    .line 251
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->writeBlock()V

    .line 253
    :cond_10
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 256
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    const/4 v1, 0x1

    new-array v2, v1, [B

    int-to-byte v3, p1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->updateStreamHash([BII)V

    .line 258
    :cond_2c
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    if-ltz p2, :cond_49

    if-ltz p3, :cond_49

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_49

    .line 265
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->ensureNotFinished()V

    .line 268
    :goto_c
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_34

    .line 269
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 271
    .local v0, "sizeWritten":I
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 272
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v2, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v1, v2}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 273
    iget-object v1, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v1, p1, p2, v0}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->updateStreamHash([BII)V

    .line 275
    :cond_2e
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FrameOutputStream;->writeBlock()V

    .line 277
    add-int/2addr p2, v0

    .line 278
    sub-int/2addr p3, v0

    .line 279
    .end local v0    # "sizeWritten":I
    goto :goto_c

    .line 280
    :cond_34
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 282
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v1, Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lcom/tds/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 283
    iget-object v0, p0, Lcom/tds/lz4/LZ4FrameOutputStream;->frameInfo:Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/lz4/LZ4FrameOutputStream$FrameInfo;->updateStreamHash([BII)V

    .line 285
    :cond_48
    return-void

    .line 263
    :cond_49
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
