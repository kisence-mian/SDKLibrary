.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final INVALID_HOST:Ljava/lang/String; = "Invalid URL host"


# instance fields
.field encodedFragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 970
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 972
    const/4 v1, -0x1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 978
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .registers 11
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .line 1078
    const/4 v0, 0x0

    .line 1080
    .local v0, "offset":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/\\"

    invoke-static {p1, v0, v1, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1081
    .local v7, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move v5, v1

    .line 1082
    .local v5, "addTrailingSlash":Z
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1083
    add-int/lit8 v0, v7, 0x1

    .line 1084
    .end local v5    # "addTrailingSlash":Z
    .end local v7    # "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_26

    .line 1085
    return-object p0

    .line 1084
    :cond_26
    goto :goto_1
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "percentDecoded":Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 1496
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 1500
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1501
    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1502
    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1503
    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 1500
    :goto_24
    return v0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1598
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

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "portString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_13} :catch_1c

    .line 1600
    .local v2, "i":I
    if-lez v2, :cond_1b

    const v3, 0xffff

    if-gt v2, v3, :cond_1b

    return v2

    .line 1601
    :cond_1b
    return v0

    .line 1602
    .end local v1    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_1c
    move-exception v1

    .line 1603
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private pop()V
    .registers 5

    .line 1517
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1521
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1523
    :cond_2a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :goto_2f
    return-void
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1574
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1c

    .line 1575
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1e

    goto :goto_19

    .line 1577
    :cond_b
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_19

    .line 1578
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    goto :goto_19

    .line 1582
    :sswitch_18
    return v0

    .line 1574
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1585
    .end local v0    # "i":I
    :cond_1c
    return p2

    nop

    :sswitch_data_1e
    .sparse-switch
        0x3a -> :sswitch_18
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .line 1476
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "segment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1479
    return-void

    .line 1481
    :cond_15
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1482
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    .line 1483
    return-void

    .line 1485
    :cond_1f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1486
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 1488
    :cond_3f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    :goto_44
    if-eqz p4, :cond_4d

    .line 1491
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    :cond_4d
    return-void
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_31

    .line 1202
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1203
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1204
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1205
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1206
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1207
    return-void

    .line 1201
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 1211
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1448
    if-ne p2, p3, :cond_3

    .line 1450
    return-void

    .line 1452
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1453
    .local v0, "c":C
    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1460
    :cond_13
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1455
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 p2, p2, 0x1

    .line 1464
    :goto_2a
    move v1, p2

    .local v1, "i":I
    :goto_2b
    if-ge v1, p3, :cond_48

    .line 1465
    const-string v2, "/\\"

    invoke-static {p1, v1, p3, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1466
    .local v2, "pathSegmentDelimiterOffset":I
    if-ge v2, p3, :cond_37

    move v4, v3

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    move v10, v4

    .line 1467
    .local v10, "segmentHasTrailingSlash":Z
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1468
    move v1, v2

    .line 1469
    if-eqz v10, :cond_47

    add-int/lit8 v1, v1, 0x1

    .line 1470
    .end local v2    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_47
    goto :goto_2b

    .line 1471
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1532
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    .line 1534
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1535
    .local v0, "c0":C
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v3, :cond_1c

    :cond_17
    if-lt v0, v4, :cond_4b

    if-le v0, v2, :cond_1c

    goto :goto_4b

    .line 1537
    :cond_1c
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_1e
    if-ge v6, p2, :cond_4a

    .line 1538
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1540
    .local v7, "c":C
    if-lt v7, v5, :cond_28

    if-le v7, v3, :cond_47

    :cond_28
    if-lt v7, v4, :cond_2c

    if-le v7, v2, :cond_47

    :cond_2c
    const/16 v8, 0x30

    if-lt v7, v8, :cond_34

    const/16 v8, 0x39

    if-le v7, v8, :cond_47

    :cond_34
    const/16 v8, 0x2b

    if-eq v7, v8, :cond_47

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_47

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_41

    .line 1546
    goto :goto_47

    .line 1547
    :cond_41
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_46

    .line 1548
    return v6

    .line 1550
    :cond_46
    return v1

    .line 1537
    .end local v7    # "c":C
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1554
    .end local v6    # "i":I
    :cond_4a
    return v1

    .line 1535
    :cond_4b
    :goto_4b
    return v1
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_15

    .line 1561
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1562
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_15

    .line 1563
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 1564
    nop

    .end local v1    # "c":C
    add-int/lit8 p1, p1, 0x1

    .line 1568
    goto :goto_1

    .line 1569
    :cond_15
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .line 1058
    if-eqz p1, :cond_f

    .line 1061
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1062
    return-object p0

    .line 1059
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .line 1071
    if-eqz p1, :cond_8

    .line 1074
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1072
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 10
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1161
    if-eqz p1, :cond_32

    .line 1162
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1163
    :cond_d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1164
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    .line 1166
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 1167
    :cond_2d
    const/4 v1, 0x0

    .line 1165
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    return-object p0

    .line 1161
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 1043
    if-eqz p1, :cond_f

    .line 1044
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1045
    return-object p0

    .line 1043
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "pathSegments"    # Ljava/lang/String;

    .line 1053
    if-eqz p1, :cond_8

    .line 1054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1053
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1149
    if-eqz p1, :cond_32

    .line 1150
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1151
    :cond_d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1152
    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    .line 1154
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 1155
    :cond_2d
    const/4 v1, 0x0

    .line 1153
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    return-object p0

    .line 1149
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/HttpUrl;
    .registers 3

    .line 1254
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1255
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1256
    new-instance v0, Lokhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0

    .line 1255
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .registers 3

    .line 1039
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedFragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1221
    if-eqz p1, :cond_e

    .line 1222
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1223
    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1224
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .line 1014
    if-eqz p1, :cond_10

    .line 1015
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1017
    return-object p0

    .line 1014
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 1123
    if-eqz p1, :cond_2c

    .line 1124
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1127
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1128
    return-object p0

    .line 1125
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedQuery"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1140
    if-eqz p1, :cond_12

    .line 1141
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1142
    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 1143
    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1144
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .line 1001
    if-eqz p1, :cond_10

    .line 1002
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1004
    return-object p0

    .line 1001
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "fragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1214
    if-eqz p1, :cond_e

    .line 1215
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1216
    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1217
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .line 1025
    if-eqz p1, :cond_29

    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 1028
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1029
    return-object p0

    .line 1027
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1025
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 29
    .param p1, "base"    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;

    .line 1314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v11, v8, v2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v9

    .line 1315
    .local v9, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v11, v9, v2}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v12

    .line 1318
    .local v12, "limit":I
    invoke-static {v11, v9, v12}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v13

    .line 1319
    .local v13, "schemeDelimiterOffset":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_75

    .line 1320
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1321
    const-string v2, "https"

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1322
    const-string v2, "https:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_7b

    .line 1323
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

    .line 1324
    const-string v2, "http"

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1325
    const-string v2, "http:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v9, v2

    goto :goto_7b

    .line 1327
    :cond_52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1328
    invoke-virtual {v11, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1330
    :cond_75
    if-eqz v1, :cond_273

    .line 1331
    iget-object v2, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1338
    :goto_7b
    const/4 v2, 0x0

    .line 1339
    .local v2, "hasUsername":Z
    const/4 v3, 0x0

    .line 1340
    .local v3, "hasPassword":Z
    invoke-static {v11, v9, v12}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v15

    .line 1341
    .local v15, "slashCount":I
    const/4 v4, 0x2

    const/16 v10, 0x23

    if-ge v15, v4, :cond_cb

    if-eqz v1, :cond_cb

    iget-object v4, v1, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v5, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    goto :goto_cb

    .line 1413
    :cond_93
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1415
    iget-object v4, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1416
    iget v4, v1, Lokhttp3/HttpUrl;->port:I

    iput v4, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1417
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1418
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    if-eq v9, v12, :cond_bd

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_c4

    .line 1420
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1425
    :cond_c4
    move/from16 v16, v2

    move/from16 v17, v3

    move v1, v10

    goto/16 :goto_1f0

    .line 1351
    :cond_cb
    :goto_cb
    add-int/2addr v9, v15

    move/from16 v16, v2

    move/from16 v17, v3

    .line 1354
    .end local v2    # "hasUsername":Z
    .end local v3    # "hasPassword":Z
    .local v16, "hasUsername":Z
    .local v17, "hasPassword":Z
    :goto_d0
    const-string v2, "@/\\?#"

    invoke-static {v11, v9, v12, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    .line 1355
    .local v8, "componentDelimiterOffset":I
    if-eq v8, v12, :cond_dd

    .line 1356
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_de

    .line 1357
    :cond_dd
    move v2, v14

    :goto_de
    move/from16 v18, v2

    .line 1358
    .local v18, "c":I
    sparse-switch v18, :sswitch_data_27c

    move v2, v8

    move v1, v10

    move v6, v14

    .end local v8    # "componentDelimiterOffset":I
    .local v2, "componentDelimiterOffset":I
    goto/16 :goto_26d

    .line 1361
    .end local v2    # "componentDelimiterOffset":I
    .restart local v8    # "componentDelimiterOffset":I
    :sswitch_e8
    const-string v7, "%40"

    if-nez v17, :cond_161

    .line 1362
    const/16 v2, 0x3a

    invoke-static {v11, v9, v8, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 1364
    .local v6, "passwordColonOffset":I
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v3, v9

    move v4, v6

    move v14, v6

    .end local v6    # "passwordColonOffset":I
    .local v14, "passwordColonOffset":I
    move/from16 v6, v19

    move-object/from16 v24, v7

    move/from16 v7, v20

    move/from16 v25, v8

    .end local v8    # "componentDelimiterOffset":I
    .local v25, "componentDelimiterOffset":I
    move/from16 v8, v21

    move/from16 v19, v9

    .end local v9    # "pos":I
    .local v19, "pos":I
    move/from16 v9, v22

    move v1, v10

    move-object/from16 v10, v23

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 1367
    .local v10, "canonicalUsername":Ljava/lang/String;
    if-eqz v16, :cond_134

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_135

    .line 1369
    :cond_134
    move-object v2, v10

    :goto_135
    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1370
    move/from16 v9, v25

    .end local v25    # "componentDelimiterOffset":I
    .local v9, "componentDelimiterOffset":I
    if-eq v14, v9, :cond_15a

    .line 1371
    const/16 v17, 0x1

    .line 1372
    add-int/lit8 v3, v14, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move v4, v9

    move/from16 v25, v9

    .end local v9    # "componentDelimiterOffset":I
    .restart local v25    # "componentDelimiterOffset":I
    move/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "canonicalUsername":Ljava/lang/String;
    .local v20, "canonicalUsername":Ljava/lang/String;
    move-object/from16 v10, v21

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_15e

    .line 1370
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    .end local v25    # "componentDelimiterOffset":I
    .restart local v9    # "componentDelimiterOffset":I
    .restart local v10    # "canonicalUsername":Ljava/lang/String;
    :cond_15a
    move/from16 v25, v9

    move-object/from16 v20, v10

    .line 1376
    .end local v9    # "componentDelimiterOffset":I
    .end local v10    # "canonicalUsername":Ljava/lang/String;
    .restart local v20    # "canonicalUsername":Ljava/lang/String;
    .restart local v25    # "componentDelimiterOffset":I
    :goto_15e
    const/16 v16, 0x1

    .line 1377
    .end local v14    # "passwordColonOffset":I
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    goto :goto_191

    .line 1378
    .end local v19    # "pos":I
    .end local v25    # "componentDelimiterOffset":I
    .restart local v8    # "componentDelimiterOffset":I
    .local v9, "pos":I
    :cond_161
    move-object v3, v7

    move/from16 v25, v8

    move/from16 v19, v9

    move v1, v10

    .end local v8    # "componentDelimiterOffset":I
    .end local v9    # "pos":I
    .restart local v19    # "pos":I
    .restart local v25    # "componentDelimiterOffset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v25

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1382
    :goto_191
    move/from16 v2, v25

    .end local v25    # "componentDelimiterOffset":I
    .restart local v2    # "componentDelimiterOffset":I
    add-int/lit8 v8, v2, 0x1

    .line 1383
    .end local v19    # "pos":I
    .local v8, "pos":I
    move v9, v8

    const/4 v6, -0x1

    goto/16 :goto_26d

    .line 1391
    .end local v2    # "componentDelimiterOffset":I
    .local v8, "componentDelimiterOffset":I
    .restart local v9    # "pos":I
    :sswitch_199
    move v2, v8

    move/from16 v19, v9

    move v1, v10

    .end local v8    # "componentDelimiterOffset":I
    .restart local v2    # "componentDelimiterOffset":I
    invoke-static {v11, v9, v2}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v3

    .line 1392
    .local v3, "portColonOffset":I
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x22

    if-ge v4, v2, :cond_1dc

    .line 1393
    invoke-static {v11, v9, v3}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1394
    add-int/lit8 v4, v3, 0x1

    invoke-static {v11, v4, v2}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v4

    iput v4, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1395
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1b9

    goto :goto_1ea

    .line 1396
    :cond_1b9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL port: \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    .line 1397
    invoke-virtual {v11, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_1dc
    invoke-static {v11, v9, v3}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1401
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v4}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1403
    :goto_1ea
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v4, :cond_24c

    .line 1407
    move v9, v2

    .line 1408
    nop

    .line 1425
    .end local v2    # "componentDelimiterOffset":I
    .end local v3    # "portColonOffset":I
    .end local v18    # "c":I
    :goto_1f0
    const-string v2, "?#"

    invoke-static {v11, v9, v12, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v14

    .line 1426
    .local v14, "pathDelimiterOffset":I
    invoke-direct {v0, v11, v9, v14}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1427
    move v10, v14

    .line 1430
    .end local v9    # "pos":I
    .local v10, "pos":I
    if-ge v10, v12, :cond_227

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_227

    .line 1431
    invoke-static {v11, v10, v12, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v18

    .line 1432
    .local v18, "queryDelimiterOffset":I
    add-int/lit8 v3, v10, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v19, 0x0

    const-string v5, " \"\'<>#"

    move-object/from16 v2, p2

    move/from16 v4, v18

    move/from16 v20, v10

    .end local v10    # "pos":I
    .local v20, "pos":I
    move-object/from16 v10, v19

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1434
    move/from16 v10, v18

    .end local v20    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_22b

    .line 1430
    .end local v18    # "queryDelimiterOffset":I
    :cond_227
    move/from16 v20, v10

    .line 1438
    .end local v10    # "pos":I
    .restart local v20    # "pos":I
    move/from16 v10, v20

    .end local v20    # "pos":I
    .restart local v10    # "pos":I
    :goto_22b
    if-ge v10, v12, :cond_249

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_249

    .line 1439
    add-int/lit8 v3, v10, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v5, ""

    move-object/from16 v2, p2

    move v4, v12

    move/from16 v20, v10

    .end local v10    # "pos":I
    .restart local v20    # "pos":I
    move-object v10, v1

    invoke-static/range {v2 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    goto :goto_24b

    .line 1438
    .end local v20    # "pos":I
    .restart local v10    # "pos":I
    :cond_249
    move/from16 v20, v10

    .line 1443
    .end local v10    # "pos":I
    .restart local v20    # "pos":I
    :goto_24b
    return-object v0

    .line 1404
    .end local v14    # "pathDelimiterOffset":I
    .end local v20    # "pos":I
    .restart local v2    # "componentDelimiterOffset":I
    .restart local v3    # "portColonOffset":I
    .restart local v9    # "pos":I
    .local v18, "c":I
    :cond_24c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL host: \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1405
    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    .end local v2    # "componentDelimiterOffset":I
    .end local v3    # "portColonOffset":I
    .end local v18    # "c":I
    :goto_26d
    move v10, v1

    move v14, v6

    move-object/from16 v1, p1

    goto/16 :goto_d0

    .line 1333
    .end local v15    # "slashCount":I
    .end local v16    # "hasUsername":Z
    .end local v17    # "hasPassword":Z
    :cond_273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_27c
    .sparse-switch
        -0x1 -> :sswitch_199
        0x23 -> :sswitch_199
        0x2f -> :sswitch_199
        0x3f -> :sswitch_199
        0x40 -> :sswitch_e8
        0x5c -> :sswitch_199
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .line 1008
    if-eqz p1, :cond_10

    .line 1009
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1010
    return-object p0

    .line 1008
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .line 1033
    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 1034
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1035
    return-object p0

    .line 1033
    :cond_a
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
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "query"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1132
    if-eqz p1, :cond_12

    .line 1133
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 1135
    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1136
    return-object p0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .registers 11

    .line 1232
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_24

    .line 1233
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1234
    .local v2, "pathSegment":Ljava/lang/String;
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1235
    const-string v4, "[]"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1232
    .end local v2    # "pathSegment":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1237
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_24
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 1238
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 1239
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1240
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 1241
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1242
    const-string v4, "\\^`{|}"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-interface {v9, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .end local v2    # "component":Ljava/lang/String;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1246
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_4c
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 1247
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1250
    :cond_5c
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "encodedName"    # Ljava/lang/String;

    .line 1193
    if-eqz p1, :cond_16

    .line 1194
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 1195
    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1196
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1197
    return-object p0

    .line 1193
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 1184
    if-eqz p1, :cond_16

    .line 1185
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 1186
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1189
    return-object p0

    .line 1184
    .end local v0    # "nameToRemove":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "index"    # I

    .line 1115
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1116
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1117
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_14
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .line 982
    if-eqz p1, :cond_31

    .line 984
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 985
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_17

    .line 986
    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 987
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 991
    :goto_17
    return-object p0

    .line 989
    :cond_18
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

    .line 983
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 12
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .line 1101
    if-eqz p2, :cond_3e

    .line 1104
    const/4 v1, 0x0

    .line 1105
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1104
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1111
    return-object p0

    .line 1109
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1178
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1179
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1180
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 12
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .line 1089
    if-eqz p2, :cond_3e

    .line 1090
    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1090
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1096
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    return-object p0

    .line 1094
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1172
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1173
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1174
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1265
    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :goto_17
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_29

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1269
    :cond_29
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_3e
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1277
    :cond_43
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v1, :cond_63

    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_5e

    .line 1280
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1284
    :cond_5e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    :cond_63
    :goto_63
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    if-ne v1, v3, :cond_6b

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 1289
    :cond_6b
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 1290
    .local v1, "effectivePort":I
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_79

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_7f

    .line 1291
    :cond_79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    .end local v1    # "effectivePort":I
    :cond_7f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1298
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_92

    .line 1299
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1303
    :cond_92
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 1304
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;

    .line 995
    if-eqz p1, :cond_10

    .line 996
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 997
    return-object p0

    .line 995
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
