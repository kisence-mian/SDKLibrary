.class public final Lcom/appsflyer/internal/bx;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private final AFInAppEventParameterName:I

.field private AFInAppEventType:[B

.field private AFKeystoreWrapper:S

.field private AFVersionDeclaration:I

.field private getLevel:I

.field private init:I

.field private valueOf:[J

.field private values:[J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IISII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const p1, 0x7fffffff

    iput p1, p0, Lcom/appsflyer/internal/bx;->init:I

    .line 58
    const/4 p1, 0x4

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    .line 60
    new-array v0, p4, [B

    iput-object v0, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    .line 61
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/appsflyer/internal/bx;->values:[J

    .line 62
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/appsflyer/internal/bx;->valueOf:[J

    .line 64
    iput p4, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    .line 65
    iput p4, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

    .line 67
    xor-int p1, p2, p6

    xor-int p2, p4, p6

    invoke-static {p1, p2}, Lcom/appsflyer/internal/ca;->values(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/bx;->values:[J

    .line 69
    xor-int p1, p3, p6

    xor-int p2, p5, p6

    invoke-static {p1, p2}, Lcom/appsflyer/internal/ca;->values(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/bx;->valueOf:[J

    .line 71
    return-void
.end method

.method private valueOf()V
    .registers 13

    .line 154
    iget-object v0, p0, Lcom/appsflyer/internal/bx;->values:[J

    iget-object v1, p0, Lcom/appsflyer/internal/bx;->valueOf:[J

    iget-short v2, p0, Lcom/appsflyer/internal/bx;->AFKeystoreWrapper:S

    .line 1092
    rem-int/lit8 v3, v2, 0x4

    aget-wide v3, v0, v3

    const-wide/32 v5, 0x7ffffdcd

    mul-long v3, v3, v5

    add-int/lit8 v7, v2, 0x2

    rem-int/lit8 v7, v7, 0x4

    aget-wide v8, v1, v7

    add-long/2addr v3, v8

    const-wide/32 v8, 0x7fffffff

    rem-long/2addr v3, v8

    .line 1095
    add-int/lit8 v2, v2, 0x3

    rem-int/lit8 v2, v2, 0x4

    aget-wide v10, v0, v2

    mul-long v10, v10, v5

    aget-wide v5, v1, v7

    add-long/2addr v10, v5

    div-long/2addr v10, v8

    aput-wide v10, v1, v2

    .line 1097
    aput-wide v3, v0, v2

    .line 155
    const/4 v0, 0x0

    :goto_2b
    iget v1, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    if-ge v0, v1, :cond_49

    .line 157
    iget-object v1, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/appsflyer/internal/bx;->values:[J

    iget-short v5, p0, Lcom/appsflyer/internal/bx;->AFKeystoreWrapper:S

    aget-wide v5, v4, v5

    shl-int/lit8 v4, v0, 0x3

    shr-long v4, v5, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 159
    :cond_49
    iget-short v0, p0, Lcom/appsflyer/internal/bx;->AFKeystoreWrapper:S

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/appsflyer/internal/bx;->AFKeystoreWrapper:S

    .line 160
    return-void
.end method

.method private values()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/appsflyer/internal/bx;->init:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_f

    .line 172
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/bx;->init:I

    .line 175
    :cond_f
    iget v0, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    iget v1, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    if-ne v0, v1, :cond_64

    .line 178
    iget-object v0, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    iget v1, p0, Lcom/appsflyer/internal/bx;->init:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 182
    const-string v0, "unexpected block size"

    if-ltz v1, :cond_5e

    .line 189
    const/4 v1, 0x1

    .line 192
    :cond_22
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    iget v5, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 196
    if-lez v2, :cond_34

    .line 202
    add-int/2addr v1, v2

    .line 205
    iget v2, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    if-lt v1, v2, :cond_22

    .line 209
    :cond_34
    iget v2, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    if-lt v1, v2, :cond_58

    .line 215
    invoke-direct {p0}, Lcom/appsflyer/internal/bx;->valueOf()V

    .line 218
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/bx;->init:I

    .line 221
    iput v3, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    .line 225
    if-gez v0, :cond_53

    iget v0, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    iget-object v1, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_55

    :cond_53
    iget v0, p0, Lcom/appsflyer/internal/bx;->AFInAppEventParameterName:I

    :goto_55
    iput v0, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

    goto :goto_64

    .line 211
    :cond_58
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_5e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_64
    :goto_64
    iget v0, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

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

    .line 135
    invoke-direct {p0}, Lcom/appsflyer/internal/bx;->values()I

    .line 136
    iget v0, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

    iget v1, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .registers 2

    .line 143
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

    .line 81
    invoke-direct {p0}, Lcom/appsflyer/internal/bx;->values()I

    .line 84
    iget v0, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    iget v1, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

    if-lt v0, v1, :cond_b

    .line 86
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_b
    iget-object v1, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/bx;->getLevel:I

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

    .line 97
    nop

    .line 98
    add-int v0, p2, p3

    move v1, p2

    .line 102
    :goto_4
    if-ge v1, v0, :cond_24

    .line 104
    invoke-direct {p0}, Lcom/appsflyer/internal/bx;->values()I

    .line 107
    iget v2, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    iget v3, p0, Lcom/appsflyer/internal/bx;->AFVersionDeclaration:I

    if-lt v2, v3, :cond_16

    .line 110
    if-ne v1, p2, :cond_13

    const/4 p1, -0x1

    return p1

    :cond_13
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    .line 113
    :cond_16
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/appsflyer/internal/bx;->AFInAppEventType:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/bx;->getLevel:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_4

    .line 116
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

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    :goto_2
    cmp-long v2, v0, p1

    if-gez v2, :cond_11

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 126
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 128
    :cond_11
    return-wide v0
.end method
