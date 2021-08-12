.class public final Lcom/tencent/bugly/proguard/l;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 370
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    .line 373
    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 374
    new-array v3, v1, [B

    .line 376
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_1f

    .line 377
    ushr-int/lit8 v5, v4, 0x4

    aget-byte v5, v0, v5

    aput-byte v5, v2, v4

    .line 378
    and-int/lit8 v5, v4, 0xf

    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 381
    :cond_1f
    return-void

    :array_20
    .array-data 1
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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public static a(II)Z
    .registers 2

    .line 36
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static a(JJ)Z
    .registers 4

    .line 40
    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(ZZ)Z
    .registers 2

    .line 20
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)[B
    .registers 4

    .line 359
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v1, v0, [B

    .line 360
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v1
.end method
