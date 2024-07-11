.class final Lcom/bytedance/sdk/a/b/a/e/d$b;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[Lcom/bytedance/sdk/a/b/a/e/c;

.field d:I

.field e:I

.field f:I

.field private final g:Lcom/bytedance/sdk/a/a/c;

.field private final h:Z

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(IZLcom/bytedance/sdk/a/a/c;)V
    .registers 5

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    .line 393
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/a/e/c;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 395
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 397
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 404
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->a:I

    .line 405
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    .line 406
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->h:Z

    .line 407
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    .line 408
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/a/c;)V
    .registers 4

    .line 400
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/d$b;-><init>(IZLcom/bytedance/sdk/a/a/c;)V

    .line 401
    return-void
.end method

.method private a()V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 414
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 415
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/c;)V
    .registers 8

    .line 439
    iget v0, p1, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 442
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-le v0, v1, :cond_a

    .line 443
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a()V

    .line 444
    return-void

    .line 448
    :cond_a
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 449
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b(I)I

    .line 451
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    .line 452
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/bytedance/sdk/a/b/a/e/c;

    .line 453
    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 455
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 457
    :cond_2e
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 458
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p1, v2, v1

    .line 459
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 460
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 461
    return-void
.end method

.method private b(I)I
    .registers 6

    .line 421
    nop

    .line 422
    const/4 v0, 0x0

    if-lez p1, :cond_4a

    .line 424
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    if-lt v1, v2, :cond_2c

    if-lez p1, :cond_2c

    .line 425
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 426
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 427
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 428
    add-int/lit8 v0, v0, 0x1

    .line 424
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 430
    :cond_2c
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 433
    iget p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 435
    :cond_4a
    return v0
.end method

.method private b()V
    .registers 3

    .line 588
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    if-ge v0, v1, :cond_10

    .line 589
    if-nez v0, :cond_c

    .line 590
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a()V

    goto :goto_10

    .line 592
    :cond_c
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b(I)I

    .line 595
    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method a(I)V
    .registers 3

    .line 572
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->a:I

    .line 573
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 576
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-ne v0, p1, :cond_d

    return-void

    .line 578
    :cond_d
    if-ge p1, v0, :cond_17

    .line 579
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    .line 582
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    .line 583
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    .line 584
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b()V

    .line 585
    return-void
.end method

.method a(III)V
    .registers 5

    .line 540
    if-ge p1, p2, :cond_9

    .line 541
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 542
    return-void

    .line 546
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 547
    sub-int/2addr p1, p2

    .line 550
    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    .line 551
    and-int/lit8 p3, p1, 0x7f

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 553
    ushr-int/lit8 p1, p1, 0x7

    .line 554
    goto :goto_10

    .line 555
    :cond_1f
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 556
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/a/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->h:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/k;->a(Lcom/bytedance/sdk/a/a/f;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 560
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 561
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/k;->a(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/d;)V

    .line 562
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 564
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;

    .line 565
    goto :goto_40

    .line 566
    :cond_33
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 567
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;

    .line 569
    :goto_40
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 469
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    .line 471
    invoke-virtual {p0, v0, v4, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 473
    :cond_12
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    .line 474
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    .line 475
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 478
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_23
    if-ge v2, v0, :cond_ef

    .line 479
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/a/b/a/e/c;

    .line 480
    iget-object v4, v3, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/a/f;->f()Lcom/bytedance/sdk/a/a/f;

    move-result-object v4

    .line 481
    iget-object v5, v3, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 482
    nop

    .line 483
    nop

    .line 485
    sget-object v6, Lcom/bytedance/sdk/a/b/a/e/d;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 486
    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_71

    .line 487
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    .line 488
    if-le v6, v8, :cond_6e

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6e

    .line 493
    sget-object v9, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v9, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 494
    move v9, v6

    goto :goto_73

    .line 495
    :cond_5c
    sget-object v9, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v9, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 496
    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_73

    .line 501
    :cond_6e
    move v9, v6

    move v6, v7

    goto :goto_73

    .line 486
    :cond_71
    move v6, v7

    move v9, v6

    .line 501
    :goto_73
    if-ne v6, v7, :cond_aa

    .line 502
    iget v10, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v8, v8

    :goto_7b
    if-ge v10, v8, :cond_aa

    .line 503
    iget-object v11, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v11, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a7

    .line 504
    iget-object v11, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v11, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 505
    iget v6, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    sub-int/2addr v10, v6

    sget-object v6, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v6, v6

    add-int/2addr v6, v10

    .line 506
    goto :goto_aa

    .line 507
    :cond_9d
    if-ne v9, v7, :cond_a7

    .line 508
    iget v9, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    sub-int v9, v10, v9

    sget-object v11, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v11, v11

    add-int/2addr v9, v11

    .line 502
    :cond_a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    .line 514
    :cond_aa
    :goto_aa
    if-eq v6, v7, :cond_b4

    .line 516
    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v6, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    goto :goto_eb

    .line 517
    :cond_b4
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c7

    .line 519
    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 520
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 521
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 522
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/b/a/e/c;)V

    goto :goto_eb

    .line 523
    :cond_c7
    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/c;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/a/a/f;->a(Lcom/bytedance/sdk/a/a/f;)Z

    move-result v7

    if-eqz v7, :cond_e0

    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e0

    .line 526
    const/16 v3, 0xf

    invoke-virtual {p0, v9, v3, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 527
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    goto :goto_eb

    .line 530
    :cond_e0
    const/16 v4, 0x3f

    invoke-virtual {p0, v9, v4, v6}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 531
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 532
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/b/a/e/c;)V

    .line 478
    :goto_eb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    .line 535
    :cond_ef
    return-void
.end method
