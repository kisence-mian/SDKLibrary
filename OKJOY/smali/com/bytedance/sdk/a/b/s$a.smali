.class public final Lcom/bytedance/sdk/a/b/s$a;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/s$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 995
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 997
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    .line 1003
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 1470
    if-ne p2, p3, :cond_4

    .line 1493
    :cond_3
    return-void

    .line 1474
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1475
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_10

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_35

    .line 1477
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1478
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    add-int/lit8 p2, p2, 0x1

    :goto_1e
    move v2, p2

    .line 1486
    :goto_1f
    if-ge v2, p3, :cond_3

    .line 1487
    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1488
    if-ge v3, p3, :cond_45

    move v4, v5

    :goto_2a
    move-object v0, p0

    move-object v1, p1

    .line 1489
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s$a;->a(Ljava/lang/String;IIZZ)V

    .line 1491
    if-eqz v4, :cond_33

    add-int/lit8 v3, v3, 0x1

    :cond_33
    move v2, v3

    .line 1492
    goto :goto_1f

    .line 1482
    :cond_35
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 1488
    :cond_45
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 1500
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/s$a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1517
    :cond_14
    :goto_14
    return-void

    .line 1505
    :cond_15
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/a/b/s$a;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1506
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/s$a;->d()V

    goto :goto_14

    .line 1509
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1510
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :goto_42
    if-eqz p4, :cond_14

    .line 1515
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1512
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 11

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 1556
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    .line 1579
    :cond_e
    :goto_e
    return v0

    .line 1558
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1559
    if-lt v1, v6, :cond_17

    if-le v1, v7, :cond_1b

    :cond_17
    if-lt v1, v4, :cond_e

    if-gt v1, v5, :cond_e

    .line 1562
    :cond_1b
    add-int/lit8 v1, p1, 0x1

    :goto_1d
    if-ge v1, p2, :cond_e

    .line 1563
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1565
    if-lt v2, v6, :cond_27

    if-le v2, v7, :cond_3f

    :cond_27
    if-lt v2, v4, :cond_2b

    if-le v2, v5, :cond_3f

    :cond_2b
    const/16 v3, 0x30

    if-lt v2, v3, :cond_33

    const/16 v3, 0x39

    if-le v2, v3, :cond_3f

    :cond_33
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_42

    .line 1562
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1572
    :cond_42
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_e

    move v0, v1

    .line 1573
    goto :goto_e
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 6

    .prologue
    .line 1586
    const/4 v0, 0x0

    .line 1587
    :goto_1
    if-ge p1, p2, :cond_14

    .line 1588
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1589
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    .line 1590
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 1591
    add-int/lit8 p1, p1, 0x1

    .line 1595
    goto :goto_1

    .line 1596
    :cond_14
    return v0
.end method

