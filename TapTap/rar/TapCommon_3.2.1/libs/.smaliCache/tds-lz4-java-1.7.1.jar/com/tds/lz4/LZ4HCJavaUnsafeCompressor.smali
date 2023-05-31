.class final Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;
.super Lcom/tds/lz4/LZ4Compressor;
.source "LZ4HCJavaUnsafeCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lcom/tds/lz4/LZ4Compressor;


# instance fields
.field final compressionLevel:I

.field private final maxAttempts:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    nop

    .line 20
    new-instance v0, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;->INSTANCE:Lcom/tds/lz4/LZ4Compressor;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 25
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "compressionLevel"    # I

    .line 26
    invoke-direct {p0}, Lcom/tds/lz4/LZ4Compressor;-><init>()V

    .line 27
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;->maxAttempts:I

    .line 28
    iput p1, p0, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;->compressionLevel:I

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;

    .line 18
    iget v0, p0, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;->maxAttempts:I

    return v0
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 31
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 405
    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v6, v9, v1

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;->compress([BII[BII)I

    move-result v1

    return v1

    .line 408
    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 409
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .local v1, "src":Ljava/nio/ByteBuffer;
    invoke-static/range {p4 .. p4}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 411
    .end local p4    # "dest":Ljava/nio/ByteBuffer;
    .local v7, "dest":Ljava/nio/ByteBuffer;
    invoke-static {v1, v0, v8}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 412
    invoke-static {v7, v9, v10}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 414
    add-int v19, v0, v8

    .line 415
    .local v19, "srcEnd":I
    add-int v20, v9, v10

    .line 416
    .local v20, "destEnd":I
    add-int/lit8 v6, v19, -0xc

    .line 417
    .local v6, "mfLimit":I
    add-int/lit8 v5, v19, -0x5

    .line 419
    .local v5, "matchLimit":I
    move/from16 v2, p2

    .line 420
    .local v2, "sOff":I
    move/from16 v3, p5

    .line 421
    .local v3, "dOff":I
    add-int/lit8 v4, v2, 0x1

    .line 423
    .local v2, "anchor":I
    .local v4, "sOff":I
    new-instance v11, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;

    move-object/from16 v15, p0

    invoke-direct {v11, v15, v0}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;-><init>(Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;I)V

    move-object v14, v11

    .line 424
    .local v14, "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    new-instance v11, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v11}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v13, v11

    .line 425
    .local v13, "match0":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v11, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v11}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v12, v11

    .line 426
    .local v12, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v11, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v11}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    .line 427
    .local v11, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v16, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct/range {v16 .. v16}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object/from16 p1, v16

    move/from16 v16, v2

    move/from16 v17, v3

    .line 430
    .end local v2    # "anchor":I
    .end local v3    # "dOff":I
    .local v16, "anchor":I
    .local v17, "dOff":I
    .local p1, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :goto_73
    if-ge v4, v6, :cond_2cb

    .line 431
    invoke-virtual {v14, v1, v4, v5, v12}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindBestMatch(Ljava/nio/ByteBuffer;IILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 432
    add-int/lit8 v4, v4, 0x1

    .line 433
    goto :goto_73

    .line 437
    :cond_7e
    invoke-static {v12, v13}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    move/from16 v2, v16

    move/from16 v3, v17

    .line 441
    .end local v16    # "anchor":I
    .end local v17    # "dOff":I
    .restart local v2    # "anchor":I
    .restart local v3    # "dOff":I
    :goto_85
    nop

    .line 442
    invoke-virtual {v12}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    if-ge v0, v6, :cond_28e

    invoke-virtual {v12}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move/from16 p4, v4

    .end local v4    # "sOff":I
    .local p4, "sOff":I
    iget v4, v12, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    add-int/lit8 v4, v4, 0x1

    iget v8, v12, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v21, v11

    .end local v11    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v21, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    move-object v11, v14

    move-object v10, v12

    .end local v12    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .local v10, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    move-object v12, v1

    move-object v9, v13

    .end local v13    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .local v9, "match0":Lcom/tds/lz4/LZ4Utils$Match;
    move v13, v0

    move-object v0, v14

    .end local v14    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v0, "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    move v14, v4

    move v15, v5

    move/from16 v16, v8

    move-object/from16 v17, v21

    invoke-virtual/range {v11 .. v17}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v4

    if-nez v4, :cond_ba

    move-object/from16 v8, v21

    move-object/from16 v21, v0

    move/from16 v23, v6

    move-object/from16 v6, p1

    move/from16 p1, v23

    goto/16 :goto_29b

    .line 450
    :cond_ba
    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v8, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    if-ge v4, v8, :cond_cf

    .line 451
    move-object/from16 v8, v21

    .end local v21    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v8, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    iget v4, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v12, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v11, v12

    if-ge v4, v11, :cond_d1

    .line 452
    invoke-static {v9, v10}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    goto :goto_d1

    .line 450
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v21    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_cf
    move-object/from16 v8, v21

    .line 455
    .end local v21    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_d1
    :goto_d1
    nop

    .line 457
    iget v4, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v4, v11

    const/4 v15, 0x3

    if-ge v4, v15, :cond_ee

    .line 458
    invoke-static {v8, v10}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 459
    move-object/from16 v15, p0

    move/from16 v4, p4

    move-object v14, v0

    move-object v11, v8

    move-object v13, v9

    move-object v12, v10

    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    goto :goto_85

    .line 457
    :cond_ee
    move/from16 v4, p4

    .line 464
    .end local p4    # "sOff":I
    .restart local v4    # "sOff":I
    :goto_f0
    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v12, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v11, v12

    const/16 v14, 0x12

    const/4 v13, 0x4

    if-ge v11, v14, :cond_121

    .line 465
    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 466
    .local v11, "newMatchLen":I
    if-le v11, v14, :cond_100

    .line 467
    const/16 v11, 0x12

    .line 469
    :cond_100
    iget v12, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    add-int/2addr v12, v11

    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v16

    add-int/lit8 v14, v16, -0x4

    if-le v12, v14, :cond_115

    .line 470
    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v12, v14

    iget v14, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v12, v14

    add-int/lit8 v11, v12, -0x4

    .line 472
    :cond_115
    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v12, v14

    sub-int v12, v11, v12

    .line 473
    .local v12, "correction":I
    if-lez v12, :cond_121

    .line 474
    invoke-virtual {v8, v12}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 478
    .end local v11    # "newMatchLen":I
    .end local v12    # "correction":I
    :cond_121
    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v11, v12

    if-ge v11, v6, :cond_236

    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v11

    add-int/lit8 v14, v11, -0x3

    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move/from16 v16, v11

    move-object v11, v0

    move/from16 v17, v12

    move-object v12, v1

    move-object/from16 v21, v0

    move v0, v13

    .end local v0    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v21, "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    move v13, v14

    move/from16 v14, v17

    move/from16 v22, v15

    move v15, v5

    move-object/from16 v17, p1

    invoke-virtual/range {v11 .. v17}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v11

    if-nez v11, :cond_151

    move/from16 v23, v6

    move-object/from16 v6, p1

    move/from16 p1, v23

    goto/16 :goto_23e

    .line 493
    :cond_151
    move-object/from16 v15, p1

    .end local p1    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v15, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    iget v11, v15, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    add-int/lit8 v12, v12, 0x3

    if-ge v11, v12, :cond_1c9

    .line 494
    iget v11, v15, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    if-lt v11, v12, :cond_1b7

    .line 495
    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    if-ge v11, v12, :cond_17e

    .line 496
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v11

    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v11, v12

    .line 497
    .local v11, "correction":I
    invoke-virtual {v8, v11}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 498
    iget v12, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    if-ge v12, v0, :cond_17e

    .line 499
    invoke-static {v15, v8}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 503
    .end local v11    # "correction":I
    :cond_17e
    iget v13, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v0, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object v11, v1

    move v12, v2

    move/from16 p1, v6

    move-object v6, v15

    .end local v15    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local p1, "mfLimit":I
    move v15, v0

    move-object/from16 v16, v7

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v11 .. v18}, Lcom/tds/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v3

    .line 504
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    move v4, v0

    move v2, v0

    .line 506
    invoke-static {v6, v10}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 507
    invoke-static {v8, v9}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 509
    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object v11, v8

    move-object v13, v9

    move-object v12, v10

    move-object/from16 v14, v21

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object/from16 p1, v23

    goto/16 :goto_85

    .line 512
    .end local p1    # "mfLimit":I
    .local v6, "mfLimit":I
    .restart local v15    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_1b7
    move/from16 p1, v6

    move-object v6, v15

    .end local v15    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local p1    # "mfLimit":I
    invoke-static {v6, v8}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 513
    move-object/from16 v0, v21

    move/from16 v15, v22

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object/from16 p1, v23

    goto/16 :goto_f0

    .line 517
    .end local p1    # "mfLimit":I
    .local v6, "mfLimit":I
    .restart local v15    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_1c9
    move/from16 p1, v6

    move-object v6, v15

    .end local v15    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local p1    # "mfLimit":I
    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    if-ge v11, v12, :cond_20c

    .line 518
    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v12, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v11, v12

    const/16 v12, 0xf

    if-ge v11, v12, :cond_205

    .line 519
    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    const/16 v12, 0x12

    if-le v11, v12, :cond_1e5

    .line 520
    iput v12, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 522
    :cond_1e5
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v11

    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    sub-int/2addr v12, v0

    if-le v11, v12, :cond_1fa

    .line 523
    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v11

    iget v12, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v0

    iput v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 525
    :cond_1fa
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    iget v11, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v0, v11

    .line 526
    .local v0, "correction":I
    invoke-virtual {v8, v0}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 527
    .end local v0    # "correction":I
    goto :goto_20c

    .line 528
    :cond_205
    iget v0, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v0, v11

    iput v0, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 532
    :cond_20c
    :goto_20c
    iget v13, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v15, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object v11, v1

    move v12, v2

    move-object/from16 v16, v7

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v11 .. v18}, Lcom/tds/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v3

    .line 533
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    move v4, v0

    move v2, v0

    .line 535
    invoke-static {v8, v10}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 536
    invoke-static {v6, v8}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 538
    move-object/from16 v0, v21

    move/from16 v15, v22

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object/from16 p1, v23

    goto/16 :goto_f0

    .line 478
    .end local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v0, "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v6, "mfLimit":I
    .local p1, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_236
    move-object/from16 v21, v0

    move/from16 v23, v6

    move-object/from16 v6, p1

    move/from16 p1, v23

    .line 481
    .end local v0    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local p1, "mfLimit":I
    :goto_23e
    iget v0, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v11

    if-ge v0, v11, :cond_24d

    .line 482
    iget v0, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v11, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v0, v11

    iput v0, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 485
    :cond_24d
    iget v13, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v15, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object v11, v1

    move v12, v2

    move-object/from16 v16, v7

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v11 .. v18}, Lcom/tds/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 486
    .end local v3    # "dOff":I
    .local v0, "dOff":I
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v12

    move v3, v12

    .line 488
    .end local v2    # "anchor":I
    .end local v4    # "sOff":I
    .local v3, "sOff":I
    .local v12, "anchor":I
    iget v13, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v8, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v15, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move/from16 v17, v0

    invoke-static/range {v11 .. v18}, Lcom/tds/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v17

    .line 489
    .end local v0    # "dOff":I
    .restart local v17    # "dOff":I
    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    move v4, v0

    .end local v3    # "sOff":I
    .restart local v4    # "sOff":I
    move/from16 v16, v0

    .line 490
    .end local v12    # "anchor":I
    .restart local v16    # "anchor":I
    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object v11, v8

    move-object v13, v9

    move-object v12, v10

    move-object/from16 v14, v21

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object/from16 p1, v23

    goto/16 :goto_73

    .line 442
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v9    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v10    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v16    # "anchor":I
    .end local v17    # "dOff":I
    .end local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .restart local v2    # "anchor":I
    .local v3, "dOff":I
    .local v6, "mfLimit":I
    .local v11, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v12, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v13    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v14    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local p1, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_28e
    move/from16 p4, v4

    move-object v8, v11

    move-object v10, v12

    move-object v9, v13

    move-object/from16 v21, v14

    move/from16 v23, v6

    move-object/from16 v6, p1

    move/from16 p1, v23

    .line 445
    .end local v4    # "sOff":I
    .end local v11    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v12    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v13    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v14    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v10    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local p1, "mfLimit":I
    .restart local p4    # "sOff":I
    :goto_29b
    iget v13, v10, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v14, v10, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v15, v10, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object v11, v1

    move v12, v2

    move-object/from16 v16, v7

    move/from16 v17, v3

    move/from16 v18, v20

    invoke-static/range {v11 .. v18}, Lcom/tds/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v17

    .line 446
    .end local v3    # "dOff":I
    .restart local v17    # "dOff":I
    invoke-virtual {v10}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v0

    move v4, v0

    .end local p4    # "sOff":I
    .restart local v4    # "sOff":I
    move/from16 v16, v0

    .line 447
    .end local v2    # "anchor":I
    .restart local v16    # "anchor":I
    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object v11, v8

    move-object v13, v9

    move-object v12, v10

    move-object/from16 v14, v21

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v23, v6

    move/from16 v6, p1

    move-object/from16 p1, v23

    goto/16 :goto_73

    .line 545
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v9    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v10    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v6, "mfLimit":I
    .restart local v11    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v12    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v13    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v14    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local p1, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_2cb
    move-object v8, v11

    move-object v10, v12

    move-object v9, v13

    move-object/from16 v21, v14

    move/from16 v23, v6

    move-object/from16 v6, p1

    move/from16 p1, v23

    .end local v11    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v12    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v13    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v14    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local v6, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v10    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v21    # "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    .local p1, "mfLimit":I
    sub-int v0, v19, v16

    move-object v2, v1

    move/from16 v3, v16

    move v11, v4

    .end local v4    # "sOff":I
    .local v11, "sOff":I
    move v4, v0

    move v0, v5

    .end local v5    # "matchLimit":I
    .local v0, "matchLimit":I
    move-object v5, v7

    move/from16 v12, p1

    move-object v13, v6

    .end local v6    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .end local p1    # "mfLimit":I
    .local v12, "mfLimit":I
    .local v13, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    move/from16 v6, v17

    move-object v14, v7

    .end local v7    # "dest":Ljava/nio/ByteBuffer;
    .local v14, "dest":Ljava/nio/ByteBuffer;
    move/from16 v7, v20

    invoke-static/range {v2 .. v7}, Lcom/tds/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v2

    .line 546
    .end local v17    # "dOff":I
    .local v2, "dOff":I
    move-object v3, v9

    .end local v9    # "match0":Lcom/tds/lz4/LZ4Utils$Match;
    .local v3, "match0":Lcom/tds/lz4/LZ4Utils$Match;
    sub-int v4, v2, p5

    return v4
