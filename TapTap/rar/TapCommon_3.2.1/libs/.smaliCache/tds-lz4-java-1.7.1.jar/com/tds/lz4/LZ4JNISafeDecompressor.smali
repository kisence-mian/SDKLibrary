.class final Lcom/tds/lz4/LZ4JNISafeDecompressor;
.super Lcom/tds/lz4/LZ4SafeDecompressor;
.source "LZ4JNISafeDecompressor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lcom/tds/lz4/LZ4JNISafeDecompressor;

.field private static SAFE_INSTANCE:Lcom/tds/lz4/LZ4SafeDecompressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    nop

    .line 29
    new-instance v0, Lcom/tds/lz4/LZ4JNISafeDecompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4JNISafeDecompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4JNISafeDecompressor;->INSTANCE:Lcom/tds/lz4/LZ4JNISafeDecompressor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/tds/lz4/LZ4SafeDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 21
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 45
    invoke-static/range {p4 .. p4}, Lcom/tds/util/ByteBufferUtils;->checkNotReadOnly(Ljava/nio/ByteBuffer;)V

    .line 46
    invoke-static/range {p1 .. p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 47
    invoke-static/range {p4 .. p6}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_15
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_42

    .line 73
    :cond_22
    sget-object v0, Lcom/tds/lz4/LZ4JNISafeDecompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4SafeDecompressor;

    .line 74
    .local v0, "safeInstance":Lcom/tds/lz4/LZ4SafeDecompressor;
    if-nez v0, :cond_31

    .line 75
    invoke-static {}, Lcom/tds/lz4/LZ4Factory;->safeInstance()Lcom/tds/lz4/LZ4Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/lz4/LZ4Factory;->safeDecompressor()Lcom/tds/lz4/LZ4SafeDecompressor;

    move-result-object v1

    sput-object v1, Lcom/tds/lz4/LZ4JNISafeDecompressor;->SAFE_INSTANCE:Lcom/tds/lz4/LZ4SafeDecompressor;

    move-object v0, v1

    .line 77
    :cond_31
    move-object v1, v0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4SafeDecompressor;->decompress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v1

    return v1

    .line 50
    .end local v0    # "safeInstance":Lcom/tds/lz4/LZ4SafeDecompressor;
    :cond_42
    :goto_42
    const/4 v0, 0x0

    .local v0, "srcArr":[B
    const/4 v1, 0x0

    .line 51
    .local v1, "destArr":[B
    const/4 v2, 0x0

    .local v2, "srcBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 52
    .local v3, "destBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v4, p2, v4

    move-object v12, v2

    move-object v2, v0

    move v0, v4

    .end local p2    # "srcOff":I
    .local v4, "srcOff":I
    goto :goto_60

    .line 56
    .end local v4    # "srcOff":I
    .restart local p2    # "srcOff":I
    :cond_5a
    nop

    .line 57
    move-object v2, p1

    move-object v12, v2

    move-object v2, v0

    move/from16 v0, p2

    .line 59
    .end local p2    # "srcOff":I
    .local v0, "srcOff":I
    .local v2, "srcArr":[B
    .local v12, "srcBuf":Ljava/nio/ByteBuffer;
    :goto_60
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 60
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 61
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int v4, p5, v4

    move-object v13, v3

    move-object v3, v1

    move v1, v4

    .end local p5    # "destOff":I
    .local v4, "destOff":I
    goto :goto_7b

    .line 63
    .end local v4    # "destOff":I
    .restart local p5    # "destOff":I
    :cond_74
    nop

    .line 64
    move-object/from16 v3, p4

    move-object v13, v3

    move-object v3, v1

    move/from16 v1, p5

    .line 67
    .end local p5    # "destOff":I
    .local v1, "destOff":I
    .local v3, "destArr":[B
    .local v13, "destBuf":Ljava/nio/ByteBuffer;
    :goto_7b
    move-object v4, v2

    move-object v5, v12

    move v6, v0

    move/from16 v7, p3

    move-object v8, v3

    move-object v9, v13

    move v10, v1

    move/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/tds/lz4/LZ4JNI;->LZ4_decompress_safe([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

    move-result v4

    .line 68
    .local v4, "result":I
    if-ltz v4, :cond_8c

    .line 71
    return v4

    .line 69
    :cond_8c
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

.method public final decompress([BII[BII)I
    .registers 15
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 34
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 35
    invoke-static {p4, p5, p6}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 36
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tds/lz4/LZ4JNI;->LZ4_decompress_safe([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

    move-result v0

    .line 37
    .local v0, "result":I
    if-ltz v0, :cond_15

    .line 40
    return v0

    .line 38
    :cond_15
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
