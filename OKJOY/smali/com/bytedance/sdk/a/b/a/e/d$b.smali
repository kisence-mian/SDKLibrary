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
    .registers 6

    .prologue
    const/4 v1, 0x0

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
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 396
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 397
    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

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

    .prologue
    .line 400
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/d$b;-><init>(IZLcom/bytedance/sdk/a/a/c;)V

    .line 401
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

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
    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 414
    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 415
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/c;)V
    .registers 8

    .prologue
    .line 439
    iget v0, p1, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    .line 442
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-le v0, v1, :cond_a

    .line 443
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a()V

    .line 461
    :goto_9
    return-void

    .line 448
    :cond_a
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    sub-int/2addr v1, v2

    .line 449
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b(I)I

    .line 451
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_38

    .line 452
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/bytedance/sdk/a/b/a/e/c;

    .line 453
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 455
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    .line 457
    :cond_38
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 458
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aput-object p1, v2, v1

    .line 459
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 460
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    goto :goto_9
.end method

.method private b(I)I
    .registers 8

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 422
    if-lez p1, :cond_51

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 425
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr p1, v2

    .line 426
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/bytedance/sdk/a/b/a/e/c;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    .line 427
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 424
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 430
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v4, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->e:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 433
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    .line 435
    :cond_51
    return v1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 588
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    if-ge v0, v1, :cond_d

    .line 589
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-nez v0, :cond_e

    .line 590
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a()V

    .line 595
    :cond_d
    :goto_d
    return-void

    .line 592
    :cond_e
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->f:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b(I)I

    goto :goto_d
.end method


# virtual methods
.method a(I)V
    .registers 4

    .prologue
    .line 572
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->a:I

    .line 573
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 576
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-ne v1, v0, :cond_d

    .line 585
    :goto_c
    return-void

    .line 578
    :cond_d
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-ge v0, v1, :cond_19

    .line 579
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    .line 582
    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    .line 583
    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    .line 584
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->b()V

    goto :goto_c
.end method

.method a(III)V
    .registers 7

    .prologue
    .line 540
    if-ge p1, p2, :cond_a

    .line 541
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 556
    :goto_9
    return-void

    .line 546
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 547
    sub-int v0, p1, p2

    .line 550
    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    .line 551
    and-int/lit8 v1, v0, 0x7f

    .line 552
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 553
    ushr-int/lit8 v0, v0, 0x7

    .line 554
    goto :goto_13

    .line 555
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_9
.end method

.method a(Lcom/bytedance/sdk/a/a/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7f

    .line 559
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->h:Z

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/k;->a(Lcom/bytedance/sdk/a/a/f;)I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 560
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 561
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/k;->a()Lcom/bytedance/sdk/a/b/a/e/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/k;->a(Lcom/bytedance/sdk/a/a/f;Lcom/bytedance/sdk/a/a/d;)V

    .line 562
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->n()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v1

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 564
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;

    .line 569
    :goto_32
    return-void

    .line 566
    :cond_33
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 567
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/a/c;->a(Lcom/bytedance/sdk/a/a/f;)Lcom/bytedance/sdk/a/a/c;

    goto :goto_32
.end method

.method a(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 468
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    if-eqz v0, :cond_23

    .line 469
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    if-ge v0, v1, :cond_17

    .line 471
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 473
    :cond_17
    iput-boolean v6, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->j:Z

    .line 474
    const v0, 0x7fffffff

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->i:I

    .line 475
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->b:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 478
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v6

    :goto_28
    if-ge v5, v7, :cond_e8

    .line 479
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/e/c;

    .line 480
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->f()Lcom/bytedance/sdk/a/a/f;

    move-result-object v8

    .line 481
    iget-object v9, v0, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    .line 485
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/d;->b:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 486
    if-eqz v1, :cond_ec

    .line 487
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 488
    const/4 v2, 0x1

    if-le v1, v2, :cond_e9

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e9

    .line 493
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v2, v9}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    move v2, v1

    .line 501
    :goto_5e
    if-ne v2, v4, :cond_89

    .line 502
    iget v3, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v10, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v10, v10

    :goto_67
    if-ge v3, v10, :cond_89

    .line 503
    iget-object v11, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v11, v11, v3

    iget-object v11, v11, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v11, v8}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_af

    .line 504
    iget-object v11, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->c:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v11, v11, v3

    iget-object v11, v11, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v11, v9}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 505
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    sub-int v2, v3, v2

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 514
    :cond_89
    if-eq v2, v4, :cond_b2

    .line 516
    const/16 v0, 0x7f

    const/16 v1, 0x80

    invoke-virtual {p0, v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 478
    :goto_92
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_28

    .line 495
    :cond_96
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-static {v2, v9}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 496
    add-int/lit8 v2, v1, 0x1

    goto :goto_5e

    .line 507
    :cond_a5
    if-ne v1, v4, :cond_af

    .line 508
    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->d:I

    sub-int v1, v3, v1

    sget-object v11, Lcom/bytedance/sdk/a/b/a/e/d;->a:[Lcom/bytedance/sdk/a/b/a/e/c;

    array-length v11, v11

    add-int/2addr v1, v11

    .line 502
    :cond_af
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 517
    :cond_b2
    if-ne v1, v4, :cond_c3

    .line 519
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/d$b;->g:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 520
    invoke-virtual {p0, v8}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 521
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/b/a/e/c;)V

    goto :goto_92

    .line 523
    :cond_c3
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v8, v2}, Lcom/bytedance/sdk/a/a/f;->a(Lcom/bytedance/sdk/a/a/f;)Z

    move-result v2

    if-eqz v2, :cond_dc

    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 526
    const/16 v0, 0xf

    invoke-virtual {p0, v1, v0, v6}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 527
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    goto :goto_92

    .line 530
    :cond_dc
    const/16 v2, 0x3f

    invoke-virtual {p0, v1, v2, v12}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(III)V

    .line 531
    invoke-virtual {p0, v9}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/a/f;)V

    .line 532
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Lcom/bytedance/sdk/a/b/a/e/c;)V

    goto :goto_92

    .line 535
    :cond_e8
    return-void

    :cond_e9
    move v2, v4

    goto/16 :goto_5e

    :cond_ec
    move v1, v4

    move v2, v4

    goto/16 :goto_5e
.end method