.end method

.method public compress([BII[BII)I
    .registers 31
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 263
    move/from16 v0, p2

    invoke-static/range {p1 .. p3}, Lcom/tds/util/UnsafeUtils;->checkRange([BII)V

    .line 264
    invoke-static/range {p4 .. p6}, Lcom/tds/util/UnsafeUtils;->checkRange([BII)V

    .line 266
    add-int v1, v0, p3

    .line 267
    .local v1, "srcEnd":I
    add-int v10, p5, p6

    .line 268
    .local v10, "destEnd":I
    add-int/lit8 v11, v1, -0xc

    .line 269
    .local v11, "mfLimit":I
    add-int/lit8 v12, v1, -0x5

    .line 271
    .local v12, "matchLimit":I
    move/from16 v2, p2

    .line 272
    .local v2, "sOff":I
    move/from16 v3, p5

    .line 273
    .local v3, "dOff":I
    add-int/lit8 v4, v2, 0x1

    .line 275
    .local v2, "anchor":I
    .local v4, "sOff":I
    new-instance v5, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;

    move-object/from16 v13, p0

    invoke-direct {v5, v13, v0}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;-><init>(Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor;I)V

    move-object v14, v5

    .line 276
    .local v14, "ht":Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;
    new-instance v5, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v5}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v15, v5

    .line 277
    .local v15, "match0":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v5, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v5}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v9, v5

    .line 278
    .local v9, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v5, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v5}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v8, v5

    .line 279
    .local v8, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    new-instance v5, Lcom/tds/lz4/LZ4Utils$Match;

    invoke-direct {v5}, Lcom/tds/lz4/LZ4Utils$Match;-><init>()V

    move-object v7, v5

    move/from16 v16, v2

    move/from16 v17, v3

    move v6, v4

    .line 282
    .end local v2    # "anchor":I
    .end local v3    # "dOff":I
    .end local v4    # "sOff":I
    .local v6, "sOff":I
    .local v7, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v16, "anchor":I
    .local v17, "dOff":I
    :goto_3b
    if-ge v6, v11, :cond_273

    .line 283
    move-object/from16 v5, p1

    invoke-virtual {v14, v5, v6, v12, v9}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindBestMatch([BIILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 284
    add-int/lit8 v6, v6, 0x1

    .line 285
    goto :goto_3b

    .line 289
    :cond_48
    invoke-static {v9, v15}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v6

    .line 293
    .end local v6    # "sOff":I
    .local v16, "sOff":I
    .local v17, "anchor":I
    .local v18, "dOff":I
    :goto_51
    nop

    .line 294
    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    if-ge v2, v11, :cond_243

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    iget v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    add-int/lit8 v6, v2, 0x1

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object v2, v14

    move/from16 v19, v3

    move-object/from16 v3, p1

    move v5, v6

    move v6, v12

    move-object/from16 v20, v7

    .end local v7    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v20, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    move/from16 v7, v19

    move-object/from16 v19, v8

    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v19, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    invoke-virtual/range {v2 .. v8}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindWiderMatch([BIIIILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_83

    move-object/from16 v22, v9

    move-object/from16 v0, v19

    move-object/from16 v23, v20

    move/from16 v20, v11

    move-object/from16 v11, v23

    goto/16 :goto_249

    .line 302
    :cond_83
    iget v2, v15, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    if-ge v2, v3, :cond_98

    .line 303
    move-object/from16 v8, v19

    .end local v19    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v4, v15, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_9a

    .line 304
    invoke-static {v15, v9}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    goto :goto_9a

    .line 302
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v19    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_98
    move-object/from16 v8, v19

    .line 307
    .end local v19    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_9a
    :goto_9a
    nop

    .line 309
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/4 v7, 0x3

    if-ge v2, v7, :cond_ab

    .line 310
    invoke-static {v8, v9}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 311
    move-object/from16 v5, p1

    move-object/from16 v7, v20

    goto :goto_51

    .line 316
    :cond_ab
    :goto_ab
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/16 v6, 0x12

    const/4 v5, 0x4

    if-ge v2, v6, :cond_db

    .line 317
    iget v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 318
    .local v2, "newMatchLen":I
    if-le v2, v6, :cond_bb

    .line 319
    const/16 v2, 0x12

    .line 321
    :cond_bb
    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    add-int/2addr v3, v2

    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_cf

    .line 322
    iget v3, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v3, v4

    iget v4, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x4

    .line 324
    :cond_cf
    iget v3, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v3, v4

    sub-int v3, v2, v3

    .line 325
    .local v3, "correction":I
    if-lez v3, :cond_db

    .line 326
    invoke-virtual {v8, v3}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 330
    .end local v2    # "newMatchLen":I
    .end local v3    # "correction":I
    :cond_db
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v2, v3

    if-ge v2, v11, :cond_1f5

    invoke-virtual {v8}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    iget v3, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move/from16 v19, v2

    move-object v2, v14

    move/from16 v21, v3

    move-object/from16 v3, p1

    move v0, v5

    move/from16 v5, v21

    move v6, v12

    move/from16 v21, v7

    move/from16 v7, v19

    move-object v0, v8

    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v0, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    move-object/from16 v8, v20

    invoke-virtual/range {v2 .. v8}, Lcom/tds/lz4/LZ4HCJavaUnsafeCompressor$HashTable;->insertAndFindWiderMatch([BIIIILcom/tds/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_10c

    move-object/from16 v23, v20

    move/from16 v20, v11

    move-object/from16 v11, v23

    goto/16 :goto_1fc

    .line 345
    :cond_10c
    move-object/from16 v8, v20

    .end local v20    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v8, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_17f

    .line 346
    iget v2, v8, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-lt v2, v3, :cond_16c

    .line 347
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_13a

    .line 348
    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 349
    .local v2, "correction":I
    invoke-virtual {v0, v2}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 350
    iget v3, v0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_13a

    .line 351
    invoke-static {v8, v0}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 355
    .end local v2    # "correction":I
    :cond_13a
    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v7, p4

    move/from16 v20, v11

    move-object v11, v8

    .end local v8    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v20, "mfLimit":I
    move/from16 v8, v18

    move-object/from16 v22, v9

    .end local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .local v22, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    move v9, v10

    invoke-static/range {v2 .. v9}, Lcom/tds/lz4/LZ4UnsafeUtils;->encodeSequence([BIIII[BII)I

    move-result v18

    .line 356
    invoke-virtual/range {v22 .. v22}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    move/from16 v16, v2

    move/from16 v17, v2

    .line 358
    move-object/from16 v9, v22

    .end local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    invoke-static {v11, v9}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 359
    invoke-static {v0, v15}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 361
    move-object/from16 v5, p1

    move-object v8, v0

    move-object v7, v11

    move/from16 v11, v20

    move/from16 v0, p2

    goto/16 :goto_51

    .line 364
    .end local v20    # "mfLimit":I
    .restart local v8    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "mfLimit":I
    :cond_16c
    move/from16 v20, v11

    move-object v11, v8

    .end local v8    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v20    # "mfLimit":I
    invoke-static {v11, v0}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 365
    move-object v8, v0

    move/from16 v7, v21

    move/from16 v0, p2

    move/from16 v23, v20

    move-object/from16 v20, v11

    move/from16 v11, v23

    goto/16 :goto_ab

    .line 369
    .end local v20    # "mfLimit":I
    .restart local v8    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "mfLimit":I
    :cond_17f
    move/from16 v20, v11

    move-object v11, v8

    .end local v8    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v20    # "mfLimit":I
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_1c3

    .line 370
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1bc

    .line 371
    iget v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_19b

    .line 372
    iput v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 374
    :cond_19b
    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1b1

    .line 375
    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 377
    :cond_1b1
    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 378
    .restart local v2    # "correction":I
    invoke-virtual {v0, v2}, Lcom/tds/lz4/LZ4Utils$Match;->fix(I)V

    .line 379
    .end local v2    # "correction":I
    goto :goto_1c3

    .line 380
    :cond_1bc
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 384
    :cond_1c3
    :goto_1c3
    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v7, p4

    move/from16 v8, v18

    move-object/from16 v22, v9

    .end local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    move v9, v10

    invoke-static/range {v2 .. v9}, Lcom/tds/lz4/LZ4UnsafeUtils;->encodeSequence([BIIII[BII)I

    move-result v18

    .line 385
    invoke-virtual/range {v22 .. v22}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    move/from16 v16, v2

    move/from16 v17, v2

    .line 387
    move-object/from16 v9, v22

    .end local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    invoke-static {v0, v9}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 388
    invoke-static {v11, v0}, Lcom/tds/lz4/LZ4Utils;->copyTo(Lcom/tds/lz4/LZ4Utils$Match;Lcom/tds/lz4/LZ4Utils$Match;)V

    .line 390
    move-object v8, v0

    move/from16 v7, v21

    move/from16 v0, p2

    move/from16 v23, v20

    move-object/from16 v20, v11

    move/from16 v11, v23

    goto/16 :goto_ab

    .line 330
    .end local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v8, "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "mfLimit":I
    .local v20, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    :cond_1f5
    move-object v0, v8

    move-object/from16 v23, v20

    move/from16 v20, v11

    move-object/from16 v11, v23

    .line 333
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .local v20, "mfLimit":I
    :goto_1fc
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_20b

    .line 334
    iget v2, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    .line 337
    :cond_20b
    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v7, p4

    move/from16 v8, v18

    move-object/from16 v22, v9

    .end local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    move v9, v10

    invoke-static/range {v2 .. v9}, Lcom/tds/lz4/LZ4UnsafeUtils;->encodeSequence([BIIII[BII)I

    move-result v18

    .line 338
    invoke-virtual/range {v22 .. v22}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    move/from16 v16, v3

    .line 340
    .end local v17    # "anchor":I
    .local v3, "anchor":I
    iget v4, v0, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v5, v0, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v6, v0, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move/from16 v8, v18

    invoke-static/range {v2 .. v9}, Lcom/tds/lz4/LZ4UnsafeUtils;->encodeSequence([BIIII[BII)I

    move-result v17

    .line 341
    .end local v18    # "dOff":I
    .local v17, "dOff":I
    invoke-virtual {v0}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v2

    move v6, v2

    .end local v16    # "sOff":I
    .restart local v6    # "sOff":I
    move/from16 v16, v2

    .line 342
    .end local v3    # "anchor":I
    .local v16, "anchor":I
    move-object v8, v0

    move-object v7, v11

    move/from16 v11, v20

    move-object/from16 v9, v22

    move/from16 v0, p2

    goto/16 :goto_3b

    .line 294
    .end local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v6    # "sOff":I
    .end local v20    # "mfLimit":I
    .end local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v7    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "mfLimit":I
    .local v16, "sOff":I
    .local v17, "anchor":I
    .restart local v18    # "dOff":I
    :cond_243
    move-object v0, v8

    move-object/from16 v22, v9

    move/from16 v20, v11

    move-object v11, v7

    .line 297
    .end local v7    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v20    # "mfLimit":I
    .restart local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    :goto_249
    move-object/from16 v9, v22

    .end local v22    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    iget v4, v9, Lcom/tds/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lcom/tds/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lcom/tds/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v7, p4

    move/from16 v8, v18

    move-object/from16 v19, v9

    .end local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .local v19, "match1":Lcom/tds/lz4/LZ4Utils$Match;
    move v9, v10

    invoke-static/range {v2 .. v9}, Lcom/tds/lz4/LZ4UnsafeUtils;->encodeSequence([BIIII[BII)I

    move-result v2

    .line 298
    .end local v18    # "dOff":I
    .local v2, "dOff":I
    invoke-virtual/range {v19 .. v19}, Lcom/tds/lz4/LZ4Utils$Match;->end()I

    move-result v3

    move v6, v3

    .end local v16    # "sOff":I
    .restart local v6    # "sOff":I
    move/from16 v16, v3

    .line 299
    .end local v17    # "anchor":I
    .local v16, "anchor":I
    move-object v8, v0

    move/from16 v17, v2

    move-object v7, v11

    move-object/from16 v9, v19

    move/from16 v11, v20

    move/from16 v0, p2

    goto/16 :goto_3b

    .line 397
    .end local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v2    # "dOff":I
    .end local v19    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v20    # "mfLimit":I
    .restart local v7    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v9    # "match1":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "mfLimit":I
    .local v17, "dOff":I
    :cond_273
    move-object v0, v8

    move/from16 v20, v11

    move-object v11, v7

    .end local v7    # "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .end local v8    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v0    # "match2":Lcom/tds/lz4/LZ4Utils$Match;
    .local v11, "match3":Lcom/tds/lz4/LZ4Utils$Match;
    .restart local v20    # "mfLimit":I
    sub-int v4, v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v5, p4

    move v8, v6

    .end local v6    # "sOff":I
    .local v8, "sOff":I
    move/from16 v6, v17

    move v7, v10

    invoke-static/range {v2 .. v7}, Lcom/tds/lz4/LZ4UnsafeUtils;->lastLiterals([BII[BII)I

    move-result v2

    .line 398
    .end local v17    # "dOff":I
    .restart local v2    # "dOff":I
    sub-int v3, v2, p5

    return v3
.end method
