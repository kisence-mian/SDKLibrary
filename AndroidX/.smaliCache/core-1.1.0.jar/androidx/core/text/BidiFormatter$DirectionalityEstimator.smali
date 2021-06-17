.class Landroidx/core/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/BidiFormatter;
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

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 584
    const/16 v0, 0x700

    new-array v1, v0, [B

    sput-object v1, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_14

    .line 586
    sget-object v2, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 588
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 630
    iput-boolean p2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 632
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .line 803
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

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

    .line 944
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 945
    .local v0, "initialCharIndex":I
    :cond_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3b

    if-lez v1, :cond_1d

    .line 946
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 947
    const/16 v3, 0x26

    if-ne v1, v3, :cond_1b

    .line 948
    const/16 v1, 0xc

    return v1

    .line 950
    :cond_1b
    if-ne v1, v2, :cond_2

    .line 954
    :cond_1d
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 955
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 956
    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .registers 4

    .line 929
    :goto_0
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_17

    goto :goto_0

    .line 930
    :cond_17
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 5

    .line 901
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 902
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3e

    if-lez v1, :cond_3c

    .line 903
    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 904
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_1b

    .line 906
    const/16 v1, 0xc

    return v1

    .line 908
    :cond_1b
    if-ne v1, v2, :cond_1e

    .line 909
    goto :goto_3c

    .line 911
    :cond_1e
    const/16 v2, 0x22

    if-eq v1, v2, :cond_26

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 913
    :cond_26
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 914
    .local v1, "quote":C
    :goto_28
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_3b

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3b

    goto :goto_28

    .line 915
    .end local v1    # "quote":C
    :cond_3b
    goto :goto_2

    .line 918
    :cond_3c
    :goto_3c
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 919
    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 920
    const/16 v1, 0xd

    return v1
.end method

.method private skipTagForward()B
    .registers 6

    .line 872
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 873
    .local v0, "initialCharIndex":I
    :cond_2
    :goto_2
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_3b

    .line 874
    iget-object v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 875
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1b

    .line 877
    const/16 v1, 0xc

    return v1

    .line 879
    :cond_1b
    const/16 v2, 0x22

    if-eq v1, v2, :cond_23

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 881
    :cond_23
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 882
    .local v1, "quote":C
    :goto_25
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3a

    iget-object v3, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_3a

    goto :goto_25

    .line 883
    .end local v1    # "quote":C
    :cond_3a
    goto :goto_2

    .line 886
    :cond_3b
    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 887
    const/16 v1, 0x3c

    iput-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 888
    const/16 v1, 0xd

    return v1
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 4

    .line 846
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 847
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 848
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 849
    .local v0, "codePoint":I
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 852
    .end local v0    # "codePoint":I
    :cond_28
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 854
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_4b

    .line 856
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_43

    .line 857
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v0

    goto :goto_4b

    .line 858
    :cond_43
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_4b

    .line 859
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v0

    .line 862
    :cond_4b
    :goto_4b
    return v0
.end method

.method dirTypeForward()B
    .registers 4

    .line 816
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 817
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 818
    iget-object v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 819
    .local v0, "codePoint":I
    iget v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 820
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    return v1

    .line 822
    .end local v0    # "codePoint":I
    :cond_26
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    iget-char v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v0

    .line 824
    .local v0, "dirType":B
    iget-boolean v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v1, :cond_49

    .line 826
    iget-char v1, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_41

    .line 827
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v0

    goto :goto_49

    .line 828
    :cond_41
    const/16 v2, 0x26

    if-ne v1, v2, :cond_49

    .line 829
    invoke-direct {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v0

    .line 832
    :cond_49
    :goto_49
    return v0
.end method

.method getEntryDir()I
    .registers 9

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, "embeddingLevel":I
    const/4 v2, 0x0

    .line 649
    .local v2, "embeddingLevelDir":I
    const/4 v3, 0x0

    .line 650
    .local v3, "firstNonEmptyEmbeddingLevel":I
    :goto_6
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_30

    if-nez v3, :cond_30

    .line 651
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    sparse-switch v4, :sswitch_data_54

    .line 685
    move v3, v1

    .line 686
    goto :goto_6

    .line 663
    :sswitch_19
    add-int/lit8 v1, v1, -0x1

    .line 667
    const/4 v2, 0x0

    .line 668
    goto :goto_6

    .line 659
    :sswitch_1d
    add-int/lit8 v1, v1, 0x1

    .line 660
    const/4 v2, 0x1

    .line 661
    goto :goto_6

    .line 654
    :sswitch_21
    add-int/lit8 v1, v1, 0x1

    .line 655
    const/4 v2, -0x1

    .line 656
    goto :goto_6

    .line 670
    :sswitch_25
    goto :goto_6

    .line 679
    :sswitch_26
    if-nez v1, :cond_29

    .line 680
    return v7

    .line 682
    :cond_29
    move v3, v1

    .line 683
    goto :goto_6

    .line 672
    :sswitch_2b
    if-nez v1, :cond_2e

    .line 673
    return v6

    .line 675
    :cond_2e
    move v3, v1

    .line 676
    goto :goto_6

    .line 692
    :cond_30
    if-nez v3, :cond_33

    .line 695
    return v0

    .line 699
    :cond_33
    if-eqz v2, :cond_36

    .line 701
    return v2

    .line 706
    :cond_36
    :goto_36
    iget v4, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_52

    .line 707
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_7a

    goto :goto_51

    .line 723
    :pswitch_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 717
    :pswitch_45
    if-ne v3, v1, :cond_48

    .line 718
    return v7

    .line 720
    :cond_48
    add-int/lit8 v1, v1, -0x1

    .line 721
    goto :goto_51

    .line 710
    :pswitch_4b
    if-ne v3, v1, :cond_4e

    .line 711
    return v6

    .line 713
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    .line 714
    nop

    .line 724
    :goto_51
    goto :goto_36

    .line 728
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

    .line 744
    iget v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 747
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_6
    :goto_6
    iget v2, p0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_35

    .line 748
    invoke-virtual {p0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_38

    .line 786
    if-nez v1, :cond_6

    .line 787
    move v1, v0

    goto :goto_6

    .line 781
    :sswitch_17
    add-int/lit8 v0, v0, 0x1

    .line 782
    goto :goto_6

    .line 775
    :sswitch_1a
    if-ne v1, v0, :cond_1d

    .line 776
    return v3

    .line 778
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 779
    goto :goto_6

    .line 759
    :sswitch_20
    if-ne v1, v0, :cond_23

    .line 760
    return v4

    .line 762
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 763
    goto :goto_6

    .line 784
    :sswitch_26
    goto :goto_6

    .line 766
    :sswitch_27
    if-nez v0, :cond_2a

    .line 767
    return v3

    .line 769
    :cond_2a
    if-nez v1, :cond_6

    .line 770
    move v1, v0

    goto :goto_6

    .line 750
    :sswitch_2e
    if-nez v0, :cond_31

    .line 751
    return v4

    .line 753
    :cond_31
    if-nez v1, :cond_6

    .line 754
    move v1, v0

    goto :goto_6

    .line 792
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