.method private static d(Ljava/lang/String;II)I
    .registers 6

    .prologue
    .line 1603
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1a

    .line 1604
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 1603
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1606
    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    .line 1607
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_1a
    move v0, p2

    .line 1614
    :sswitch_1b
    return v0

    .line 1604
    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1b
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private d()V
    .registers 4

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1544
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1545
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1549
    :goto_2d
    return-void

    .line 1547
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;II)I
    .registers 13

    .prologue
    const/4 v9, -0x1

    .line 1627
    :try_start_1
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1d

    move-result v0

    .line 1629
    if-lez v0, :cond_1b

    const v1, 0xffff

    if-gt v0, v1, :cond_1b

    .line 1632
    :goto_1a
    return v0

    :cond_1b
    move v0, v9

    .line 1630
    goto :goto_1a

    .line 1631
    :catch_1d
    move-exception v0

    move v0, v9

    .line 1632
    goto :goto_1a
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1520
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1524
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e."

    .line 1525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".%2e"

    .line 1526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e%2e"

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 1524
    :goto_21
    return v0

    .line 1527
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 1065
    iget v0, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a$a;
    .registers 18

    .prologue
    .line 1343
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II)I

    move-result v3

    .line 1344
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v1}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;II)I

    move-result v13

    .line 1347
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lcom/bytedance/sdk/a/b/s$a;->b(Ljava/lang/String;II)I

    move-result v1

    .line 1348
    const/4 v2, -0x1

    if-eq v1, v2, :cond_89

    .line 1349
    const/4 v2, 0x1

    const-string v4, "https:"

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1350
    const-string v1, "https"

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1351
    const-string v1, "https:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1365
    :goto_36
    const/4 v2, 0x0

    .line 1366
    const/4 v1, 0x0

    .line 1367
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lcom/bytedance/sdk/a/b/s$a;->c(Ljava/lang/String;II)I

    move-result v4

    .line 1368
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4f

    if-eqz p1, :cond_4f

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a6

    .line 1378
    :cond_4f
    add-int/2addr v3, v4

    move v10, v1

    move v11, v2

    move v2, v3

    .line 1381
    :goto_53
    const-string v1, "@/\\?#"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v13, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v12

    .line 1382
    if-eq v12, v13, :cond_95

    .line 1383
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1385
    :goto_63
    sparse-switch v1, :sswitch_data_1e4

    move v1, v10

    move v3, v2

    move v2, v11

    :goto_69
    move v10, v1

    move v11, v2

    move v2, v3

    .line 1432
    goto :goto_53

    .line 1352
    :cond_6d
    const/4 v2, 0x1

    const-string v4, "http:"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1353
    const-string v1, "http"

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1354
    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_36

    .line 1356
    :cond_86
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->c:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1465
    :goto_88
    return-object v1

    .line 1358
    :cond_89
    if-eqz p1, :cond_92

    .line 1359
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    goto :goto_36

    .line 1361
    :cond_92
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->b:Lcom/bytedance/sdk/a/b/s$a$a;

    goto :goto_88

    .line 1383
    :cond_95
    const/4 v1, -0x1

    goto :goto_63

    .line 1388
    :sswitch_97
    if-nez v10, :cond_e6

    .line 1389
    const/16 v1, 0x3a

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v3

    .line 1391
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    if-eqz v11, :cond_c9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%40"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c9
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1397
    if-eq v3, v12, :cond_e0

    .line 1398
    const/4 v10, 0x1

    .line 1399
    add-int/lit8 v2, v3, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1403
    :cond_e0
    const/4 v11, 0x1

    .line 1409
    :goto_e1
    add-int/lit8 v3, v12, 0x1

    move v1, v10

    move v2, v11

    .line 1410
    goto :goto_69

    .line 1405
    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    goto :goto_e1

    .line 1418
    :sswitch_110
    move-object/from16 v0, p2

    invoke-static {v0, v2, v12}, Lcom/bytedance/sdk/a/b/s$a;->d(Ljava/lang/String;II)I

    move-result v1

    .line 1419
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v12, :cond_135

    .line 1420
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1421
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v12}, Lcom/bytedance/sdk/a/b/s$a;->f(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1422
    iget v1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_145

    .line 1423
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->d:Lcom/bytedance/sdk/a/b/s$a$a;

    goto/16 :goto_88

    .line 1425
    :cond_135
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1426
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1428
    :cond_145
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    if-nez v1, :cond_14d

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->e:Lcom/bytedance/sdk/a/b/s$a$a;

    goto/16 :goto_88

    :cond_14d
    move v3, v12

    .line 1447
    :cond_14e
    :goto_14e
    const-string v1, "?#"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1448
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3, v1}, Lcom/bytedance/sdk/a/b/s$a;->a(Ljava/lang/String;II)V

    .line 1452
    if-ge v1, v13, :cond_1e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1e1

    .line 1453
    const/16 v2, 0x23

    move-object/from16 v0, p2

    invoke-static {v0, v1, v13, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v3

    .line 1454
    add-int/lit8 v2, v1, 0x1

    const-string v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    .line 1460
    :goto_184
    if-ge v3, v13, :cond_1a2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1a2

    .line 1461
    add-int/lit8 v2, v3, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 1465
    :cond_1a2
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    goto/16 :goto_88

    .line 1435
    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1437
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1438
    move-object/from16 v0, p1

    iget v1, v0, Lcom/bytedance/sdk/a/b/s;->c:I

    iput v1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1439
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1440
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    if-eq v3, v13, :cond_1d8

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_14e

    .line 1442
    :cond_1d8
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    goto/16 :goto_14e

    :cond_1e1
    move v3, v1

    goto :goto_184

    .line 1385
    nop

    :sswitch_data_1e4
    .sparse-switch
        -0x1 -> :sswitch_110
        0x23 -> :sswitch_110
        0x2f -> :sswitch_110
        0x3f -> :sswitch_110
        0x40 -> :sswitch_97
        0x5c -> :sswitch_110
    .end sparse-switch
.end method

.method public a(I)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .prologue
    .line 1058
    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    .line 1059
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_20
    iput p1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1061
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .prologue
    .line 1007
    if-nez p1, :cond_a

    .line 1008
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_a
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1010
    const-string v0, "http"

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1016
    :goto_16
    return-object p0

    .line 1011
    :cond_17
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1012
    const-string v0, "https"

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    goto :goto_16

    .line 1014
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()Lcom/bytedance/sdk/a/b/s$a;
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1262
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_9
    if-ge v6, v7, :cond_24

    .line 1263
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1264
    iget-object v8, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    .line 1265
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1262
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    .line 1267
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4d

    .line 1268
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_2f
    if-ge v0, v1, :cond_4d

    .line 1269
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1270
    if-eqz v5, :cond_4a

    .line 1271
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 1272
    invoke-static/range {v5 .. v10}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 1271
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1276
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 1277
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 1280
    :cond_5d
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1020
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_b
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1022
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1033
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_b
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1035
    return-object p0
.end method

.method public c()Lcom/bytedance/sdk/a/b/s;
    .registers 3

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_18
    new-instance v0, Lcom/bytedance/sdk/a/b/s;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/s;-><init>(Lcom/bytedance/sdk/a/b/s$a;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .prologue
    .line 1050
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_2e
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1054
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 1166
    if-eqz p1, :cond_14

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1168
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    .line 1170
    return-object p0

    .line 1167
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1292
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1296
    :cond_21
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1304
    :cond_3b
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8b

    .line 1306
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1313
    :goto_53
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s$a;->a()I

    move-result v1

    .line 1314
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_65

    .line 1315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    :cond_65
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1321
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    if-eqz v1, :cond_78

    .line 1322
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1326
    :cond_78
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_86

    .line 1327
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1328
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_8b
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method
