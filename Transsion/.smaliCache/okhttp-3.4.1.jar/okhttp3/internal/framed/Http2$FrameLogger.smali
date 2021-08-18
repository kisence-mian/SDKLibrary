.class final Lokhttp3/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 706
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HEADERS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "PRIORITY"

    aput-object v4, v0, v1

    const-string v1, "RST_STREAM"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "SETTINGS"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v7, "PUSH_PROMISE"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v7, "PING"

    aput-object v7, v0, v1

    const/4 v1, 0x7

    const-string v7, "GOAWAY"

    aput-object v7, v0, v1

    const-string v1, "WINDOW_UPDATE"

    const/16 v7, 0x8

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v8, "CONTINUATION"

    aput-object v8, v0, v1

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 723
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 724
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    sget-object v1, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v8, v1

    const/16 v9, 0x20

    if-ge v0, v8, :cond_67

    .line 728
    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    const-string v10, "%8s"

    invoke-static {v10, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 731
    .end local v0    # "i":I
    :cond_67
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 732
    const-string v1, "END_STREAM"

    aput-object v1, v0, v3

    .line 734
    new-array v1, v3, [I

    aput v3, v1, v2

    .line 736
    .local v1, "prefixFlags":[I
    const-string v3, "PADDED"

    aput-object v3, v0, v7

    .line 737
    array-length v0, v1

    const/4 v3, 0x0

    :goto_7b
    const-string v8, "|PADDED"

    if-ge v3, v0, :cond_9d

    aget v10, v1, v3

    .line 738
    .local v10, "prefixFlag":I
    sget-object v11, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v12, v10, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    .line 737
    .end local v10    # "prefixFlag":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 741
    :cond_9d
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v3, "END_HEADERS"

    aput-object v3, v0, v6

    .line 742
    aput-object v4, v0, v9

    .line 743
    const/16 v3, 0x24

    const-string v4, "END_HEADERS|PRIORITY"

    aput-object v4, v0, v3

    .line 744
    new-array v0, v5, [I

    fill-array-data v0, :array_11a

    .line 747
    .local v0, "frameFlags":[I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_b2
    if-ge v4, v3, :cond_105

    aget v5, v0, v4

    .line 748
    .local v5, "frameFlag":I
    array-length v6, v1

    const/4 v9, 0x0

    :goto_b8
    if-ge v9, v6, :cond_102

    aget v10, v1, v9

    .line 749
    .restart local v10    # "prefixFlag":I
    sget-object v11, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v12, v10, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v15, v11, v5

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 750
    or-int v12, v10, v5

    or-int/2addr v12, v7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v11, v10

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v11, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 748
    .end local v10    # "prefixFlag":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_b8

    .line 747
    .end local v5    # "frameFlag":I
    :cond_102
    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    .line 755
    :cond_105
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_106
    sget-object v3, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_118

    .line 756
    aget-object v4, v3, v2

    if-nez v4, :cond_115

    sget-object v4, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 755
    :cond_115
    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    .line 758
    .end local v0    # "frameFlags":[I
    .end local v1    # "prefixFlags":[I
    .end local v2    # "i":I
    :cond_118
    return-void

    nop

    :array_11a
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 684
    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    .line 685
    :cond_5
    packed-switch p0, :pswitch_data_44

    .line 695
    :pswitch_8
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_20

    aget-object v0, v0, p1

    goto :goto_24

    .line 688
    :pswitch_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    const-string v0, "ACK"

    goto :goto_1a

    :cond_16
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1a
    return-object v0

    .line 693
    :pswitch_1b
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 695
    :cond_20
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 697
    .local v0, "result":Ljava/lang/String;
    :goto_24
    const/4 v1, 0x5

    if-ne p0, v1, :cond_34

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_34

    .line 698
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 699
    :cond_34
    if-nez p0, :cond_43

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_43

    .line 700
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 702
    :cond_43
    return-object v0

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1b
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .registers 11
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 672
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_a

    aget-object v0, v0, p3

    goto :goto_18

    :cond_a
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "formattedType":Ljava/lang/String;
    :goto_18
    invoke-static {p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "formattedFlags":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p0, :cond_24

    const-string v5, "<<"

    goto :goto_26

    :cond_24
    const-string v5, ">>"

    :goto_26
    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    const-string v2, "%s 0x%08x %5d %-13s %s"

    invoke-static {v2, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
