.class final Lcom/tds/lz4/LZ4JNIFastDecompressor;
.super Lcom/tds/lz4/LZ4FastDecompressor;
.source "LZ4JNIFastDecompressor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lcom/tds/lz4/LZ4JNIFastDecompressor;

.field private static SAFE_INSTANCE:Lcom/tds/lz4/LZ4FastDecompressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    nop

    .line 30
    new-instance v0, Lcom/tds/lz4/LZ4JNIFastDecompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4JNIFastDecompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4JNIFastDecompressor;->INSTANCE:Lcom/tds/lz4/LZ4JNIFastDecompressor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FastDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
    .registers 19
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "destOff"    # I
    .param p5, "destLen"    # I

    .line 46
    invoke-static/range {p3 .. p3}, Lcom/tds/util/ByteBufferUtils;->checkNotReadOnly(Ljava/nio/ByteBuffer;)V

    .line 47
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;I)V

    .line 48
    invoke-static/range {p3 .. p5}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_15
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_3f

    .line 74
    :cond_22
    sget-object v0, Lcom/tds/lz4/LZ4JNIFastDecompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4FastDecompressor;

    .line 75
    .local v0, "safeInstance":Lcom/tds/lz4/LZ4FastDecompressor;
    if-nez v0, :cond_31

    .line 76
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->safeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4Factory;->fastDecompressor()Lcom/tds/lz4/LZ4FastDecompressor;

    move-result-object v1

    sput-object v1, Lcom/tds/lz4/LZ4JNIFastDecompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4FastDecompressor;

    move-object v0, v1

    .line 78
    :cond_31
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/tds/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v1

    return v1

    .line 51
    .end local v0    # "safeInstance":Lcom/tds/lz4/LZ4FastDecompressor;
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    .local v0, "srcArr":[B
    const/4 v1, 0x0

    .line 52
    .local v1, "destArr":[B
    const/4 v2, 0x0

    .local v2, "srcBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 53
    .local v3, "destBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, p2

    move-object v11, v2

    move-object v2, v0

    move v0, v4

    .end local p2    # "srcOff":I
    .local v4, "srcOff":I
    goto :goto_5b

    .line 57
    .end local v4    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_56
    nop

    .line 58
    move-object v2, p1

    move-object v11, v2

    move-object v2, v0

    move v0, p2

    .line 60
    .end local p2    # "srcOff":I
    .local v0, "srcOff":I
    .local v2, "srcArr":[B
    .local v11, "srcBuf":Ljava/nio/ByteBuffer;
    :goto_5b
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 61
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 62
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v4, p4, v4

    move-object v12, v3

    move-object v3, v1

    move v1, v4

    .end local p4    # "destOff":I
    .local v4, "destOff":I
    goto :goto_76

    .line 64
    .end local v4    # "destOff":I
    .restart local p4    # "destOff":I
    :cond_6f
    nop

    .line 65
    move-object/from16 v3, p3

    move-object v12, v3

    move-object v3, v1

    move/from16 v1, p4

    .line 68
    .end local p4    # "destOff":I
    .local v1, "destOff":I
    .local v3, "destArr":[B
    .local v12, "destBuf":Ljava/nio/ByteBuffer;
    :goto_76
    move-object v4, v2

    move-object v5, v11

    move v6, v0

    move-object v7, v3

    move-object v8, v12

    move v9, v1

    move/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/tds/lz4/LZ4JNI;->LZ4_decompress_fast([BLjava/nio/ByteBuffer;I[BLjava/nio/ByteBuffer;II)I

    move-result v4

    .line 69
    .local v4, "result":I
    if-ltz v4, :cond_85

    .line 72
    return v4

    .line 70
    :cond_85
    new-instance v5, Lcom/tds/lz4/LZ4Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error decoding offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of input buffer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final decompress([BI[BII)I
    .registers 13
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "dest"    # [B
    .param p4, "destOff"    # I
    .param p5, "destLen"    # I

    .line 35
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->checkRange([BI)V

    .line 36
    invoke-static {p3, p4, p5}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 37
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/tds/lz4/LZ4JNI;->LZ4_decompress_fast([BLjava/nio/ByteBuffer;I[BLjava/nio/ByteBuffer;II)I

    move-result v0

    .line 38
    .local v0, "result":I
    if-ltz v0, :cond_14

    .line 41
    return v0

    .line 39
    :cond_14
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of input buffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
