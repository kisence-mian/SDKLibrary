.class Lcom/ta/utdid2/a/a/b$c;
.super Lcom/ta/utdid2/a/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B


# instance fields
.field b:I

.field public final b:Z

.field public final c:Z

.field private count:I

.field public final d:Z

.field private final d:[B

.field private final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 538
    const-class v0, Lcom/ta/utdid2/a/a/b;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/b$c;->a:Z

    .line 550
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_16

    sput-object v1, Lcom/ta/utdid2/a/a/b$c;->b:[B

    .line 561
    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/ta/utdid2/a/a/b$c;->c:[B

    return-void

    :array_16
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_3a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    .line 577
    invoke-direct {p0}, Lcom/ta/utdid2/a/a/b$a;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    .line 580
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/b$c;->b:Z

    .line 581
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/b$c;->c:Z

    .line 582
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iput-boolean v1, p0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    .line 583
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_28

    sget-object p1, Lcom/ta/utdid2/a/a/b$c;->b:[B

    goto :goto_2a

    :cond_28
    sget-object p1, Lcom/ta/utdid2/a/a/b$c;->c:[B

    :goto_2a
    iput-object p1, p0, Lcom/ta/utdid2/a/a/b$c;->e:[B

    .line 585
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    .line 586
    iput v0, p0, Lcom/ta/utdid2/a/a/b$c;->b:I

    .line 588
    if-eqz p2, :cond_38

    const/16 p1, 0x13

    goto :goto_39

    :cond_38
    const/4 p1, -0x1

    :goto_39
    iput p1, p0, Lcom/ta/utdid2/a/a/b$c;->count:I

    .line 589
    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .registers 22

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->e:[B

    .line 602
    iget-object v2, v0, Lcom/ta/utdid2/a/a/b$c;->a:[B

    .line 603
    nop

    .line 604
    iget v3, v0, Lcom/ta/utdid2/a/a/b$c;->count:I

    .line 606
    nop

    .line 607
    add-int v4, p3, p2

    .line 608
    nop

    .line 614
    iget v5, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_20a

    goto :goto_52

    .line 631
    :pswitch_16
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_52

    .line 633
    iget-object v9, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v10, v9, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 635
    iput v7, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    goto :goto_55

    .line 620
    :pswitch_31
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_52

    .line 623
    iget-object v5, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v9, p2, 0x1

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v5

    .line 625
    iput v7, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    move v5, v10

    goto :goto_55

    .line 617
    :pswitch_51
    nop

    .line 640
    :cond_52
    :goto_52
    move/from16 v5, p2

    const/4 v9, -0x1

    :goto_55
    const/4 v11, 0x4

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/4 v14, 0x2

    if-eq v9, v6, :cond_92

    .line 641
    shr-int/lit8 v6, v9, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v7

    .line 642
    shr-int/lit8 v6, v9, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v8

    .line 643
    shr-int/lit8 v6, v9, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v14

    .line 644
    and-int/lit8 v6, v9, 0x3f

    aget-byte v6, v1, v6

    const/4 v9, 0x3

    aput-byte v6, v2, v9

    .line 645
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_90

    .line 646
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v3, :cond_88

    .line 647
    const/4 v3, 0x5

    aput-byte v12, v2, v11

    goto :goto_89

    .line 646
    :cond_88
    const/4 v3, 0x4

    .line 648
    :goto_89
    add-int/lit8 v6, v3, 0x1

    aput-byte v13, v2, v3

    .line 649
    const/16 v3, 0x13

    goto :goto_93

    .line 645
    :cond_90
    const/4 v6, 0x4

    goto :goto_93

    .line 640
    :cond_92
    const/4 v6, 0x0

    .line 658
    :goto_93
    add-int/lit8 v9, v5, 0x3

    if-gt v9, v4, :cond_ec

    .line 659
    aget-byte v15, p1, v5

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v5, 0x1

    aget-byte v10, p1, v16

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v15

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    .line 661
    shr-int/lit8 v10, v5, 0x12

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v6

    .line 662
    add-int/lit8 v10, v6, 0x1

    shr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v10

    .line 663
    add-int/lit8 v10, v6, 0x2

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v10

    .line 664
    add-int/lit8 v10, v6, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    aput-byte v5, v2, v10

    .line 665
    nop

    .line 666
    add-int/lit8 v6, v6, 0x4

    .line 667
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_ea

    .line 668
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v3, :cond_e1

    .line 669
    add-int/lit8 v3, v6, 0x1

    aput-byte v12, v2, v6

    move v6, v3

    .line 670
    :cond_e1
    add-int/lit8 v3, v6, 0x1

    aput-byte v13, v2, v6

    .line 671
    move v6, v3

    move v5, v9

    const/16 v3, 0x13

    goto :goto_93

    .line 667
    :cond_ea
    move v5, v9

    goto :goto_93

    .line 675
    :cond_ec
    if-eqz p4, :cond_1db

    .line 681
    iget v9, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    sub-int v10, v5, v9

    add-int/lit8 v15, v4, -0x1

    const/16 v16, 0x3d

    if-ne v10, v15, :cond_140

    .line 682
    nop

    .line 683
    if-lez v9, :cond_101

    iget-object v10, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v7, v10, v7

    const/4 v10, 0x1

    goto :goto_108

    :cond_101
    add-int/lit8 v10, v5, 0x1

    aget-byte v5, p1, v5

    move v7, v5

    move v5, v10

    const/4 v10, 0x0

    :goto_108
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v11

    .line 684
    sub-int/2addr v9, v10

    iput v9, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    .line 685
    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v6

    .line 686
    add-int/lit8 v6, v9, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v9

    .line 687
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->b:Z

    if-eqz v1, :cond_12c

    .line 688
    add-int/lit8 v1, v6, 0x1

    aput-byte v16, v2, v6

    .line 689
    add-int/lit8 v6, v1, 0x1

    aput-byte v16, v2, v1

    .line 691
    :cond_12c
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->c:Z

    if-eqz v1, :cond_13e

    .line 692
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v1, :cond_139

    .line 693
    add-int/lit8 v1, v6, 0x1

    aput-byte v12, v2, v6

    move v6, v1

    .line 694
    :cond_139
    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    .line 696
    :cond_13e
    goto/16 :goto_1c1

    :cond_140
    sub-int v10, v5, v9

    add-int/lit8 v11, v4, -0x2

    if-ne v10, v11, :cond_1a9

    .line 697
    nop

    .line 698
    if-le v9, v8, :cond_14f

    iget-object v10, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    aget-byte v7, v10, v7

    const/4 v10, 0x1

    goto :goto_156

    :cond_14f
    add-int/lit8 v10, v5, 0x1

    aget-byte v5, p1, v5

    move v7, v5

    move v5, v10

    const/4 v10, 0x0

    :goto_156
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v13

    if-lez v9, :cond_162

    iget-object v11, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    add-int/lit8 v15, v10, 0x1

    aget-byte v10, v11, v10

    goto :goto_169

    :cond_162
    add-int/lit8 v11, v5, 0x1

    aget-byte v5, p1, v5

    move v15, v10

    move v10, v5

    move v5, v11

    :goto_169
    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v14

    or-int/2addr v7, v10

    .line 700
    sub-int/2addr v9, v15

    iput v9, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    .line 701
    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v6

    .line 702
    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v9

    .line 703
    add-int/lit8 v9, v6, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v6

    .line 704
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->b:Z

    if-eqz v1, :cond_195

    .line 705
    add-int/lit8 v1, v9, 0x1

    aput-byte v16, v2, v9

    move v9, v1

    .line 707
    :cond_195
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->c:Z

    if-eqz v1, :cond_1a7

    .line 708
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v1, :cond_1a2

    .line 709
    add-int/lit8 v1, v9, 0x1

    aput-byte v12, v2, v9

    move v9, v1

    .line 710
    :cond_1a2
    add-int/lit8 v1, v9, 0x1

    aput-byte v13, v2, v9

    move v9, v1

    .line 712
    :cond_1a7
    move v6, v9

    goto :goto_1c1

    :cond_1a9
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->c:Z

    if-eqz v1, :cond_1c1

    if-lez v6, :cond_1c1

    const/16 v1, 0x13

    if-eq v3, v1, :cond_1c1

    .line 713
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:Z

    if-eqz v1, :cond_1bc

    .line 714
    add-int/lit8 v1, v6, 0x1

    aput-byte v12, v2, v6

    move v6, v1

    .line 715
    :cond_1bc
    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    .line 718
    :cond_1c1
    :goto_1c1
    sget-boolean v1, Lcom/ta/utdid2/a/a/b$c;->a:Z

    if-nez v1, :cond_1d0

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    if-nez v2, :cond_1ca

    goto :goto_1d0

    :cond_1ca
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 719
    :cond_1d0
    :goto_1d0
    if-nez v1, :cond_204

    if-ne v5, v4, :cond_1d5

    goto :goto_204

    :cond_1d5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 724
    :cond_1db
    add-int/lit8 v1, v4, -0x1

    if-ne v5, v1, :cond_1ec

    .line 725
    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    aget-byte v4, p1, v5

    aput-byte v4, v1, v2

    goto :goto_204

    .line 726
    :cond_1ec
    sub-int/2addr v4, v14

    if-ne v5, v4, :cond_204

    .line 727
    iget-object v1, v0, Lcom/ta/utdid2/a/a/b$c;->d:[B

    iget v2, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    aget-byte v7, p1, v5

    aput-byte v7, v1, v2

    .line 728
    add-int/lit8 v2, v4, 0x1

    iput v2, v0, Lcom/ta/utdid2/a/a/b$c;->b:I

    add-int/2addr v5, v8

    aget-byte v2, p1, v5

    aput-byte v2, v1, v4

    .line 732
    :cond_204
    :goto_204
    iput v6, v0, Lcom/ta/utdid2/a/a/b$c;->a:I

    .line 733
    iput v3, v0, Lcom/ta/utdid2/a/a/b$c;->count:I

    .line 735
    return v8

    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_31
        :pswitch_16
    .end packed-switch
.end method
