.class public Lcom/JoyFramework/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Ljava/util/Random;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:Z

.field private j:I

.field private l:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/c;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/d/c;->i:Z

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    .line 84
    return-void
.end method

.method private static a([BII)J
    .registers 10

    .prologue
    const/16 v6, 0x8

    .line 100
    const-wide/16 v2, 0x0

    .line 102
    if-le p2, v6, :cond_14

    .line 103
    add-int/lit8 v0, p1, 0x8

    .line 106
    :goto_8
    if-ge p1, v0, :cond_17

    .line 107
    shl-long/2addr v2, v6

    .line 108
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 106
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 105
    :cond_14
    add-int v0, p1, p2

    goto :goto_8

    .line 110
    :cond_17
    const-wide v0, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 438
    iput v6, p0, Lcom/JoyFramework/d/c;->f:I

    :goto_5
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v0, v7, :cond_38

    .line 439
    iget-boolean v0, p0, Lcom/JoyFramework/d/c;->i:Z

    if-eqz v0, :cond_24

    .line 440
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/JoyFramework/d/c;->b:[B

    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 438
    :goto_1d
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    goto :goto_5

    .line 442
    :cond_24
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/JoyFramework/d/c;->c:[B

    iget v4, p0, Lcom/JoyFramework/d/c;->e:I

    iget v5, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v4, v5

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1d

    .line 445
    :cond_38
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    invoke-direct {p0, v0}, Lcom/JoyFramework/d/c;->a([B)[B

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/JoyFramework/d/c;->c:[B

    iget v2, p0, Lcom/JoyFramework/d/c;->d:I

    invoke-static {v0, v6, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    iput v6, p0, Lcom/JoyFramework/d/c;->f:I

    :goto_47
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v0, v7, :cond_65

    .line 451
    iget-object v0, p0, Lcom/JoyFramework/d/c;->c:[B

    iget v1, p0, Lcom/JoyFramework/d/c;->d:I

    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/JoyFramework/d/c;->b:[B

    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 450
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    goto :goto_47

    .line 452
    :cond_65
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    iget-object v1, p0, Lcom/JoyFramework/d/c;->b:[B

    invoke-static {v0, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    iget v0, p0, Lcom/JoyFramework/d/c;->d:I

    iput v0, p0, Lcom/JoyFramework/d/c;->e:I

    .line 456
    iget v0, p0, Lcom/JoyFramework/d/c;->d:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/JoyFramework/d/c;->d:I

    .line 457
    iput v6, p0, Lcom/JoyFramework/d/c;->f:I

    .line 458
    iput-boolean v6, p0, Lcom/JoyFramework/d/c;->i:Z

    .line 459
    return-void
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 416
    iget-object v0, p0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    iget-object v0, p0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 419
    return-void
.end method

.method private a([B)[B
    .registers 26

    .prologue
    .line 331
    const/16 v8, 0x10

    .line 335
    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v6

    .line 336
    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v4

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v10

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v12

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v14

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v16

    .line 343
    const-wide/16 v2, 0x0

    .line 344
    const-wide/32 v18, -0x61c88647

    .line 345
    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 348
    :goto_48
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_89

    .line 349
    add-long v2, v2, v18

    .line 350
    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    .line 351
    const/4 v8, 0x4

    shl-long v20, v4, v8

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v4, v8

    add-long v22, v22, v12

    xor-long v20, v20, v22

    add-long v6, v6, v20

    .line 352
    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    .line 353
    const/4 v8, 0x4

    shl-long v20, v6, v8

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v6, v8

    add-long v22, v22, v16

    xor-long v20, v20, v22

    add-long v4, v4, v20

    .line 354
    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    move v8, v9

    goto :goto_48

    .line 358
    :cond_89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 359
    long-to-int v2, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/c;->a(I)V

    .line 360
    long-to-int v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/c;->a(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private a([BI)[B
    .registers 27

    .prologue
    .line 375
    const/16 v8, 0x10

    .line 379
    const/4 v2, 0x4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v6

    .line 380
    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v4

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/4 v3, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v10

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/4 v3, 0x4

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v12

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/16 v3, 0x8

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v14

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->h:[B

    const/16 v3, 0xc

    const/4 v9, 0x4

    invoke-static {v2, v3, v9}, Lcom/JoyFramework/d/c;->a([BII)J

    move-result-wide v16

    .line 388
    const-wide/32 v2, -0x1c886470

    .line 389
    const-wide v18, 0xffffffffL

    and-long v2, v2, v18

    .line 390
    const-wide/32 v18, -0x61c88647

    .line 391
    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    .line 394
    :goto_52
    add-int/lit8 v9, v8, -0x1

    if-lez v8, :cond_93

    .line 395
    const/4 v8, 0x4

    shl-long v20, v6, v8

    add-long v20, v20, v14

    add-long v22, v6, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v6, v8

    add-long v22, v22, v16

    xor-long v20, v20, v22

    sub-long v4, v4, v20

    .line 396
    const-wide v20, 0xffffffffL

    and-long v4, v4, v20

    .line 397
    const/4 v8, 0x4

    shl-long v20, v4, v8

    add-long v20, v20, v10

    add-long v22, v4, v2

    xor-long v20, v20, v22

    const/4 v8, 0x5

    ushr-long v22, v4, v8

    add-long v22, v22, v12

    xor-long v20, v20, v22

    sub-long v6, v6, v20

    .line 398
    const-wide v20, 0xffffffffL

    and-long v6, v6, v20

    .line 399
    sub-long v2, v2, v18

    .line 400
    const-wide v20, 0xffffffffL

    and-long v2, v2, v20

    move v8, v9

    goto :goto_52

    .line 403
    :cond_93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 404
    long-to-int v2, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/c;->a(I)V

    .line 405
    long-to-int v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/JoyFramework/d/c;->a(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/JoyFramework/d/c;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private b()I
    .registers 2

    .prologue
    .line 500
    sget-object v0, Lcom/JoyFramework/d/c;->k:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private b([BII)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    iput v1, p0, Lcom/JoyFramework/d/c;->f:I

    :goto_4
    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2b

    .line 475
    iget v2, p0, Lcom/JoyFramework/d/c;->j:I

    iget v3, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v2, v3

    if-lt v2, p3, :cond_12

    .line 491
    :goto_11
    return v0

    .line 477
    :cond_12
    iget-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    iget v3, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/JoyFramework/d/c;->d:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 474
    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/JoyFramework/d/c;->f:I

    goto :goto_4

    .line 481
    :cond_2b
    iget-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    invoke-direct {p0, v2}, Lcom/JoyFramework/d/c;->b([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    .line 482
    iget-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    if-nez v2, :cond_39

    move v0, v1

    .line 483
    goto :goto_11

    .line 488
    :cond_39
    iget v2, p0, Lcom/JoyFramework/d/c;->j:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/JoyFramework/d/c;->j:I

    .line 489
    iget v2, p0, Lcom/JoyFramework/d/c;->d:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/JoyFramework/d/c;->d:I

    .line 490
    iput v1, p0, Lcom/JoyFramework/d/c;->f:I

    goto :goto_11
.end method

.method private b([B)[B
    .registers 3

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/d/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([BII[B)[B
    .registers 16

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    .line 128
    if-nez p4, :cond_9

    move-object v0, v3

    .line 213
    :goto_8
    return-object v0

    .line 131
    :cond_9
    iput v2, p0, Lcom/JoyFramework/d/c;->e:I

    iput v2, p0, Lcom/JoyFramework/d/c;->d:I

    .line 132
    iput-object p4, p0, Lcom/JoyFramework/d/c;->h:[B

    .line 134
    add-int/lit8 v0, p2, 0x8

    new-array v1, v0, [B

    .line 137
    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_1b

    const/16 v0, 0x10

    if-ge p3, v0, :cond_1d

    :cond_1b
    move-object v0, v3

    .line 138
    goto :goto_8

    .line 140
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/JoyFramework/d/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/c;->b:[B

    .line 141
    iget-object v0, p0, Lcom/JoyFramework/d/c;->b:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    .line 143
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    sub-int v0, p3, v0

    add-int/lit8 v4, v0, -0xa

    .line 145
    if-gez v4, :cond_35

    move-object v0, v3

    .line 146
    goto :goto_8

    :cond_35
    move v0, p2

    .line 150
    :goto_36
    array-length v5, v1

    if-ge v0, v5, :cond_3e

    .line 151
    aput-byte v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 153
    :cond_3e
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/JoyFramework/d/c;->c:[B

    .line 155
    iput v2, p0, Lcom/JoyFramework/d/c;->e:I

    .line 157
    iput v8, p0, Lcom/JoyFramework/d/c;->d:I

    .line 159
    iput v8, p0, Lcom/JoyFramework/d/c;->j:I

    .line 161
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    .line 167
    iput v9, p0, Lcom/JoyFramework/d/c;->g:I

    move-object v0, v1

    .line 168
    :cond_51
    :goto_51
    iget v1, p0, Lcom/JoyFramework/d/c;->g:I

    const/4 v5, 0x2

    if-gt v1, v5, :cond_72

    .line 169
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v1, v8, :cond_66

    .line 170
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/JoyFramework/d/c;->f:I

    .line 171
    iget v1, p0, Lcom/JoyFramework/d/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/JoyFramework/d/c;->g:I

    .line 173
    :cond_66
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v1, v8, :cond_51

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/d/c;->b([BII)Z

    move-result v0

    if-nez v0, :cond_f1

    move-object v0, v3

    .line 176
    goto :goto_8

    :cond_72
    move v1, v4

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 183
    :cond_76
    :goto_76
    if-eqz v1, :cond_ad

    .line 184
    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v4, v8, :cond_9a

    .line 185
    iget-object v4, p0, Lcom/JoyFramework/d/c;->c:[B

    iget v5, p0, Lcom/JoyFramework/d/c;->e:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcom/JoyFramework/d/c;->b:[B

    iget v7, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 188
    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/JoyFramework/d/c;->f:I

    .line 190
    :cond_9a
    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v4, v8, :cond_76

    .line 192
    iget v2, p0, Lcom/JoyFramework/d/c;->d:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/JoyFramework/d/c;->e:I

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/d/c;->b([BII)Z

    move-result v2

    if-nez v2, :cond_ef

    move-object v0, v3

    .line 194
    goto/16 :goto_8

    .line 200
    :cond_ad
    iput v9, p0, Lcom/JoyFramework/d/c;->g:I

    move-object v0, v2

    :goto_b0
    iget v1, p0, Lcom/JoyFramework/d/c;->g:I

    if-ge v1, v8, :cond_eb

    .line 201
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v1, v8, :cond_d2

    .line 202
    iget v1, p0, Lcom/JoyFramework/d/c;->e:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v1, v2

    aget-byte v1, v0, v1

    iget-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    iget v4, p0, Lcom/JoyFramework/d/c;->f:I

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    if-eqz v1, :cond_cc

    move-object v0, v3

    .line 203
    goto/16 :goto_8

    .line 204
    :cond_cc
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/JoyFramework/d/c;->f:I

    .line 206
    :cond_d2
    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v1, v8, :cond_e4

    .line 208
    iget v0, p0, Lcom/JoyFramework/d/c;->d:I

    iput v0, p0, Lcom/JoyFramework/d/c;->e:I

    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/d/c;->b([BII)Z

    move-result v0

    if-nez v0, :cond_e3

    move-object v0, v3

    .line 210
    goto/16 :goto_8

    :cond_e3
    move-object v0, p1

    .line 200
    :cond_e4
    iget v1, p0, Lcom/JoyFramework/d/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/JoyFramework/d/c;->g:I

    goto :goto_b0

    .line 213
    :cond_eb
    iget-object v0, p0, Lcom/JoyFramework/d/c;->c:[B

    goto/16 :goto_8

    :cond_ef
    move-object v2, p1

    goto :goto_76

    :cond_f1
    move-object v0, p1

    goto/16 :goto_51
.end method

.method public a([B[B)[B
    .registers 5

    .prologue
    .line 226
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/JoyFramework/d/c;->a([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([BII[B)[B
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x8

    .line 244
    if-nez p4, :cond_7

    .line 306
    :goto_6
    return-object p1

    .line 247
    :cond_7
    new-array v0, v7, [B

    iput-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    .line 248
    new-array v0, v7, [B

    iput-object v0, p0, Lcom/JoyFramework/d/c;->b:[B

    .line 249
    iput v1, p0, Lcom/JoyFramework/d/c;->f:I

    .line 250
    iput v4, p0, Lcom/JoyFramework/d/c;->g:I

    .line 251
    iput v4, p0, Lcom/JoyFramework/d/c;->e:I

    iput v4, p0, Lcom/JoyFramework/d/c;->d:I

    .line 252
    iput-object p4, p0, Lcom/JoyFramework/d/c;->h:[B

    .line 253
    iput-boolean v1, p0, Lcom/JoyFramework/d/c;->i:Z

    .line 256
    add-int/lit8 v0, p3, 0xa

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    .line 257
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-eqz v0, :cond_2b

    .line 258
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    rsub-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    .line 260
    :cond_2b
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/JoyFramework/d/c;->c:[B

    .line 263
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    invoke-direct {p0}, Lcom/JoyFramework/d/c;->b()I

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    iget v3, p0, Lcom/JoyFramework/d/c;->f:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v0, v1

    .line 266
    :goto_43
    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    if-gt v0, v2, :cond_55

    .line 267
    iget-object v2, p0, Lcom/JoyFramework/d/c;->a:[B

    invoke-direct {p0}, Lcom/JoyFramework/d/c;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 268
    :cond_55
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    move v0, v4

    .line 270
    :goto_5c
    if-ge v0, v7, :cond_65

    .line 271
    iget-object v2, p0, Lcom/JoyFramework/d/c;->b:[B

    aput-byte v4, v2, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 274
    :cond_65
    iput v1, p0, Lcom/JoyFramework/d/c;->g:I

    .line 275
    :cond_67
    :goto_67
    iget v0, p0, Lcom/JoyFramework/d/c;->g:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_8f

    .line 276
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v0, v7, :cond_87

    .line 277
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    iget v2, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/JoyFramework/d/c;->f:I

    invoke-direct {p0}, Lcom/JoyFramework/d/c;->b()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 278
    iget v0, p0, Lcom/JoyFramework/d/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->g:I

    .line 280
    :cond_87
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v0, v7, :cond_67

    .line 281
    invoke-direct {p0}, Lcom/JoyFramework/d/c;->a()V

    goto :goto_67

    :cond_8f
    move v2, p2

    move v3, p3

    .line 286
    :goto_91
    if-lez v3, :cond_b1

    .line 287
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v0, v7, :cond_db

    .line 288
    iget-object v5, p0, Lcom/JoyFramework/d/c;->a:[B

    iget v6, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v5, v6

    .line 289
    add-int/lit8 v2, v3, -0x1

    .line 291
    :goto_a7
    iget v3, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v3, v7, :cond_d8

    .line 292
    invoke-direct {p0}, Lcom/JoyFramework/d/c;->a()V

    move v3, v2

    move v2, v0

    goto :goto_91

    .line 296
    :cond_b1
    iput v1, p0, Lcom/JoyFramework/d/c;->g:I

    .line 297
    :cond_b3
    :goto_b3
    iget v0, p0, Lcom/JoyFramework/d/c;->g:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_d4

    .line 298
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ge v0, v7, :cond_cc

    .line 299
    iget-object v0, p0, Lcom/JoyFramework/d/c;->a:[B

    iget v1, p0, Lcom/JoyFramework/d/c;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/JoyFramework/d/c;->f:I

    aput-byte v4, v0, v1

    .line 300
    iget v0, p0, Lcom/JoyFramework/d/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/JoyFramework/d/c;->g:I

    .line 302
    :cond_cc
    iget v0, p0, Lcom/JoyFramework/d/c;->f:I

    if-ne v0, v7, :cond_b3

    .line 303
    invoke-direct {p0}, Lcom/JoyFramework/d/c;->a()V

    goto :goto_b3

    .line 306
    :cond_d4
    iget-object p1, p0, Lcom/JoyFramework/d/c;->c:[B

    goto/16 :goto_6

    :cond_d8
    move v3, v2

    move v2, v0

    goto :goto_91

    :cond_db
    move v0, v2

    move v2, v3

    goto :goto_a7
.end method

.method public b([B[B)[B
    .registers 5

    .prologue
    .line 319
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/JoyFramework/d/c;->b([BII[B)[B

    move-result-object v0

    return-object v0
.end method
