.class Lcom/ss/android/socialbase/appdownloader/e/a/a;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/e/a/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/e/a/a$a;
    }
.end annotation


# instance fields
.field private b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

.field private c:Z

.field private d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

.field private e:[I

.field private f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

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

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c:Z

    .line 14
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    .line 26
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g()V

    .line 27
    return-void
.end method

.method private final e(I)I
    .registers 5

    .prologue
    .line 387
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 388
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Current event is not START_TAG."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_d
    mul-int/lit8 v0, p1, 0x5

    .line 391
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    array-length v1, v1

    if-lt v0, v1, :cond_33

    .line 392
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_33
    return v0
.end method

.method private final g()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 421
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    .line 422
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->i:I

    .line 423
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->j:I

    .line 424
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->k:I

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    .line 426
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->m:I

    .line 427
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->n:I

    .line 428
    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->o:I

    .line 429
    return-void
.end method

.method private final h()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v2, 0x100102

    const v7, 0x100100

    const/4 v0, 0x3

    const/4 v6, 0x1

    .line 432
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

    if-nez v1, :cond_29

    .line 433
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    const v3, 0x80003

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/appdownloader/e/a/b;->a(Lcom/ss/android/socialbase/appdownloader/e/a/d;I)V

    .line 434
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 435
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a(Lcom/ss/android/socialbase/appdownloader/e/a/d;)Lcom/ss/android/socialbase/appdownloader/e/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

    .line 436
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->e()V

    .line 437
    iput-boolean v6, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c:Z

    .line 440
    :cond_29
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    if-eq v1, v6, :cond_51

    .line 441
    iget v3, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    .line 442
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g()V

    .line 445
    :cond_32
    :goto_32
    iget-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g:Z

    if-eqz v1, :cond_3d

    .line 446
    iput-boolean v8, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g:Z

    .line 447
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->f()V

    .line 450
    :cond_3d
    if-ne v3, v0, :cond_52

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->d()I

    move-result v1

    if-ne v1, v6, :cond_52

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b()I

    move-result v1

    if-nez v1, :cond_52

    .line 451
    iput v6, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    .line 536
    :cond_51
    :goto_51
    return-void

    .line 454
    :cond_52
    if-nez v3, :cond_75

    move v1, v2

    .line 461
    :goto_55
    const v4, 0x80180

    if-ne v1, v4, :cond_9b

    .line 462
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    .line 463
    const/16 v4, 0x8

    if-lt v1, v4, :cond_7c

    rem-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_7c

    .line 464
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e:[I

    goto :goto_32

    .line 457
    :cond_75
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    goto :goto_55

    .line 468
    :cond_7c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_9b
    if-lt v1, v7, :cond_a2

    const v4, 0x100104

    if-le v1, v4, :cond_c1

    .line 472
    :cond_a2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_c1
    if-ne v1, v2, :cond_c9

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c9

    .line 476
    iput v8, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    goto :goto_51

    .line 478
    :cond_c9
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 479
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v4

    .line 480
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 483
    if-eq v1, v7, :cond_e0

    const v5, 0x100101

    if-ne v1, v5, :cond_106

    .line 484
    :cond_e0
    if-ne v1, v7, :cond_f5

    .line 485
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    .line 486
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v4

    .line 487
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v5, v1, v4}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a(II)V

    goto/16 :goto_32

    .line 489
    :cond_f5
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 490
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 491
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c()Z

    goto/16 :goto_32

    .line 496
    :cond_106
    iput v4, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->i:I

    .line 497
    if-ne v1, v2, :cond_16d

    .line 498
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->k:I

    .line 499
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->j:I

    .line 500
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 501
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    .line 502
    ushr-int/lit8 v2, v1, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->m:I

    .line 503
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 504
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->n:I

    .line 505
    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->n:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->o:I

    .line 506
    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->n:I

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->n:I

    .line 507
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    .line 509
    :goto_153
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_163

    .line 510
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    aget v2, v1, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x5

    goto :goto_153

    .line 513
    :cond_163
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->e()V

    .line 514
    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    goto/16 :goto_51

    .line 515
    :cond_16d
    const v4, 0x100103

    if-ne v1, v4, :cond_188

    .line 516
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->k:I

    .line 517
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v1

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->j:I

    .line 518
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    .line 519
    iput-boolean v6, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g:Z

    goto/16 :goto_51

    .line 521
    :cond_188
    const v4, 0x100104

    if-ne v1, v4, :cond_32

    .line 525
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->j:I

    .line 526
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 527
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->c()V

    .line 528
    const/4 v0, 0x4

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    goto/16 :goto_51
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e(I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 226
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const-string v0, ""

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c:Z

    if-eqz v0, :cond_1b

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c:Z

    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/d;->a()V

    .line 41
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    .line 42
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

    .line 43
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e:[I

    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->f:Lcom/ss/android/socialbase/appdownloader/e/a/a$a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a()V

    .line 45
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->g()V

    .line 47
    :cond_1b
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a()V

    .line 31
    if-eqz p1, :cond_d

    .line 32
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ss/android/socialbase/appdownloader/e/a/d;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    .line 35
    :cond_d
    return-void
.end method

.method public b()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/appdownloader/e/a/h;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->b:Lcom/ss/android/socialbase/appdownloader/e/a/d;

    if-nez v0, :cond_f

    .line 51
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/e/a/h;

    const-string v2, "Parser is not opened."

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/h;-><init>(Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/e/a/g;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h()V

    .line 55
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15

    return v0

    .line 56
    :catch_15
    move-exception v0

    .line 57
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->a()V

    .line 58
    throw v0
.end method

.method public b(I)I
    .registers 4

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e(I)I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->i:I

    return v0
.end method

.method public c(I)I
    .registers 4

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e(I)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/e/a/a;->e(I)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 248
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 249
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 250
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->d:Lcom/ss/android/socialbase/appdownloader/e/a/f;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_19
    return-object v0

    .line 252
    :cond_1a
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    .line 253
    const-string v0, ""

    goto :goto_19
.end method

.method public e()I
    .registers 3

    .prologue
    .line 207
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, -0x1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a;->l:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    goto :goto_6
.end method

.method public f()I
    .registers 2

    .prologue
    .line 347
    const/4 v0, -0x1

    return v0
.end method
