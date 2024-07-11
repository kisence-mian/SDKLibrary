.class Lcom/ss/android/socialbase/appdownloader/f/a/a;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/f/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/f/a/a$a;
    }
.end annotation


# instance fields
.field private b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

.field private c:Z

.field private d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

.field private e:[I

.field private f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 14
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    .line 26
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    .line 27
    return-void
.end method

.method private final e(I)I
    .registers 5

    .line 387
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 390
    mul-int/lit8 v0, p1, 0x5

    .line 391
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 394
    return v0

    .line 392
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Current event is not START_TAG."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final g()V
    .registers 3

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    .line 422
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    .line 423
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 424
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    .line 426
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->m:I

    .line 427
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    .line 428
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->o:I

    .line 429
    return-void
.end method

.method private final h()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_21

    .line 433
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    const v2, 0x80003

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/appdownloader/f/a/b;->a(Lcom/ss/android/socialbase/appdownloader/f/a/d;I)V

    .line 434
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 435
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(Lcom/ss/android/socialbase/appdownloader/f/a/d;)Lcom/ss/android/socialbase/appdownloader/f/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    .line 436
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->e()V

    .line 437
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 440
    :cond_21
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    if-eq v0, v1, :cond_195

    .line 441
    nop

    .line 442
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    .line 445
    :goto_29
    iget-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 446
    iput-boolean v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    .line 447
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->f()V

    .line 450
    :cond_35
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4c

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->d()I

    move-result v4

    if-ne v4, v1, :cond_4c

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b()I

    move-result v4

    if-nez v4, :cond_4c

    .line 451
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto/16 :goto_151

    .line 454
    :cond_4c
    const v4, 0x100102

    if-nez v0, :cond_53

    .line 455
    move v5, v4

    goto :goto_59

    .line 457
    :cond_53
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v5

    .line 461
    :goto_59
    const v6, 0x80180

    const/4 v7, 0x2

    const-string v8, ")."

    if-ne v5, v6, :cond_98

    .line 462
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v2

    .line 463
    const/16 v3, 0x8

    if-lt v2, v3, :cond_7b

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_7b

    .line 464
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e:[I

    .line 465
    goto :goto_29

    .line 468
    :cond_7b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_98
    const v6, 0x100100

    if-lt v5, v6, :cond_178

    const v9, 0x100104

    if-gt v5, v9, :cond_178

    .line 475
    if-ne v5, v4, :cond_ab

    const/4 v8, -0x1

    if-ne v0, v8, :cond_ab

    .line 476
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto/16 :goto_151

    .line 478
    :cond_ab
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 479
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v3

    .line 480
    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v8}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 483
    if-eq v5, v6, :cond_152

    const v8, 0x100101

    if-ne v5, v8, :cond_c4

    goto/16 :goto_152

    .line 496
    :cond_c4
    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    .line 497
    if-ne v5, v4, :cond_11e

    .line 498
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    .line 499
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 500
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 501
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    .line 502
    ushr-int/lit8 v3, v0, 0x10

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->m:I

    .line 503
    const v3, 0xffff

    and-int/2addr v0, v3

    .line 504
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v4

    iput v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    .line 505
    ushr-int/lit8 v5, v4, 0x10

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->o:I

    .line 506
    and-int/2addr v3, v4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->n:I

    .line 507
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    .line 509
    nop

    :goto_108
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v1, v0

    if-ge v2, v1, :cond_116

    .line 510
    aget v1, v0, v2

    ushr-int/lit8 v1, v1, 0x18

    aput v1, v0, v2

    .line 509
    add-int/lit8 v2, v2, 0x5

    goto :goto_108

    .line 513
    :cond_116
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->e()V

    .line 514
    iput v7, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    goto :goto_151

    .line 515
    :cond_11e
    const v3, 0x100103

    if-ne v5, v3, :cond_138

    .line 516
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->k:I

    .line 517
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 518
    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    .line 519
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g:Z

    goto :goto_151

    .line 521
    :cond_138
    if-eq v5, v9, :cond_13c

    .line 522
    goto/16 :goto_29

    .line 525
    :cond_13c
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->j:I

    .line 526
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 527
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 528
    const/4 v0, 0x4

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    .line 533
    :goto_151
    return-void

    .line 484
    :cond_152
    :goto_152
    if-ne v5, v6, :cond_167

    .line 485
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v2

    .line 486
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->b()I

    move-result v3

    .line 487
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v4, v2, v3}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a(II)V

    goto/16 :goto_29

    .line 489
    :cond_167
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 490
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->c()V

    .line 491
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c()Z

    .line 493
    goto/16 :goto_29

    .line 472
    :cond_178
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid chunk type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_195
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    .line 224
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    .line 226
    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    const-string p1, ""

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method public a()V
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    if-eqz v0, :cond_1b

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c:Z

    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/d;->a()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    .line 42
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    .line 43
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e:[I

    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->f:Lcom/ss/android/socialbase/appdownloader/f/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a()V

    .line 45
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->g()V

    .line 47
    :cond_1b
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 4

    .line 30
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V

    .line 31
    if-eqz p1, :cond_d

    .line 32
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/d;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    .line 35
    :cond_d
    return-void
.end method

.method public b()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/appdownloader/f/a/h;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->b:Lcom/ss/android/socialbase/appdownloader/f/a/d;

    if-eqz v0, :cond_f

    .line 54
    :try_start_4
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h()V

    .line 55
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    return v0

    .line 56
    :catch_a
    move-exception v0

    .line 57
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->a()V

    .line 58
    throw v0

    .line 51
    :cond_f
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/f/a/h;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Parser is not opened."

    invoke-direct {v0, v2, p0, v1}, Lcom/ss/android/socialbase/appdownloader/f/a/h;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/f/a/g;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(I)I
    .registers 3

    .line 236
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public c()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->i:I

    return v0
.end method

.method public c(I)I
    .registers 3

    .line 241
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .registers 5

    .line 246
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/a;->e(I)I

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    .line 248
    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 249
    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->d:Lcom/ss/android/socialbase/appdownloader/f/a/f;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 252
    :cond_18
    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    .line 253
    const-string p1, ""

    return-object p1
.end method

.method public e()I
    .registers 3

    .line 207
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, -0x1

    goto :goto_c

    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a;->l:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    :goto_c
    return v0
.end method

.method public f()I
    .registers 2

    .line 347
    const/4 v0, -0x1

    return v0
.end method
