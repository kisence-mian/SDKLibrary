.class public final Lcom/tencent/bugly/proguard/j;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method

.method private a(I)V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_27

    .line 44
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    shl-int/lit8 p1, v0, 0x1

    .line 45
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 47
    iput-object p1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    .line 48
    :cond_27
    return-void
.end method

.method private b(BI)V
    .registers 5

    .line 55
    const/16 v0, 0xf

    if-ge p2, v0, :cond_e

    .line 56
    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    int-to-byte p1, p1

    .line 57
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    return-void

    :cond_e
    const/16 v0, 0x100

    if-ge p2, v0, :cond_21

    .line 59
    or-int/lit16 p1, p1, 0xf0

    int-to-byte p1, p1

    .line 60
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object p1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    return-void

    .line 63
    :cond_21
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag is too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    .line 382
    const/4 p1, 0x0

    return p1
.end method

.method public final a()Ljava/nio/ByteBuffer;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(BI)V
    .registers 4

    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 76
    if-nez p1, :cond_c

    .line 77
    const/16 p1, 0xc

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    return-void

    .line 79
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 80
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method

.method public final a(II)V
    .registers 4

    .line 97
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 98
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_11

    .line 99
    int-to-short p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    return-void

    .line 101
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 102
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    return-void
.end method

.method public final a(JI)V
    .registers 6

    .line 108
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 109
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_18

    .line 110
    long-to-int p1, p1

    invoke-virtual {p0, p1, p3}, Lcom/tencent/bugly/proguard/j;->a(II)V

    return-void

    .line 112
    :cond_18
    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 113
    iget-object p3, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 115
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;I)V
    .registers 5

    .line 289
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 290
    const/16 v1, 0xa

    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 291
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/j;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 293
    const/16 p1, 0xb

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 294
    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .registers 11

    .line 333
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_e

    .line 334
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    return-void

    .line 335
    :cond_e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1d

    .line 336
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    return-void

    .line 337
    :cond_1d
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2b

    .line 338
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    return-void

    .line 339
    :cond_2b
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_39

    .line 340
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(II)V

    return-void

    .line 341
    :cond_39
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_47

    .line 342
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    return-void

    .line 343
    :cond_47
    instance-of v0, p1, Ljava/lang/Float;

    const/4 v1, 0x4

    const/4 v2, 0x6

    if-eqz v0, :cond_5f

    .line 344
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void

    .line 345
    :cond_5f
    instance-of v0, p1, Ljava/lang/Double;

    const/4 v3, 0x5

    const/16 v4, 0xa

    if-eqz v0, :cond_78

    .line 346
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v3, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void

    .line 347
    :cond_78
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 348
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    return-void

    .line 349
    :cond_82
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8c

    .line 350
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    return-void

    .line 351
    :cond_8c
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_96

    .line 352
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    return-void

    .line 353
    :cond_96
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    const/4 v5, 0x0

    if-eqz v0, :cond_b0

    .line 354
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/j;)V

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/16 p1, 0xb

    invoke-direct {p0, p1, v5}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    return-void

    .line 355
    :cond_b0
    instance-of v0, p1, [B

    if-eqz v0, :cond_ba

    .line 356
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a([BI)V

    return-void

    .line 357
    :cond_ba
    instance-of v0, p1, [Z

    const/16 v6, 0x9

    const/16 v7, 0x8

    if-eqz v0, :cond_dc

    .line 358
    check-cast p1, [Z

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_d0
    if-ge v0, p2, :cond_db

    aget-boolean v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1, v5}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    :cond_db
    return-void

    .line 359
    :cond_dc
    instance-of v0, p1, [S

    if-eqz v0, :cond_f9

    .line 360
    check-cast p1, [S

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_ee
    if-ge v0, p2, :cond_f8

    aget-short v1, p1, v0

    invoke-virtual {p0, v1, v5}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    :cond_f8
    return-void

    .line 361
    :cond_f9
    instance-of v0, p1, [I

    if-eqz v0, :cond_116

    .line 362
    check-cast p1, [I

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_10b
    if-ge v0, p2, :cond_115

    aget v1, p1, v0

    invoke-virtual {p0, v1, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10b

    :cond_115
    return-void

    .line 363
    :cond_116
    instance-of v0, p1, [J

    if-eqz v0, :cond_133

    .line 364
    check-cast p1, [J

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_128
    if-ge v0, p2, :cond_132

    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2, v5}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    :cond_132
    return-void

    .line 365
    :cond_133
    instance-of v0, p1, [F

    if-eqz v0, :cond_158

    .line 366
    check-cast p1, [F

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_145
    if-ge v0, p2, :cond_157

    aget v3, p1, v0

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v1, v5}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_145

    :cond_157
    return-void

    .line 367
    :cond_158
    instance-of v0, p1, [D

    if-eqz v0, :cond_17d

    .line 368
    check-cast p1, [D

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_16a
    if-ge v0, p2, :cond_17c

    aget-wide v1, p1, v0

    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v3, v5}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16a

    :cond_17c
    return-void

    .line 369
    :cond_17d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 370
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length p2, p1

    invoke-virtual {p0, p2, v5}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length p2, p1

    move v0, v5

    :goto_195
    if-ge v0, p2, :cond_19f

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, v5}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_195

    :cond_19f
    return-void

    .line 371
    :cond_1a0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1aa

    .line 372
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    return-void

    .line 374
    :cond_1aa
    new-instance p2, Lcom/tencent/bugly/proguard/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "write object error: unsupport type. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    .line 173
    goto :goto_c

    .line 170
    :catch_7
    move-exception v0

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 174
    :goto_c
    array-length v0, p1

    add-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 175
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_27

    .line 176
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 177
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    .line 180
    :cond_27
    const/4 v0, 0x6

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 181
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    return-void
.end method

.method public final a(Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 278
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 279
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 280
    const/4 p2, 0x0

    if-nez p1, :cond_f

    move v0, p2

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_13
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 281
    if-eqz p1, :cond_2a

    .line 282
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 283
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    goto :goto_1c

    .line 285
    :cond_2a
    return-void
.end method

.method public final a(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 188
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 189
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 190
    const/4 p2, 0x0

    if-nez p1, :cond_d

    move v0, p2

    goto :goto_11

    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    :goto_11
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 191
    if-eqz p1, :cond_3a

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    goto :goto_1e

    .line 197
    :cond_3a
    return-void
.end method

.method public final a(SI)V
    .registers 4

    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 87
    const/16 v0, -0x80

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_11

    .line 88
    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    return-void

    .line 90
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 91
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 93
    return-void
.end method

.method public final a(ZI)V
    .registers 3

    .line 69
    int-to-byte p1, p1

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 71
    return-void
.end method

.method public final a([BI)V
    .registers 4

    .line 210
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 211
    const/16 v0, 0xd

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 212
    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 213
    array-length v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 214
    iget-object p2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    return-void
.end method

.method public final b()[B
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-object v0
.end method
