.class final Lcom/ss/android/socialbase/appdownloader/e/a/a$a;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    .line 544
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 652
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    array-length v0, v0

    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    sub-int/2addr v0, v1

    .line 653
    if-gt v0, p1, :cond_1a

    .line 654
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 655
    new-array v0, v0, [I

    .line 656
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    .line 659
    :cond_1a
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 548
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    .line 549
    return-void
.end method

.method public final a(II)V
    .registers 8

    .prologue
    .line 581
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    if-nez v0, :cond_7

    .line 582
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->e()V

    .line 585
    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a(I)V

    .line 586
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 587
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aget v1, v1, v0

    .line 588
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    .line 589
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aput p1, v2, v0

    .line 590
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    .line 591
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    .line 592
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 593
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 552
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    if-nez v0, :cond_6

    .line 553
    const/4 v0, 0x0

    .line 556
    :goto_5
    return v0

    .line 555
    :cond_6
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 556
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aget v0, v1, v0

    goto :goto_5
.end method

.method public final c()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 596
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    if-nez v1, :cond_6

    .line 610
    :cond_5
    :goto_5
    return v0

    .line 599
    :cond_6
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 600
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aget v2, v2, v1

    .line 601
    if-eqz v2, :cond_5

    .line 604
    add-int/lit8 v0, v2, -0x1

    .line 605
    add-int/lit8 v1, v1, -0x2

    .line 606
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aput v0, v2, v1

    .line 607
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 608
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aput v0, v2, v1

    .line 609
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 610
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 628
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    return v0
.end method

.method public final e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 632
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a(I)V

    .line 633
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 634
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aput v2, v1, v0

    .line 635
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v1, v0

    .line 636
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 637
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    .line 638
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 641
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    if-eqz v0, :cond_22

    .line 642
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 643
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->a:[I

    aget v1, v1, v0

    .line 644
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_22

    .line 645
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->b:I

    .line 646
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/e/a/a$a;->c:I

    .line 649
    :cond_22
    return-void
.end method
