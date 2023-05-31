.class final Lcom/tds/lz4/LZ4HCJNICompressor;
.super Lcom/tds/lz4/LZ4Compressor;
.source "LZ4HCJNICompressor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lcom/tds/lz4/LZ4HCJNICompressor;

.field private static SAFE_INSTANCE:Lcom/tds/lz4/LZ4Compressor;


# instance fields
.field private final compressionLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    nop

    .line 30
    new-instance v0, Lcom/tds/lz4/LZ4HCJNICompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4HCJNICompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4HCJNICompressor;->INSTANCE:Lcom/tds/lz4/LZ4HCJNICompressor;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 35
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4HCJNICompressor;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "compressionLevel"    # I

    .line 36
    invoke-direct {p0}, Lcom/tds/lz4/LZ4Compressor;-><init>()V

    .line 37
    iput p1, p0, Lcom/tds/lz4/LZ4HCJNICompressor;->compressionLevel:I

    .line 38
    return-void
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 23
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 53
    move-object/from16 v0, p0

    invoke-static/range {p4 .. p4}, Lcom/tds/util/ByteBufferUtils;->checkNotReadOnly(Ljava/nio/ByteBuffer;)V

    .line 54
    invoke-static/range {p1 .. p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 55
    invoke-static/range {p4 .. p6}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 57
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_17
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_47

    .line 81
    :cond_24
    sget-object v1, Lcom/tds/lz4/LZ4HCJNICompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4Compressor;

    .line 82
    .local v1, "safeInstance":Lcom/tds/lz4/LZ4Compressor;
    if-nez v1, :cond_35

    .line 83
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->safeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v2

    iget v3, v0, Lcom/tds/lz4/LZ4HCJNICompressor;->compressionLevel:I

    invoke-virtual {v2, v3}, Lcom/tds/lz4/LZ4Factory;->highCompressor(I)Lcom/tds/lz4/LZ4Compressor;

    move-result-object v2

    sput-object v2, Lcom/tds/lz4/LZ4HCJNICompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4Compressor;

    move-object v1, v2

    .line 85
    :cond_35
    move-object v2, v1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/tds/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    .line 58
    .end local v1    # "safeInstance":Lcom/tds/lz4/LZ4Compressor;
    :cond_47
    :goto_47
    const/4 v1, 0x0

    .local v1, "srcArr":[B
    const/4 v2, 0x0

    .line 59
    .local v2, "destArr":[B
    const/4 v3, 0x0

    .local v3, "srcBuf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 60
    .local v4, "destBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 62
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v5, p2, v5

    move-object v14, v3

    move-object v3, v1

    move v1, v5

    .end local p2    # "srcOff":I
    .local v5, "srcOff":I
    goto :goto_66

    .line 64
    .end local v5    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_5f
    nop

    .line 65
    move-object/from16 v3, p1

    move-object v14, v3

    move-object v3, v1

    move/from16 v1, p2

    .line 67
    .end local p2    # "srcOff":I
    .local v1, "srcOff":I
    .local v3, "srcArr":[B
    .local v14, "srcBuf":Ljava/nio/ByteBuffer;
    :goto_66
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 68
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 69
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v5, p5, v5

    move-object v15, v4

    move-object v4, v2

    move v2, v5

    .end local p5    # "destOff":I
    .local v5, "destOff":I
    goto :goto_81

    .line 71
    .end local v5    # "destOff":I
    .restart local p5    # "destOff":I
    :cond_7a
    nop

    .line 72
    move-object/from16 v4, p4

    move-object v15, v4

    move-object v4, v2

    move/from16 v2, p5

    .line 75
    .end local p5    # "destOff":I
    .local v2, "destOff":I
    .local v4, "destArr":[B
    .local v15, "destBuf":Ljava/nio/ByteBuffer;
    :goto_81
    iget v13, v0, Lcom/tds/lz4/LZ4HCJNICompressor;->compressionLevel:I

    move-object v5, v3

    move-object v6, v14

    move v7, v1

    move/from16 v8, p3

    move-object v9, v4

    move-object v10, v15

    move v11, v2

    move/from16 v12, p6

    invoke-static/range {v5 .. v13}, Lcom/tds/lz4/LZ4JNI;->LZ4_compressHC([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;III)I

    move-result v5

    .line 76
    .local v5, "result":I
    if-lez v5, :cond_94

    .line 79
    return v5

    .line 77
    :cond_94
    new-instance v6, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v6}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v6
.end method

.method public compress([BII[BII)I
    .registers 16
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 42
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 43
    invoke-static {p4, p5, p6}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 44
    iget v8, p0, Lcom/tds/lz4/LZ4HCJNICompressor;->compressionLevel:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lcom/tds/lz4/LZ4JNI;->LZ4_compressHC([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;III)I

    move-result v0

    .line 45
    .local v0, "result":I
    if-lez v0, :cond_17

    .line 48
    return v0

    .line 46
    :cond_17
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v1
.end method
