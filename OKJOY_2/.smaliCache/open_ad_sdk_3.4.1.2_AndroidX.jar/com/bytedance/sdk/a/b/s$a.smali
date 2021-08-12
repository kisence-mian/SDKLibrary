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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 995
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 997
    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    .line 1003
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .registers 14

    .line 1470
    if-ne p2, p3, :cond_3

    .line 1472
    return-void

    .line 1474
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1475
    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1482
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1477
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1478
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    add-int/lit8 p2, p2, 0x1

    .line 1486
    :goto_2a
    move v6, p2

    :goto_2b
    if-ge v6, p3, :cond_47

    .line 1487
    const-string p2, "/\\"

    invoke-static {p1, v6, p3, p2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    .line 1488
    if-ge p2, p3, :cond_37

    move v0, v3

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 1489
    :goto_38
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/a/b/s$a;->a(Ljava/lang/String;IIZZ)V

    .line 1490
    nop

    .line 1491
    if-eqz v0, :cond_45

    add-int/lit8 p2, p2, 0x1

    :cond_45
    move v6, p2

    .line 1492
    goto :goto_2b

    .line 1493
    :cond_47
    return-void
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 15

    .line 1500
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v8}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 1502
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/s$a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1503
    return-void

    .line 1505
    :cond_15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/s$a;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1506
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/s$a;->d()V

    .line 1507
    return-void

    .line 1509
    :cond_1f
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 1510
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 1512
    :cond_3f
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    :goto_44
    if-eqz p4, :cond_4d

    .line 1515
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    :cond_4d
    return-void
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 10

    .line 1556
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    .line 1558
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1559
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v3, :cond_1c

    :cond_17
    if-lt v0, v4, :cond_48

    if-le v0, v2, :cond_1c

    goto :goto_48

    .line 1562
    :cond_1c
    :goto_1c
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_47

    .line 1563
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1565
    if-lt v0, v5, :cond_28

    if-le v0, v3, :cond_1c

    :cond_28
    if-lt v0, v4, :cond_2c

    if-le v0, v2, :cond_1c

    :cond_2c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_34

    const/16 v6, 0x39

    if-le v0, v6, :cond_1c

    :cond_34
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_41

    .line 1571
    goto :goto_1c

    .line 1572
    :cond_41
    const/16 p0, 0x3a

    if-ne v0, p0, :cond_46

    .line 1573
    return p1

    .line 1575
    :cond_46
    return v1

    .line 1579
    :cond_47
    return v1

    .line 1560
    :cond_48
    :goto_48
    return v1
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 6

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
    .registers 5

    .line 1603
    nop

    :goto_1
    if-ge p1, p2, :cond_1c

    .line 1604
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    goto :goto_19

    .line 1606
    :cond_b
    :sswitch_b
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_19

    .line 1607
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_b

    goto :goto_19

    .line 1611
    :sswitch_18
    return p1

    .line 1603
    :cond_19
    :goto_19
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1614
    :cond_1c
    return p2

    nop

    :sswitch_data_1e
    .sparse-switch
        0x3a -> :sswitch_18
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private d()V
    .registers 4

    .line 1541
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1544
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1545
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1547
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    :goto_2f
    return-void
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    .line 1620
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    .line 1621
    invoke-static {p0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;II)I
    .registers 13

    .line 1627
    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    .line 1628
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_13} :catch_1c

    .line 1629
    if-lez p0, :cond_1b

    const p1, 0xffff

    if-gt p0, p1, :cond_1b

    return p0

    .line 1630
    :cond_1b
    return v0

    .line 1631
    :catch_1c
    move-exception p0

    .line 1632
    return v0
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    .line 1520
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    .line 1524
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1525
    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1526
    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1527
    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    .line 1524
    :goto_24
    return p1
.end method


