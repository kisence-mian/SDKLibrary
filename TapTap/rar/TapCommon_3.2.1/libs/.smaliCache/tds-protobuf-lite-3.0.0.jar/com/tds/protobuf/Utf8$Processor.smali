.class abstract Lcom/tds/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 543
    # invokes: Lcom/tds/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    invoke-static {p0, p1, p2}, Lcom/tds/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    .line 551
    :goto_5
    if-lt p1, p2, :cond_9

    .line 552
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_9
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_8d

    .line 557
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_2c

    .line 559
    if-lt v0, p2, :cond_1c

    .line 561
    return v1

    .line 566
    :cond_1c
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2b

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_27

    goto :goto_2b

    .line 569
    :cond_27
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_89

    .line 567
    :cond_2b
    :goto_2b
    return v2

    .line 570
    :cond_2c
    const/16 v4, -0x10

    if-ge v1, v4, :cond_5c

    .line 572
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_3b

    .line 574
    sub-int p1, p2, v0

    # invokes: Lcom/tds/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p1}, Lcom/tds/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 577
    :cond_3b
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 578
    .local v0, "byte2":B
    if-gt v0, v3, :cond_5b

    const/16 v5, -0x60

    if-ne v1, p1, :cond_49

    if-lt v0, v5, :cond_5b

    :cond_49
    const/16 p1, -0x13

    if-ne v1, p1, :cond_4f

    if-ge v0, v5, :cond_5b

    .line 584
    :cond_4f
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_56

    goto :goto_5b

    .line 587
    :cond_56
    nop

    .end local v0    # "byte2":B
    add-int/lit8 v4, v4, 0x1

    .line 588
    move p1, v4

    goto :goto_89

    .line 585
    .restart local v0    # "byte2":B
    :cond_5b
    :goto_5b
    return v2

    .line 590
    .end local v4    # "index":I
    .local v0, "index":I
    :cond_5c
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_67

    .line 592
    sub-int p1, p2, v0

    # invokes: Lcom/tds/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p1}, Lcom/tds/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 596
    :cond_67
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 597
    .local v0, "byte2":I
    if-gt v0, v3, :cond_8c

    shl-int/lit8 v4, v1, 0x1c

    add-int/lit8 v5, v0, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_8c

    add-int/lit8 v4, p1, 0x1

    .line 604
    .end local p1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-gt p1, v3, :cond_8b

    add-int/lit8 p1, v4, 0x1

    .line 606
    .end local v4    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-le v4, v3, :cond_89

    goto :goto_8c

    .line 610
    .end local v0    # "byte2":I
    .end local v1    # "byte1":I
    :cond_89
    :goto_89
    goto/16 :goto_5

    .line 604
    .end local p1    # "index":I
    .restart local v0    # "byte2":I
    .restart local v1    # "byte1":I
    .restart local v4    # "index":I
    :cond_8b
    move p1, v4

    .line 607
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :cond_8c
    :goto_8c
    return v2

    .line 554
    .end local p1    # "index":I
    .local v0, "index":I
    :cond_8d
    move p1, v0

    goto/16 :goto_5
.end method


