.class final Lcom/bytedance/sdk/a/a/b;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 110
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/bytedance/sdk/a/a/b;->a:[B

    .line 117
    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/bytedance/sdk/a/a/b;->b:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    .line 125
    sget-object v0, Lcom/bytedance/sdk/a/a/b;->a:[B

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/a/b;->a([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)Ljava/lang/String;
    .registers 10

    .line 133
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 134
    new-array v0, v0, [B

    .line 135
    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    .line 136
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v2, v1, :cond_55

    .line 137
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    .line 138
    add-int/lit8 v3, v4, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x1

    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v5, v7

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    .line 139
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v6

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v2, 0x2

    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    .line 140
    add-int/lit8 v3, v4, 0x1

    aget-byte v5, p0, v6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    .line 136
    add-int/lit8 v2, v2, 0x3

    goto :goto_10

    .line 142
    :cond_55
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    const/16 v4, 0x3d

    packed-switch v2, :pswitch_data_bc

    goto :goto_ad

    .line 150
    :pswitch_5e
    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    .line 151
    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    .line 152
    add-int/lit8 v2, v3, 0x1

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x2

    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    .line 153
    aput-byte v4, v0, v2

    goto :goto_ad

    .line 144
    :pswitch_8e
    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    .line 145
    add-int/lit8 v3, v2, 0x1

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v2

    .line 146
    add-int/lit8 p0, v3, 0x1

    aput-byte v4, v0, v3

    .line 147
    aput-byte v4, v0, p0

    .line 148
    nop

    .line 157
    :goto_ad
    :try_start_ad
    new-instance p0, Ljava/lang/String;

    const-string p1, "US-ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ad .. :try_end_b4} :catch_b5

    return-object p0

    .line 158
    :catch_b5
    move-exception p0

    .line 159
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_5e
    .end packed-switch
.end method