# virtual methods
.method a()I
    .registers 3

    .line 1065
    iget v0, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method a(Lcom/bytedance/sdk/a/b/s;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a$a;
    .registers 23

    .line 1343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v10, v8, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;II)I

    move-result v9

    .line 1344
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v10, v9, v2}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/lang/String;II)I

    move-result v11

    .line 1347
    invoke-static {v10, v9, v11}, Lcom/bytedance/sdk/a/b/s$a;->b(Ljava/lang/String;II)I

    move-result v2

    .line 1348
    const/4 v12, -0x1

    if-eq v2, v12, :cond_55

    .line 1349
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1350
    const-string v2, "https"

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1351
    const-string v2, "https:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_5b

    .line 1352
    :cond_38
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1353
    const-string v2, "http"

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1354
    const-string v2, "http:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_5b

    .line 1356
    :cond_52
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->c:Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v1

    .line 1358
    :cond_55
    if-eqz v1, :cond_1d2

    .line 1359
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1365
    :goto_5b
    nop

    .line 1366
    nop

    .line 1367
    invoke-static {v10, v9, v11}, Lcom/bytedance/sdk/a/b/s$a;->c(Ljava/lang/String;II)I

    move-result v2

    .line 1368
    const/4 v3, 0x2

    const/16 v13, 0x23

    if-ge v2, v3, :cond_a6

    if-eqz v1, :cond_a6

    iget-object v3, v1, Lcom/bytedance/sdk/a/b/s;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto :goto_a6

    .line 1435
    :cond_73
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1437
    iget-object v2, v1, Lcom/bytedance/sdk/a/b/s;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1438
    iget v2, v1, Lcom/bytedance/sdk/a/b/s;->c:I

    iput v2, v0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1439
    iget-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1440
    iget-object v2, v0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    if-eq v9, v11, :cond_9d

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_17d

    .line 1442
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/a/b/s;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    goto/16 :goto_17d

    .line 1378
    :cond_a6
    :goto_a6
    add-int/2addr v9, v2

    move v15, v8

    move/from16 v16, v15

    move v2, v9

    .line 1381
    :goto_ab
    const-string v1, "@/\\?#"

    invoke-static {v10, v2, v11, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 1382
    if-eq v9, v11, :cond_b8

    .line 1383
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b9

    :cond_b8
    move v1, v12

    .line 1385
    :goto_b9
    sparse-switch v1, :sswitch_data_1d6

    move v3, v12

    move v4, v13

    const/4 v5, 0x1

    goto/16 :goto_1ce

    .line 1388
    :sswitch_c1
    const-string v8, "%40"

    if-nez v15, :cond_11a

    .line 1389
    const/16 v1, 0x3a

    invoke-static {v10, v2, v9, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v7

    .line 1391
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v7

    move v14, v7

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v18

    move v12, v9

    move-object/from16 v9, v19

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    if-eqz v16, :cond_fe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_fe
    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1397
    if-eq v14, v12, :cond_116

    .line 1398
    nop

    .line 1399
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    const/4 v15, 0x1

    .line 1403
    :cond_116
    nop

    .line 1404
    const/16 v16, 0x1

    goto :goto_143

    .line 1405
    :cond_11a
    move-object v13, v8

    move v12, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1409
    :goto_143
    add-int/lit8 v2, v12, 0x1

    .line 1410
    const/4 v3, -0x1

    const/16 v4, 0x23

    const/4 v5, 0x1

    goto/16 :goto_1ce

    .line 1418
    :sswitch_14b
    move v12, v9

    invoke-static {v10, v2, v12}, Lcom/bytedance/sdk/a/b/s$a;->d(Ljava/lang/String;II)I

    move-result v1

    .line 1419
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v12, :cond_166

    .line 1420
    invoke-static {v10, v2, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1421
    invoke-static {v10, v3, v12}, Lcom/bytedance/sdk/a/b/s$a;->f(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1422
    const/4 v3, -0x1

    if-ne v1, v3, :cond_174

    .line 1423
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->d:Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v1

    .line 1425
    :cond_166
    invoke-static {v10, v2, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1426
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1428
    :cond_174
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    if-nez v1, :cond_17b

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->e:Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v1

    .line 1429
    :cond_17b
    nop

    .line 1430
    move v9, v12

    .line 1447
    :cond_17d
    :goto_17d
    const-string v1, "?#"

    invoke-static {v10, v9, v11, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1448
    invoke-direct {v0, v10, v9, v1}, Lcom/bytedance/sdk/a/b/s$a;->a(Ljava/lang/String;II)V

    .line 1449
    nop

    .line 1452
    if-ge v1, v11, :cond_1ae

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1ae

    .line 1453
    const/16 v2, 0x23

    invoke-static {v10, v1, v11, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;IIC)I

    move-result v12

    .line 1454
    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    .line 1456
    move v1, v12

    .line 1460
    :cond_1ae
    if-ge v1, v11, :cond_1cb

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_1cb

    .line 1461
    const/4 v5, 0x1

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 1465
    :cond_1cb
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v1

    .line 1432
    :goto_1ce
    move v12, v3

    move v13, v4

    goto/16 :goto_ab

    .line 1361
    :cond_1d2
    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->b:Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v1

    nop

    :sswitch_data_1d6
    .sparse-switch
        -0x1 -> :sswitch_14b
        0x23 -> :sswitch_14b
        0x2f -> :sswitch_14b
        0x3f -> :sswitch_14b
        0x40 -> :sswitch_c1
        0x5c -> :sswitch_14b
    .end sparse-switch
.end method

.method public a(I)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .line 1058
    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 1060
    iput p1, p0, Lcom/bytedance/sdk/a/b/s$a;->e:I

    .line 1061
    return-object p0

    .line 1059
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .line 1007
    if-eqz p1, :cond_31

    .line 1009
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1010
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    goto :goto_17

    .line 1011
    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1012
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    .line 1016
    :goto_17
    return-object p0

    .line 1014
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scheme == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Lcom/bytedance/sdk/a/b/s$a;
    .registers 11

    .line 1262
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 1263
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 1264
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1265
    const-string v5, "[]"

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 1264
    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1262
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1267
    :cond_25
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 1268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 1269
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1270
    if-eqz v3, :cond_49

    .line 1271
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1272
    const-string v4, "\\^`{|}"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1271
    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1276
    :cond_4c
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 1277
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    .line 1280
    :cond_5c
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .line 1020
    if-eqz p1, :cond_10

    .line 1021
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/s$a;->b:Ljava/lang/String;

    .line 1022
    return-object p0

    .line 1020
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "username == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .line 1033
    if-eqz p1, :cond_10

    .line 1034
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/s$a;->c:Ljava/lang/String;

    .line 1035
    return-object p0

    .line 1033
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "password == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/bytedance/sdk/a/b/s;
    .registers 3

    .line 1284
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1285
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1286
    new-instance v0, Lcom/bytedance/sdk/a/b/s;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/s;-><init>(Lcom/bytedance/sdk/a/b/s$a;)V

    return-object v0

    .line 1285
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 5

    .line 1050
    if-eqz p1, :cond_29

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_10

    .line 1053
    iput-object v0, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    .line 1054
    return-object p0

    .line 1052
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;
    .registers 8

    .line 1166
    if-eqz p1, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1168
    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    .line 1167
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    .line 1170
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

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

    const/16 v2, 0x3a

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
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    .line 1306
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 1310
    :cond_54
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :goto_59
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s$a;->a()I

    move-result v1

    .line 1314
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/s$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    .line 1315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    :cond_6b
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1321
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    if-eqz v1, :cond_7e

    .line 1322
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/s;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1326
    :cond_7e
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    .line 1327
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1328
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/s$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