# virtual methods
.method abstract encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method final encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 663
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 664
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 665
    .local v0, "offset":I
    nop

    .line 666
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/tds/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 667
    .local v1, "endIndex":I
    sub-int v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 668
    .end local v0    # "offset":I
    .end local v1    # "endIndex":I
    goto :goto_2f

    :cond_22
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 669
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_2f

    .line 671
    :cond_2c
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 673
    :goto_2f
    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 685
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 686
    .local v0, "inLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 687
    .local v1, "outIx":I
    const/4 v2, 0x0

    .line 695
    .local v2, "inIx":I
    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_20

    :try_start_d
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v3, :cond_20

    .line 696
    add-int v3, v1, v2

    int-to-byte v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 744
    .end local v5    # "c":C
    :catch_1d
    move-exception v3

    goto/16 :goto_cc

    .line 698
    :cond_20
    if-ne v2, v0, :cond_28

    .line 700
    add-int v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 701
    return-void

    .line 704
    :cond_28
    add-int/2addr v1, v2

    .line 705
    :goto_29
    if-ge v2, v0, :cond_c7

    .line 706
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 707
    .local v4, "c":C
    if-ge v4, v3, :cond_37

    .line 709
    int-to-byte v5, v4

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_35} :catch_1d

    goto/16 :goto_c1

    .line 710
    :cond_37
    const/16 v5, 0x800

    if-ge v4, v5, :cond_53

    .line 714
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_42
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 715
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4c} :catch_4f

    move v1, v5

    goto/16 :goto_c1

    .line 744
    .end local v4    # "c":C
    :catch_4f
    move-exception v3

    move v1, v5

    goto/16 :goto_cc

    .line 716
    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_53
    const v5, 0xd800

    if-lt v4, v5, :cond_a5

    const v5, 0xdfff

    if-ge v5, v4, :cond_5e

    goto :goto_a5

    .line 730
    :cond_5e
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_9f

    add-int/lit8 v2, v2, 0x1

    :try_start_64
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "low":C
    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 734
    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5
    :try_end_73
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_64 .. :try_end_73} :catch_1d

    .line 735
    .local v5, "codePoint":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .local v7, "outIx":I
    ushr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    :try_start_7a
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7a .. :try_end_7d} :catch_9c

    .line 736
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_85
    invoke-virtual {p2, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_88
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_85 .. :try_end_88} :catch_1d

    .line 737
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .restart local v7    # "outIx":I
    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_90
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 738
    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_9a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_90 .. :try_end_9a} :catch_9c

    move v1, v7

    goto :goto_c1

    .line 744
    .end local v4    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "low":C
    :catch_9c
    move-exception v3

    move v1, v7

    goto :goto_cc

    .line 731
    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_9f
    :try_start_9f
    new-instance v3, Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .end local v0    # "inLength":I
    .end local v1    # "outIx":I
    .end local v2    # "inIx":I
    .end local p0    # "this":Lcom/tds/protobuf/Utf8$Processor;
    .end local p1    # "in":Ljava/lang/CharSequence;
    .end local p2    # "out":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_a5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_1d

    .line 721
    .restart local v0    # "inLength":I
    .restart local v1    # "outIx":I
    .restart local v2    # "inIx":I
    .restart local p0    # "this":Lcom/tds/protobuf/Utf8$Processor;
    .restart local p1    # "in":Ljava/lang/CharSequence;
    .restart local p2    # "out":Ljava/nio/ByteBuffer;
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_ac
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_af
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ac .. :try_end_af} :catch_4f

    .line 722
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_b7
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 723
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 705
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 743
    .end local v4    # "c":C
    :cond_c7
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_ca
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b7 .. :try_end_ca} :catch_1d

    .line 752
    nop

    .line 753
    return-void

    .line 749
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_cc
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 750
    .local v4, "badWriteIndex":I
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method abstract encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final isValidUtf8([BII)Z
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 429
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 430
    .local v0, "offset":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int v2, v0, p3

    add-int v3, v0, p4

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1

    .line 431
    .end local v0    # "offset":I
    :cond_17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 434
    :cond_22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8(I[BII)I
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 12
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 450
    if-eqz p1, :cond_95

    .line 458
    if-lt p3, p4, :cond_5

    .line 459
    return p1

    .line 462
    :cond_5
    int-to-byte v0, p1

    .line 464
    .local v0, "byte1":B
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1f

    .line 469
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_1e

    add-int/lit8 v1, p3, 0x1

    .line 471
    .end local p3    # "index":I
    .local v1, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1b

    move p3, v1

    goto :goto_1e

    :cond_1b
    move p3, v1

    goto/16 :goto_95

    .line 472
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_1e
    :goto_1e
    return v2

    .line 474
    :cond_1f
    const/16 v4, -0x10

    if-ge v0, v4, :cond_52

    .line 478
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    .line 479
    .local v4, "byte2":B
    if-nez v4, :cond_37

    .line 480
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .local v5, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 481
    if-lt v5, p4, :cond_36

    .line 482
    # invokes: Lcom/tds/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v4}, Lcom/tds/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 481
    :cond_36
    move p3, v5

    .line 485
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_37
    if-gt v4, v3, :cond_51

    const/16 v5, -0x60

    if-ne v0, v1, :cond_3f

    if-lt v4, v5, :cond_51

    :cond_3f
    const/16 v1, -0x13

    if-ne v0, v1, :cond_45

    if-ge v4, v5, :cond_51

    :cond_45
    add-int/lit8 v1, p3, 0x1

    .line 491
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_4f

    move p3, v1

    goto :goto_51

    .line 494
    .end local v4    # "byte2":B
    :cond_4f
    move p3, v1

    goto :goto_95

    .line 492
    .end local v1    # "index":I
    .restart local v4    # "byte2":B
    .restart local p3    # "index":I
    :cond_51
    :goto_51
    return v2

    .line 498
    .end local v4    # "byte2":B
    :cond_52
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 499
    .local v1, "byte2":B
    const/4 v4, 0x0

    .line 500
    .local v4, "byte3":B
    if-nez v1, :cond_68

    .line 501
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 502
    if-lt v5, p4, :cond_66

    .line 503
    # invokes: Lcom/tds/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Lcom/tds/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 502
    :cond_66
    move p3, v5

    goto :goto_6b

    .line 506
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_68
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    .line 508
    :goto_6b
    if-nez v4, :cond_7b

    .line 509
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 510
    if-lt v5, p4, :cond_7a

    .line 511
    # invokes: Lcom/tds/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, v4}, Lcom/tds/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    .line 510
    :cond_7a
    move p3, v5

    .line 519
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_7b
    if-gt v1, v3, :cond_94

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_94

    if-gt v4, v3, :cond_94

    add-int/lit8 v5, p3, 0x1

    .line 528
    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_92

    move p3, v5

    goto :goto_94

    :cond_92
    move p3, v5

    goto :goto_95

    .line 529
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_94
    :goto_94
    return v2

    .line 535
    .end local v0    # "byte1":B
    .end local v1    # "byte2":B
    .end local v4    # "byte3":B
    :cond_95
    :goto_95
    invoke-static {p2, p3, p4}, Lcom/tds/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method
