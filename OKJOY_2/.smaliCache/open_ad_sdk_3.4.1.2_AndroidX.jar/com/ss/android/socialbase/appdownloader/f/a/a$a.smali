.class final Lcom/ss/android/socialbase/appdownloader/f/a/a$a;
.super Ljava/lang/Object;
.source "AXmlResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/f/a/a;
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

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    .line 544
    return-void
.end method

.method private a(I)V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    array-length v1, v0

    iget v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    sub-int/2addr v1, v2

    .line 653
    if-gt v1, p1, :cond_14

    .line 654
    array-length p1, v0

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x2

    .line 655
    new-array p1, p1, [I

    .line 656
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    .line 659
    :cond_14
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 547
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 548
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    .line 549
    return-void
.end method

.method public final a(II)V
    .registers 10

    .line 581
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    if-nez v0, :cond_7

    .line 582
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->e()V

    .line 585
    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a(I)V

    .line 586
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    add-int/lit8 v2, v1, -0x1

    .line 587
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    aget v4, v3, v2

    .line 588
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 589
    aput p1, v3, v2

    .line 590
    add-int/lit8 p1, v2, 0x1

    aput p2, v3, p1

    .line 591
    add-int/2addr v2, v0

    aput v4, v3, v2

    .line 592
    add-int/2addr v1, v0

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 593
    return-void
.end method

.method public final b()I
    .registers 3

    .line 552
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    if-nez v0, :cond_6

    .line 553
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 556
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    aget v0, v1, v0

    return v0
.end method

.method public final c()Z
    .registers 7

    .line 596
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 597
    return v1

    .line 599
    :cond_6
    add-int/lit8 v2, v0, -0x1

    .line 600
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    aget v4, v3, v2

    .line 601
    if-nez v4, :cond_f

    .line 602
    return v1

    .line 604
    :cond_f
    add-int/lit8 v4, v4, -0x1

    .line 605
    add-int/lit8 v2, v2, -0x2

    .line 606
    aput v4, v3, v2

    .line 607
    mul-int/lit8 v1, v4, 0x2

    const/4 v5, 0x1

    add-int/2addr v1, v5

    sub-int/2addr v2, v1

    .line 608
    aput v4, v3, v2

    .line 609
    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 610
    return v5
.end method

.method public final d()I
    .registers 2

    .line 628
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    return v0
.end method

.method public final e()V
    .registers 6

    .line 632
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a(I)V

    .line 633
    iget v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 634
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 635
    add-int/lit8 v4, v1, 0x1

    aput v3, v2, v4

    .line 636
    add-int/2addr v1, v0

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 637
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    .line 638
    return-void
.end method

.method public final f()V
    .registers 4

    .line 641
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    if-eqz v0, :cond_1c

    .line 642
    add-int/lit8 v1, v0, -0x1

    .line 643
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->a:[I

    aget v2, v2, v1

    .line 644
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 645
    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->b:I

    .line 646
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/f/a/a$a;->c:I

    .line 649
    :cond_1c
    return-void
.end method
