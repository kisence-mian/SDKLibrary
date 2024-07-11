.class public final Lcom/bytedance/sdk/a/b/s;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/s$a;
    }
.end annotation


# static fields
.field private static final d:[C


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bytedance/sdk/a/b/s;->d:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/s$a;)V
    .registers 6

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    .line 348
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->e:Ljava/lang/String;

    .line 349
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->f:Ljava/lang/String;

    .line 350
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s$a;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/s;->c:I

    .line 352
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->g:Ljava/util/List;

    .line 353
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    const/4 v3, 0x1

    .line 354
    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    :cond_37
    move-object v0, v2

    :goto_38
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s;->h:Ljava/util/List;

    .line 356
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 357
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_45
    nop

    :goto_46
    iput-object v2, p0, Lcom/bytedance/sdk/a/b/s;->i:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s$a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .line 522
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 523
    const/16 p0, 0x50

    return p0

    .line 524
    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 525
    const/16 p0, 0x1bb

    return p0

    .line 527
    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/s;
    .registers 1

    .line 923
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/s;->e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 20

    .line 1715
    move-object v1, p0

    move v3, p2

    move v2, p1

    :goto_3
    if-ge v2, v3, :cond_5c

    .line 1716
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1717
    const/16 v4, 0x20

    if-lt v0, v4, :cond_3d

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_3d

    const/16 v4, 0x80

    if-lt v0, v4, :cond_1a

    if-nez p7, :cond_18

    goto :goto_1a

    :cond_18
    move-object v4, p3

    goto :goto_3e

    .line 1720
    :cond_1a
    :goto_1a
    move-object v4, p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3e

    const/16 v5, 0x25

    if-ne v0, v5, :cond_30

    if-eqz p4, :cond_3e

    if-eqz p5, :cond_30

    .line 1721
    invoke-static {p0, v2, p2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_30
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_37

    if-eqz p6, :cond_37

    :cond_36
    goto :goto_3e

    .line 1715
    :cond_37
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_3

    .line 1717
    :cond_3d
    move-object v4, p3

    .line 1724
    :cond_3e
    :goto_3e
    new-instance v10, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v10}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 1725
    move v0, p1

    invoke-virtual {v10, p0, p1, v2}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    .line 1726
    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Lcom/bytedance/sdk/a/a/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    .line 1728
    invoke-virtual {v10}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1733
    :cond_5c
    move v0, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 7

    .line 1652
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_25

    .line 1653
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1654
    const/16 v2, 0x25

    if-eq v1, v2, :cond_15

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    .line 1652
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1656
    :cond_15
    :goto_15
    new-instance v1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 1657
    invoke-virtual {v1, p0, p1, v0}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;II)Lcom/bytedance/sdk/a/a/c;

    .line 1658
    invoke-static {v1, p0, v0, p2, p3}, Lcom/bytedance/sdk/a/b/s;->a(Lcom/bytedance/sdk/a/a/c;Ljava/lang/String;IIZ)V

    .line 1659
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/c;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1664
    :cond_25
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 15

    .line 1787
    nop

    .line 1788
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1787
    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 1638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1642
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1643
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1644
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_20

    .line 1645
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1646
    if-eqz v3, :cond_19

    invoke-static {v3, p2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1648
    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static a(Lcom/bytedance/sdk/a/a/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .registers 16

    .line 1739
    nop

    .line 1741
    const/4 v0, 0x0

    :goto_2
    if-ge p2, p3, :cond_9d

    .line 1742
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1743
    if-eqz p5, :cond_1c

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1c

    :cond_1a
    goto/16 :goto_96

    .line 1746
    :cond_1c
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2e

    if-eqz p7, :cond_2e

    .line 1748
    if-eqz p5, :cond_27

    const-string v2, "+"

    goto :goto_29

    :cond_27
    const-string v2, "%2B"

    :goto_29
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/c;

    goto/16 :goto_96

    .line 1749
    :cond_2e
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_56

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_56

    const/16 v2, 0x80

    if-lt v1, v2, :cond_3e

    if-nez p8, :cond_56

    .line 1752
    :cond_3e
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_56

    if-ne v1, v3, :cond_52

    if-eqz p5, :cond_56

    if-eqz p6, :cond_52

    .line 1753
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_56

    .line 1773
    :cond_52
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->a(I)Lcom/bytedance/sdk/a/a/c;

    goto :goto_96

    .line 1755
    :cond_56
    :goto_56
    if-nez v0, :cond_5d

    .line 1756
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    .line 1759
    :cond_5d
    if-eqz p9, :cond_71

    sget-object v2, Lcom/bytedance/sdk/a/b/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p9, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    goto :goto_71

    .line 1762
    :cond_68
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v2, p9}, Lcom/bytedance/sdk/a/a/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/bytedance/sdk/a/a/c;

    goto :goto_74

    .line 1760
    :cond_71
    :goto_71
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/c;->a(I)Lcom/bytedance/sdk/a/a/c;

    .line 1765
    :goto_74
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->e()Z

    move-result v2

    if-nez v2, :cond_96

    .line 1766
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1767
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1768
    sget-object v4, Lcom/bytedance/sdk/a/b/s;->d:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1769
    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1770
    goto :goto_74

    .line 1741
    :cond_96
    :goto_96
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto/16 :goto_2

    .line 1776
    :cond_9d
    return-void
.end method

.method static a(Lcom/bytedance/sdk/a/a/c;Ljava/lang/String;IIZ)V
    .registers 10

    .line 1669
    nop

    :goto_1
    if-ge p2, p3, :cond_45

    .line 1670
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1671
    const/16 v1, 0x25

    if-ne v0, v1, :cond_2f

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_2f

    .line 1672
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result v2

    .line 1673
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result v3

    .line 1674
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3b

    if-eq v3, v4, :cond_3b

    .line 1675
    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1676
    nop

    .line 1677
    move p2, v1

    goto :goto_3f

    .line 1679
    :cond_2f
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3b

    if-eqz p4, :cond_3b

    .line 1680
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/a/c;->b(I)Lcom/bytedance/sdk/a/a/c;

    .line 1681
    goto :goto_3f

    .line 1679
    :cond_3b
    nop

    .line 1683
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/c;->a(I)Lcom/bytedance/sdk/a/a/c;

    .line 1669
    :goto_3f
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_1

    .line 1685
    :cond_45
    return-void
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 564
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 565
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 568
    :cond_18
    return-void
.end method

.method static a(Ljava/lang/String;II)Z
    .registers 6

    .line 1688
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ge v0, p2, :cond_24

    .line 1689
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x25

    if-ne p2, v2, :cond_24

    add-int/2addr p1, v1

    .line 1690
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_24

    .line 1691
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a(C)I

    move-result p0

    if-eq p0, p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 1688
    :goto_25
    return v1
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_43

    .line 653
    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 654
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 656
    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 657
    if-eq v4, v3, :cond_35

    if-le v4, v2, :cond_24

    goto :goto_35

    .line 661
    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 658
    :cond_35
    :goto_35
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    :goto_40
    add-int/lit8 v1, v2, 0x1

    .line 665
    goto :goto_6

    .line 666
    :cond_43
    return-object v0
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    .line 633
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 634
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 635
    if-lez v1, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    if-eqz v3, :cond_29

    .line 638
    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 642
    :cond_2c
    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s;
    .registers 4

    .line 913
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/s$a;-><init>()V

    .line 914
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/a/b/s$a;->a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a$a;

    move-result-object p0

    .line 915
    sget-object v2, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    if-ne p0, v2, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s$a;->c()Lcom/bytedance/sdk/a/b/s;

    move-result-object v1

    :cond_12
    return-object v1
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .registers 5

    .line 387
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->n()Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s$a;->b()Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s$a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :try_start_c
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_11} :catch_12

    return-object v1

    .line 390
    :catch_12
    move-exception v1

    .line 393
    :try_start_13
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20

    return-object v0

    .line 395
    :catch_20
    move-exception v0

    .line 396
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s;
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/s;->d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object p1

    .line 880
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s$a;->c()Lcom/bytedance/sdk/a/b/s;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public c()Z
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 4

    .line 903
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/s$a;-><init>()V

    .line 904
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/a/b/s$a;->a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a$a;

    move-result-object p1

    .line 905
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 425
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 426
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 427
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 458
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 459
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 460
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 955
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/s;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/bytedance/sdk/a/b/s;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 514
    iget v0, p0, Lcom/bytedance/sdk/a/b/s;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 560
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 584
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    nop

    :goto_22
    if-ge v0, v1, :cond_38

    .line 586
    add-int/lit8 v0, v0, 0x1

    .line 587
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    .line 588
    iget-object v5, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    nop

    .line 590
    move v0, v4

    goto :goto_22

    .line 591
    :cond_38
    return-object v3
.end method

.method public j()Ljava/lang/String;
    .registers 5

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 626
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 627
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    .line 628
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 686
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 841
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 842
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .line 867
    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/s;->d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    .line 868
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    .line 869
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s$a;->c()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/a/b/s$a;
    .registers 4

    .line 884
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/s$a;-><init>()V

    .line 885
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 886
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 887
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 888
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 890
    iget v1, p0, Lcom/bytedance/sdk/a/b/s;->c:I

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/bytedance/sdk/a/b/s;->c:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 891
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 892
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 893
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    .line 894
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 895
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s;->j:Ljava/lang/String;

    return-object v0
.end method
