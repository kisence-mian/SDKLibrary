.class public Lcom/tapjoy/internal/iw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/tapjoy/internal/iw;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:Lcom/tapjoy/internal/iw;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/tapjoy/internal/iw;->a:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3068
    new-instance v1, Lcom/tapjoy/internal/iw;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/iw;-><init>([B)V

    .line 53
    sput-object v1, Lcom/tapjoy/internal/iw;->b:Lcom/tapjoy/internal/iw;

    return-void

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/tapjoy/internal/iw;->c:[B

    .line 61
    return-void
.end method


# virtual methods
.method public a(I)B
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/tapjoy/internal/iw;
    .registers 6

    .line 263
    if-ltz p1, :cond_43

    .line 264
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v1, v0

    if-gt p2, v1, :cond_25

    .line 268
    sub-int v1, p2, p1

    .line 269
    if-ltz v1, :cond_1d

    .line 271
    if-nez p1, :cond_11

    array-length v2, v0

    if-ne p2, v2, :cond_11

    .line 272
    return-object p0

    .line 275
    :cond_11
    new-array p2, v1, [B

    .line 276
    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    new-instance p1, Lcom/tapjoy/internal/iw;

    invoke-direct {p1, p2}, Lcom/tapjoy/internal/iw;-><init>([B)V

    return-object p1

    .line 269
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > length("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/lang/String;
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->e:Ljava/lang/String;

    .line 96
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/iw;->c:[B

    sget-object v2, Lcom/tapjoy/internal/jg;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/tapjoy/internal/iw;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/tapjoy/internal/it;)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/tapjoy/internal/it;->a([BII)Lcom/tapjoy/internal/it;

    .line 320
    return-void
.end method

.method public a(I[BII)Z
    .registers 7

    .line 337
    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_16

    if-ltz p3, :cond_16

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_16

    .line 339
    invoke-static {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/jg;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .registers 10

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 152
    nop

    .line 153
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v2, :cond_26

    aget-byte v5, v0, v3

    .line 154
    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/tapjoy/internal/iw;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    .line 155
    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 157
    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 11

    .line 47
    check-cast p1, Lcom/tapjoy/internal/iw;

    .line 2415
    invoke-virtual {p0}, Lcom/tapjoy/internal/iw;->c()I

    move-result v0

    .line 2416
    invoke-virtual {p1}, Lcom/tapjoy/internal/iw;->c()I

    move-result v1

    .line 2417
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_29

    .line 2418
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/iw;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 2419
    invoke-virtual {p1, v4}, Lcom/tapjoy/internal/iw;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 2420
    if-eq v7, v8, :cond_26

    .line 2421
    if-ge v7, v8, :cond_25

    return v5

    :cond_25
    return v6

    .line 2417
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2423
    :cond_29
    if-ne v0, v1, :cond_2c

    return v3

    .line 2424
    :cond_2c
    if-ge v0, v1, :cond_2f

    return v5

    .line 47
    :cond_2f
    return v6
.end method

.method public d()[B
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 403
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 404
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/iw;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/iw;

    .line 405
    invoke-virtual {v1}, Lcom/tapjoy/internal/iw;->c()I

    move-result v1

    iget-object v3, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v4, v3

    if-ne v1, v4, :cond_20

    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/iw;

    array-length v4, v3

    .line 406
    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/tapjoy/internal/iw;->a(I[BII)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public hashCode()I
    .registers 2

    .line 410
    iget v0, p0, Lcom/tapjoy/internal/iw;->d:I

    .line 411
    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/iw;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 432
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v0, v0

    if-nez v0, :cond_8

    .line 433
    const-string v0, "[size=0]"

    return-object v0

    .line 436
    :cond_8
    invoke-virtual {p0}, Lcom/tapjoy/internal/iw;->a()Ljava/lang/String;

    move-result-object v0

    .line 437
    nop

    .line 1455
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    const/4 v5, -0x1

    const/16 v6, 0x40

    if-ge v3, v1, :cond_3d

    .line 1456
    if-ne v4, v6, :cond_1c

    .line 1457
    goto :goto_41

    .line 1459
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 1460
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2e

    const/16 v8, 0xd

    if-ne v7, v8, :cond_33

    :cond_2e
    const v8, 0xfffd

    if-ne v7, v8, :cond_35

    .line 1462
    :cond_33
    const/4 v3, -0x1

    goto :goto_41

    .line 1464
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 1455
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_14

    .line 1466
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 437
    :goto_41
    nop

    .line 439
    const-string v1, "\u2026]"

    const-string v4, "[size="

    const-string v7, "]"

    if-ne v3, v5, :cond_8e

    .line 440
    iget-object v0, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v0, v0

    if-gt v0, v6, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/tapjoy/internal/iw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v2, v6}, Lcom/tapjoy/internal/iw;->a(II)Lcom/tapjoy/internal/iw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/iw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :cond_8e
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 446
    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 447
    const-string v5, "\n"

    const-string v6, "\\n"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 448
    const-string v5, "\r"

    const-string v6, "\\r"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/iw;->c:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " text="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_ca
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_ca
.end method
