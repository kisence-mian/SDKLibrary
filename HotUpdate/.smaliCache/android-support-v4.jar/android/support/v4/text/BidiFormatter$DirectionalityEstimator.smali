.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 508
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 510
    sget-object v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 512
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 554
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 556
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .line 727
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    :goto_d
    return v0
.end method

.method private skipEntityBackward()B
    .registers 5

    .line 868
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 869
    .local v0, "initialCharIndex":I
    :cond_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_1d

    .line 870
    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    const/16 v3, 0x26

    if-ne v1, v3, :cond_1b

    .line 872
    const/16 v1, 0xc

    return v1

    .line 874
    :cond_1b
    if-ne v1, v2, :cond_2

    .line 878
    :cond_1d
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 879
    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 880
    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .registers 4

    .line 853
    :goto_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_17

    goto :goto_0

    .line 854
    :cond_17
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 5

    .line 825
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 826
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_3c

    .line 827
    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 828
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1b

    .line 830
    const/16 v1, 0xc

    return v1

    .line 832
    :cond_1b
    if-ne v1, v2, :cond_1e

    .line 833
    goto :goto_3c

    .line 835
    :cond_1e
    const/16 v2, 0x22

    if-eq v1, v2, :cond_26

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 837
    :cond_26
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 838
    .local v1, "quote":C
    :goto_28
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_3b

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3b

    goto :goto_28

    .line 839
    .end local v1    # "quote":C
    :cond_3b
    goto :goto_2

    .line 842
    :cond_3c
    :goto_3c
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 843
    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 844
    const/16 v1, 0xd

    return v1
.end method

.method private skipTagForward()B
    .registers 6

    .line 796
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 797
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_3b

    .line 798
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 799
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1b

    .line 801
    const/16 v1, 0xc

    return v1

    .line 803
    :cond_1b
    const/16 v2, 0x22

    if-eq v1, v2, :cond_23

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 805
    :cond_23
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 806
    .local v1, "quote":C
    :goto_25
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3a

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3a

    goto :goto_25

    .line 807
    .end local v1    # "quote":C
    :cond_3a
    goto :goto_2

    .line 810
    :cond_3b
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 811
    const/16 v1, 0x3c

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 812
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    .line 770
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 771
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 772
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 773
    .local v0, "codePoint":I
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 776
    .end local v0    # "codePoint":I
    :cond_28
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 777
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 778
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4b

    .line 780
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_43

    .line 781
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_4b

    .line 782
    :cond_43
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4b

    .line 783
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 786
    :cond_4b
    :goto_4b
    return v0
.end method

.method dirTypeForward()B
    .registers 4

    .line 740
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 741
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 742
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 743
    .local v0, "codePoint":I
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 746
    .end local v0    # "codePoint":I
    :cond_26
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 747
    iget-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 748
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_49

    .line 750
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_41

    .line 751
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_49

    .line 752
    :cond_41
    const/16 v2, 0x26

    if-ne v1, v2, :cond_49

    .line 753
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 756
    :cond_49
    :goto_49
    return v0
.end method

.method getEntryDir()I
    .registers 9

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 573
    .local v2, "embeddingLevelDir":I
    const/4 v3, 0x0

    .line 574
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_6
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_30

    if-nez v3, :cond_30

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    sparse-switch v4, :sswitch_data_54

    .line 609
    move v3, v1

    .line 610
    goto :goto_6

    .line 587
    :sswitch_19
    add-int/lit8 v1, v1, -0x1

    .line 591
    const/4 v2, 0x0

    .line 592
    goto :goto_6

    .line 583
    :sswitch_1d
    add-int/lit8 v1, v1, 0x1

    .line 584
    const/4 v2, 0x1

    .line 585
    goto :goto_6

    .line 578
    :sswitch_21
    add-int/lit8 v1, v1, 0x1

    .line 579
    const/4 v2, -0x1

    .line 580
    goto :goto_6

    .line 594
    :sswitch_25
    goto :goto_6

    .line 603
    :sswitch_26
    if-nez v1, :cond_29

    .line 604
    return v7

    .line 606
    :cond_29
    move v3, v1

    .line 607
    goto :goto_6

    .line 596
    :sswitch_2b
    if-nez v1, :cond_2e

    .line 597
    return v6

    .line 599
    :cond_2e
    move v3, v1

    .line 600
    goto :goto_6

    .line 616
    :cond_30
    if-nez v3, :cond_33

    .line 619
    return v0

    .line 623
    :cond_33
    if-eqz v2, :cond_36

    .line 625
    return v2

    .line 630
    :cond_36
    :goto_36
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_52

    .line 631
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_7a

    goto :goto_51

    .line 647
    :pswitch_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 641
    :pswitch_45
    if-ne v3, v1, :cond_48

    .line 642
    return v7

    .line 644
    :cond_48
    add-int/lit8 v1, v1, -0x1

    .line 645
    goto :goto_51

    .line 634
    :pswitch_4b
    if-ne v3, v1, :cond_4e

    .line 635
    return v6

    .line 637
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    .line 638
    nop

    .line 648
    :goto_51
    goto :goto_36

    .line 652
    :cond_52
    return v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_2b
        0x1 -> :sswitch_26
        0x2 -> :sswitch_26
        0x9 -> :sswitch_25
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0xe
        :pswitch_4b
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method getExitDir()I
    .registers 6

    .line 668
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 671
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_6
    :goto_6
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_35

    .line 672
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_38

    .line 710
    if-nez v1, :cond_6

    .line 711
    move v1, v0

    goto :goto_6

    .line 705
    :sswitch_17
    add-int/lit8 v0, v0, 0x1

    .line 706
    goto :goto_6

    .line 699
    :sswitch_1a
    if-ne v1, v0, :cond_1d

    .line 700
    return v3

    .line 702
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 703
    goto :goto_6

    .line 683
    :sswitch_20
    if-ne v1, v0, :cond_23

    .line 684
    return v4

    .line 686
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 687
    goto :goto_6

    .line 708
    :sswitch_26
    goto :goto_6

    .line 690
    :sswitch_27
    if-nez v0, :cond_2a

    .line 691
    return v3

    .line 693
    :cond_2a
    if-nez v1, :cond_6

    .line 694
    move v1, v0

    goto :goto_6

    .line 674
    :sswitch_2e
    if-nez v0, :cond_31

    .line 675
    return v4

    .line 677
    :cond_31
    if-nez v1, :cond_6

    .line 678
    move v1, v0

    goto :goto_6

    .line 716
    :cond_35
    const/4 v2, 0x0

    return v2

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_2e
        0x1 -> :sswitch_27
        0x2 -> :sswitch_27
        0x9 -> :sswitch_26
        0xe -> :sswitch_20
        0xf -> :sswitch_20
        0x10 -> :sswitch_1a
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_17
    .end sparse-switch
.end method
