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

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x700

    .line 584
    new-array v1, v3, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v3, :cond_14

    .line 586
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 588
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHtml"    # Z

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 630
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 631
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 632
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 803
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    .prologue
    const/16 v3, 0x3b

    .line 944
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 945
    .local v0, "initialCharIndex":I
    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    .line 946
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 947
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1f

    .line 948
    const/16 v1, 0xc

    .line 956
    :goto_1e
    return v1

    .line 950
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_4

    .line 954
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 955
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 956
    const/16 v1, 0xd

    goto :goto_1e
.end method

.method private skipEntityForward()B
    .registers 4

    .prologue
    .line 929
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 930
    :cond_18
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    .prologue
    const/16 v4, 0x3e

    .line 901
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 902
    .local v0, "initialCharIndex":I
    :cond_4
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_23

    .line 903
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 904
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1f

    .line 906
    const/16 v2, 0xc

    .line 920
    :goto_1e
    return v2

    .line 908
    :cond_1f
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_2a

    .line 918
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 919
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 920
    const/16 v2, 0xd

    goto :goto_1e

    .line 911
    :cond_2a
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_36

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_4

    .line 913
    :cond_36
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 914
    .local v1, "quote":C
    :goto_38
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_38
.end method

.method private skipTagForward()B
    .registers 6

    .prologue
    .line 872
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 873
    .local v0, "initialCharIndex":I
    :cond_2
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_44

    .line 874
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 875
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1f

    .line 877
    const/16 v2, 0xc

    .line 888
    :goto_1e
    return v2

    .line 879
    :cond_1f
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2b

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    .line 881
    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 882
    .local v1, "quote":C
    :goto_2d
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_2d

    .line 886
    .end local v1    # "quote":C
    :cond_44
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 887
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 888
    const/16 v2, 0xd

    goto :goto_1e
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 5

    .prologue
    .line 846
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 847
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 848
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 849
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 850
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 862
    .end local v0    # "codePoint":I
    :cond_29
    :goto_29
    return v1

    .line 852
    :cond_2a
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 853
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 854
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_29

    .line 856
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_45

    .line 857
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    goto :goto_29

    .line 858
    :cond_45
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_29

    .line 859
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_29
.end method

.method dirTypeForward()B
    .registers 5

    .prologue
    .line 816
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 817
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 818
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 819
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 820
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 832
    .end local v0    # "codePoint":I
    :cond_27
    :goto_27
    return v1

    .line 822
    :cond_28
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 824
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_27

    .line 826
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_43

    .line 827
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    goto :goto_27

    .line 828
    :cond_43
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_27

    .line 829
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_27
.end method

.method getEntryDir()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 646
    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 649
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 650
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_8
    :pswitch_8
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v7, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v6, v7, :cond_31

    if-nez v2, :cond_31

    .line 651
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    packed-switch v6, :pswitch_data_56

    .line 685
    :pswitch_17
    move v2, v0

    .line 686
    goto :goto_8

    .line 654
    :pswitch_19
    add-int/lit8 v0, v0, 0x1

    .line 655
    const/4 v1, -0x1

    .line 656
    goto :goto_8

    .line 659
    :pswitch_1d
    add-int/lit8 v0, v0, 0x1

    .line 660
    const/4 v1, 0x1

    .line 661
    goto :goto_8

    .line 663
    :pswitch_21
    add-int/lit8 v0, v0, -0x1

    .line 667
    const/4 v1, 0x0

    .line 668
    goto :goto_8

    .line 672
    :pswitch_25
    if-nez v0, :cond_29

    move v1, v3

    .line 728
    .end local v1    # "embeddingLevelDir":I
    :cond_28
    :goto_28
    return v1

    .line 675
    .restart local v1    # "embeddingLevelDir":I
    :cond_29
    move v2, v0

    .line 676
    goto :goto_8

    .line 679
    :pswitch_2b
    if-nez v0, :cond_2f

    move v1, v4

    .line 680
    goto :goto_28

    .line 682
    :cond_2f
    move v2, v0

    .line 683
    goto :goto_8

    .line 692
    :cond_31
    if-nez v2, :cond_35

    move v1, v5

    .line 695
    goto :goto_28

    .line 699
    :cond_35
    if-nez v1, :cond_28

    .line 706
    :goto_37
    iget v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v6, :cond_54

    .line 707
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    packed-switch v6, :pswitch_data_80

    goto :goto_37

    .line 710
    :pswitch_43
    if-ne v2, v0, :cond_47

    move v1, v3

    .line 711
    goto :goto_28

    .line 713
    :cond_47
    add-int/lit8 v0, v0, -0x1

    .line 714
    goto :goto_37

    .line 717
    :pswitch_4a
    if-ne v2, v0, :cond_4e

    move v1, v4

    .line 718
    goto :goto_28

    .line 720
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    .line 721
    goto :goto_37

    .line 723
    :pswitch_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_54
    move v1, v5

    .line 728
    goto :goto_28

    .line 651
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_2b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
    .end packed-switch

    .line 707
    :pswitch_data_80
    .packed-switch 0xe
        :pswitch_43
        :pswitch_43
        :pswitch_4a
        :pswitch_4a
        :pswitch_51
    .end packed-switch
.end method

.method getExitDir()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 744
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 747
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_8
    :goto_8
    :pswitch_8
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_35

    .line 748
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_38

    .line 786
    :pswitch_13
    if-nez v1, :cond_8

    .line 787
    move v1, v0

    goto :goto_8

    .line 750
    :pswitch_17
    if-nez v0, :cond_1a

    .line 792
    :cond_19
    :goto_19
    return v2

    .line 753
    :cond_1a
    if-nez v1, :cond_8

    .line 754
    move v1, v0

    goto :goto_8

    .line 759
    :pswitch_1e
    if-eq v1, v0, :cond_19

    .line 762
    add-int/lit8 v0, v0, -0x1

    .line 763
    goto :goto_8

    .line 766
    :pswitch_23
    if-nez v0, :cond_27

    move v2, v3

    .line 767
    goto :goto_19

    .line 769
    :cond_27
    if-nez v1, :cond_8

    .line 770
    move v1, v0

    goto :goto_8

    .line 775
    :pswitch_2b
    if-ne v1, v0, :cond_2f

    move v2, v3

    .line 776
    goto :goto_19

    .line 778
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 779
    goto :goto_8

    .line 781
    :pswitch_32
    add-int/lit8 v0, v0, 0x1

    .line 782
    goto :goto_8

    .line 792
    :cond_35
    const/4 v2, 0x0

    goto :goto_19

    .line 748
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_17
        :pswitch_23
        :pswitch_23
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_8
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1e
        :pswitch_1e
        :pswitch_2b
        :pswitch_2b
        :pswitch_32
    .end packed-switch
.end method
