.class public final Lcom/appsflyer/internal/by;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final values:S


# instance fields
.field private AFInAppEventParameterName:[B

.field private AFInAppEventType:I

.field private AFKeystoreWrapper:[B

.field private AFLogger$LogLevel:I

.field private AFVersionDeclaration:I

.field private AppsFlyer2dXConversionCallback:I

.field private getLevel:I

.field private init:I

.field private onAppOpenAttributionNative:I

.field private onAttributionFailureNative:I

.field private onInstallConversionFailureNative:I

.field private valueOf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 24
    nop

    .line 25
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    sput-short v0, Lcom/appsflyer/internal/by;->values:S

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const p1, 0x7fffffff

    iput p1, p0, Lcom/appsflyer/internal/by;->AFLogger$LogLevel:I

    .line 62
    const/16 p1, 0x8

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/by;->AFKeystoreWrapper:[B

    .line 64
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/appsflyer/internal/by;->AFInAppEventParameterName:[B

    .line 66
    iput p1, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    .line 67
    iput p1, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    .line 70
    const/4 v0, 0x5

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lcom/appsflyer/internal/by;->init:I

    .line 71
    iput p6, p0, Lcom/appsflyer/internal/by;->AFVersionDeclaration:I

    .line 72
    const/4 p5, 0x3

    const/4 v0, 0x0

    if-ne p6, p5, :cond_32

    .line 74
    iget-object p6, p0, Lcom/appsflyer/internal/by;->AFKeystoreWrapper:[B

    invoke-static {p4, v0, p6, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_32
    aget p1, p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/4 p4, 0x1

    aget p2, p2, p4

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 81
    nop

    .line 1185
    if-nez p3, :cond_61

    .line 1187
    nop

    .line 1199
    long-to-int p2, v0

    iput p2, p0, Lcom/appsflyer/internal/by;->getLevel:I

    .line 1200
    shr-long p2, v0, p5

    sget-short p4, Lcom/appsflyer/internal/by;->values:S

    int-to-long p5, p4

    mul-long p5, p5, p2

    shr-long/2addr p5, p1

    long-to-int p6, p5

    iput p6, p0, Lcom/appsflyer/internal/by;->onAttributionFailureNative:I

    .line 1201
    shr-long p5, v0, p1

    long-to-int p1, p5

    iput p1, p0, Lcom/appsflyer/internal/by;->onAppOpenAttributionNative:I

    .line 1202
    int-to-long p4, p4

    add-long/2addr p2, p4

    long-to-int p1, p2

    iput p1, p0, Lcom/appsflyer/internal/by;->onInstallConversionFailureNative:I

    .line 1188
    return-void

    .line 1190
    :cond_61
    long-to-int p2, v0

    iput p2, p0, Lcom/appsflyer/internal/by;->getLevel:I

    .line 1191
    mul-int p4, p2, p3

    iput p4, p0, Lcom/appsflyer/internal/by;->onAttributionFailureNative:I

    .line 1192
    xor-int/2addr p2, p3

    iput p2, p0, Lcom/appsflyer/internal/by;->onAppOpenAttributionNative:I

    .line 1193
    shr-long p1, v0, p1

    long-to-int p2, p1

    iput p2, p0, Lcom/appsflyer/internal/by;->onInstallConversionFailureNative:I

    .line 82
    return-void
.end method

.method private AFKeystoreWrapper()V
    .registers 18

    .line 212
    move-object/from16 v0, p0

    iget v1, v0, Lcom/appsflyer/internal/by;->AFVersionDeclaration:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_10

    .line 214
    iget-object v1, v0, Lcom/appsflyer/internal/by;->valueOf:[B

    iget-object v4, v0, Lcom/appsflyer/internal/by;->AFInAppEventParameterName:[B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_10
    iget-object v1, v0, Lcom/appsflyer/internal/by;->valueOf:[B

    aget-byte v4, v1, v3

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x2

    aget-byte v9, v1, v7

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    const v11, 0xff00

    and-int/2addr v9, v11

    add-int/2addr v4, v9

    aget-byte v9, v1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v4, v9

    .line 220
    const/4 v9, 0x4

    aget-byte v12, v1, v9

    shl-int/lit8 v12, v12, 0x18

    and-int/2addr v5, v12

    const/4 v12, 0x5

    aget-byte v13, v1, v12

    shl-int/lit8 v13, v13, 0x10

    and-int/2addr v8, v13

    add-int/2addr v5, v8

    const/4 v8, 0x6

    aget-byte v13, v1, v8

    shl-int/2addr v13, v10

    and-int/2addr v11, v13

    add-int/2addr v5, v11

    const/4 v11, 0x7

    aget-byte v1, v1, v11

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    .line 224
    const/4 v1, 0x0

    :goto_4c
    iget v13, v0, Lcom/appsflyer/internal/by;->init:I

    if-ge v1, v13, :cond_7d

    .line 226
    sget-short v14, Lcom/appsflyer/internal/by;->values:S

    sub-int v15, v13, v1

    mul-int v15, v15, v14

    add-int/2addr v15, v4

    shl-int/lit8 v16, v4, 0x4

    iget v10, v0, Lcom/appsflyer/internal/by;->onAppOpenAttributionNative:I

    add-int v16, v16, v10

    xor-int v10, v15, v16

    ushr-int/lit8 v15, v4, 0x5

    iget v11, v0, Lcom/appsflyer/internal/by;->onInstallConversionFailureNative:I

    add-int/2addr v15, v11

    xor-int/2addr v10, v15

    sub-int/2addr v5, v10

    .line 229
    sub-int/2addr v13, v1

    mul-int v14, v14, v13

    add-int/2addr v14, v5

    shl-int/lit8 v10, v5, 0x4

    iget v11, v0, Lcom/appsflyer/internal/by;->getLevel:I

    add-int/2addr v10, v11

    xor-int/2addr v10, v14

    ushr-int/lit8 v11, v5, 0x5

    iget v13, v0, Lcom/appsflyer/internal/by;->onAttributionFailureNative:I

    add-int/2addr v11, v13

    xor-int/2addr v10, v11

    sub-int/2addr v4, v10

    .line 224
    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x7

    goto :goto_4c

    .line 233
    :cond_7d
    iget-object v1, v0, Lcom/appsflyer/internal/by;->valueOf:[B

    shr-int/lit8 v10, v4, 0x18

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    .line 234
    shr-int/lit8 v10, v4, 0x10

    int-to-byte v10, v10

    aput-byte v10, v1, v6

    .line 235
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v7

    .line 236
    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 237
    shr-int/lit8 v4, v5, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 238
    shr-int/lit8 v4, v5, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    .line 239
    shr-int/lit8 v4, v5, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 240
    int-to-byte v4, v5

    const/4 v5, 0x7

    aput-byte v4, v1, v5

    .line 241
    iget v1, v0, Lcom/appsflyer/internal/by;->AFVersionDeclaration:I

    if-ne v1, v2, :cond_c5

    .line 243
    nop

    .line 1251
    const/4 v1, 0x0

    :goto_aa
    const/16 v2, 0x8

    if-ge v1, v2, :cond_bd

    .line 1253
    iget-object v4, v0, Lcom/appsflyer/internal/by;->valueOf:[B

    aget-byte v5, v4, v1

    iget-object v6, v0, Lcom/appsflyer/internal/by;->AFKeystoreWrapper:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 244
    :cond_bd
    iget-object v1, v0, Lcom/appsflyer/internal/by;->AFInAppEventParameterName:[B

    iget-object v2, v0, Lcom/appsflyer/internal/by;->AFKeystoreWrapper:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_c5
    return-void
.end method

.method private values()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lcom/appsflyer/internal/by;->AFLogger$LogLevel:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_f

    .line 267
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/by;->AFLogger$LogLevel:I

    .line 270
    :cond_f
    iget v0, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    .line 273
    iget-object v0, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    iget v2, p0, Lcom/appsflyer/internal/by;->AFLogger$LogLevel:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 277
    const-string v0, "unexpected block size"

    if-ltz v2, :cond_53

    .line 284
    const/4 v2, 0x1

    .line 287
    :cond_22
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    rsub-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 291
    if-lez v3, :cond_31

    .line 297
    add-int/2addr v2, v3

    .line 300
    if-lt v2, v1, :cond_22

    .line 304
    :cond_31
    if-lt v2, v1, :cond_4d

    .line 310
    invoke-direct {p0}, Lcom/appsflyer/internal/by;->AFKeystoreWrapper()V

    .line 313
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/by;->AFLogger$LogLevel:I

    .line 316
    iput v4, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    .line 320
    if-gez v0, :cond_4a

    iget-object v0, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    :cond_4a
    iput v1, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    goto :goto_59

    .line 306
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_53
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_59
    :goto_59
    iget v0, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    return v0
.end method


# virtual methods
.method public final available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/appsflyer/internal/by;->values()I

    .line 166
    iget v0, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    iget v1, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/appsflyer/internal/by;->values()I

    .line 114
    iget v0, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    iget v1, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    if-lt v0, v1, :cond_b

    .line 116
    const/4 v0, -0x1

    return v0

    .line 120
    :cond_b
    iget-object v1, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    nop

    .line 128
    add-int v0, p2, p3

    move v1, p2

    .line 132
    :goto_4
    if-ge v1, v0, :cond_24

    .line 134
    invoke-direct {p0}, Lcom/appsflyer/internal/by;->values()I

    .line 137
    iget v2, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    iget v3, p0, Lcom/appsflyer/internal/by;->AppsFlyer2dXConversionCallback:I

    if-lt v2, v3, :cond_16

    .line 140
    if-ne v1, p2, :cond_13

    const/4 p1, -0x1

    return p1

    :cond_13
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    .line 143
    :cond_16
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/appsflyer/internal/by;->valueOf:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/by;->AFInAppEventType:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_4

    .line 146
    :cond_24
    return p3
.end method

.method public final skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    :goto_2
    cmp-long v2, v0, p1

    if-gez v2, :cond_11

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 156
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 158
    :cond_11
    return-wide v0
.end method
