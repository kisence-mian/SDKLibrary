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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 970
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 972
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 978
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .prologue
    .line 1078
    const/4 v2, 0x0

    .line 1080
    .local v2, "offset":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/\\"

    invoke-static {p1, v2, v0, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1081
    .local v3, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_21

    const/4 v4, 0x1

    .local v4, "addTrailingSlash":Z
    :goto_12
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1082
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1083
    add-int/lit8 v2, v3, 0x1

    .line 1084
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 1085
    return-object p0

    .line 1081
    .end local v4    # "addTrailingSlash":Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_12
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1591
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

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

    .prologue
    .line 1496
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

.method private isDotDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1500
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e."

    .line 1501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".%2e"

    .line 1502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e%2e"

    .line 1503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 1500
    :goto_21
    return v0

    .line 1503
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .registers 16
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v12, -0x1

    .line 1598
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

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    .line 1599
    .local v11, "portString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1d

    move-result v10

    .line 1600
    .local v10, "i":I
    if-lez v10, :cond_1b

    const v0, 0xffff

    if-gt v10, v0, :cond_1b

    .line 1603
    .end local v10    # "i":I
    .end local v11    # "portString":Ljava/lang/String;
    :goto_1a
    return v10

    .restart local v10    # "i":I
    .restart local v11    # "portString":Ljava/lang/String;
    :cond_1b
    move v10, v12

    .line 1601
    goto :goto_1a

    .line 1602
    .end local v10    # "i":I
    .end local v11    # "portString":Ljava/lang/String;
    :catch_1d
    move-exception v9

    .local v9, "e":Ljava/lang/NumberFormatException;
    move v10, v12

    .line 1603
    goto :goto_1a
.end method

.method private pop()V
    .registers 5

    .prologue
    .line 1517
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1521
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1525
    :goto_2d
    return-void

    .line 1523
    :cond_2e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1574
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 1575
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 1574
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1577
    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    .line 1578
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_1a
    move v0, p2

    .line 1585
    .end local v0    # "i":I
    :sswitch_1b
    return v0

    .line 1575
    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1b
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .registers 16
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1476
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 1478
    .local v9, "segment":Ljava/lang/String;
    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1493
    :cond_14
    :goto_14
    return-void

    .line 1481
    :cond_15
    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1482
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    goto :goto_14

    .line 1485
    :cond_1f
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1486
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1490
    :goto_42
    if-eqz p4, :cond_14

    .line 1491
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1488
    :cond_4c
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 1201
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2d

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

    .line 1211
    :cond_2d
    return-void

    .line 1201
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .registers 12
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 1448
    if-ne p2, p3, :cond_4

    .line 1471
    :cond_3
    return-void

    .line 1452
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1453
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_10

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_35

    .line 1455
    :cond_10
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 p2, p2, 0x1

    .line 1464
    :goto_1e
    move v2, p2

    .local v2, "i":I
    :cond_1f
    :goto_1f
    if-ge v2, p3, :cond_3

    .line 1465
    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1466
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_45

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2a
    move-object v0, p0

    move-object v1, p1

    .line 1467
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1468
    move v2, v3

    .line 1469
    if-eqz v4, :cond_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1460
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_35
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v7, ""

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 1466
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_45
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v3, -0x1

    .line 1532
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_10

    move v2, v3

    .line 1554
    :cond_f
    :goto_f
    return v2

    .line 1534
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1535
    .local v1, "c0":C
    if-lt v1, v8, :cond_18

    if-le v1, v9, :cond_1e

    :cond_18
    if-lt v1, v6, :cond_1c

    if-le v1, v7, :cond_1e

    :cond_1c
    move v2, v3

    goto :goto_f

    .line 1537
    :cond_1e
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_20
    if-ge v2, p2, :cond_4b

    .line 1538
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1540
    .local v0, "c":C
    if-lt v0, v8, :cond_2a

    if-le v0, v9, :cond_42

    :cond_2a
    if-lt v0, v6, :cond_2e

    if-le v0, v7, :cond_42

    :cond_2e
    const/16 v4, 0x30

    if-lt v0, v4, :cond_36

    const/16 v4, 0x39

    if-le v0, v4, :cond_42

    :cond_36
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_42

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_42

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_45

    .line 1537
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1547
    :cond_45
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_f

    move v2, v3

    .line 1550
    goto :goto_f

    .end local v0    # "c":C
    :cond_4b
    move v2, v3

    .line 1554
    goto :goto_f
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1559
    const/4 v1, 0x0

    .line 1560
    .local v1, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_14

    .line 1561
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1562
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_14

    .line 1563
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 1564
    add-int/lit8 p1, p1, 0x1

    .line 1568
    goto :goto_1

    .line 1569
    .end local v0    # "c":C
    :cond_14
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1058
    if-nez p1, :cond_b

    .line 1059
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1062
    return-object p0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .prologue
    .line 1071
    if-nez p1, :cond_a

    .line 1072
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 10
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1161
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_c
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1163
    :cond_17
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1164
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_36

    .line 1166
    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_32
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    return-object p0

    .line 1167
    :cond_36
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1043
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1045
    return-object p0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "pathSegments"    # Ljava/lang/String;

    .prologue
    .line 1053
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1149
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_c
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1151
    :cond_17
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1152
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_36

    .line 1154
    const-string v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1153
    :goto_32
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    return-object p0

    .line 1155
    :cond_36
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public build()Lokhttp3/HttpUrl;
    .registers 3

    .prologue
    .line 1254
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_c
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_18
    new-instance v0, Lokhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0
.end method

.method effectivePort()I
    .registers 3

    .prologue
    .line 1039
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedFragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 1221
    if-eqz p1, :cond_10

    .line 1222
    const-string v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1223
    :goto_d
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1224
    return-object p0

    .line 1223
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1014
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_c
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1017
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .prologue
    .line 1123
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1125
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

    .line 1127
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1128
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedQuery"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1140
    if-eqz p1, :cond_14

    .line 1141
    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1142
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1143
    :goto_11
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1144
    return-object p0

    .line 1143
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1001
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_c
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1004
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "fragment"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1214
    if-eqz p1, :cond_10

    .line 1215
    const-string v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1216
    :goto_d
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1217
    return-object p0

    .line 1216
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1025
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_2e

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

    .line 1028
    :cond_2e
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1029
    return-object p0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 32
    .param p1, "base"    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 1314
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 1315
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v24

    .line 1318
    .local v24, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v27

    .line 1319
    .local v27, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_117

    .line 1320
    const/4 v4, 0x1

    const-string v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 1321
    const-string v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1322
    const-string v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 1338
    :goto_3c
    const/16 v23, 0x0

    .line 1339
    .local v23, "hasUsername":Z
    const/16 v22, 0x0

    .line 1340
    .local v22, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v28

    .line 1341
    .local v28, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ge v0, v3, :cond_5d

    if-eqz p1, :cond_5d

    move-object/from16 v0, p1

    iget-object v3, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_271

    .line 1351
    :cond_5d
    add-int v5, v5, v28

    .line 1354
    :goto_5f
    const-string v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v21

    .line 1355
    .local v21, "componentDelimiterOffset":I
    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_12b

    .line 1356
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 1358
    .local v19, "c":I
    :goto_77
    sparse-switch v19, :sswitch_data_2bc

    goto :goto_5f

    .line 1391
    :sswitch_7b
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v26

    .line 1392
    .local v26, "portColonOffset":I
    add-int/lit8 v3, v26, 0x1

    move/from16 v0, v21

    if-ge v3, v0, :cond_1be

    .line 1393
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1394
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1395
    move-object/from16 v0, p0

    iget v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d6

    .line 1396
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URL port: \""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v26, 0x1

    .line 1397
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x22

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1323
    .end local v19    # "c":I
    .end local v21    # "componentDelimiterOffset":I
    .end local v22    # "hasPassword":Z
    .end local v23    # "hasUsername":Z
    .end local v26    # "portColonOffset":I
    .end local v28    # "slashCount":I
    :cond_d3
    const/4 v4, 0x1

    const-string v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 1324
    const-string v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1325
    const-string v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_3c

    .line 1327
    :cond_ef
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x0

    .line 1328
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1330
    :cond_117
    if-eqz p1, :cond_123

    .line 1331
    move-object/from16 v0, p1

    iget-object v3, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_3c

    .line 1333
    :cond_123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1357
    .restart local v21    # "componentDelimiterOffset":I
    .restart local v22    # "hasPassword":Z
    .restart local v23    # "hasUsername":Z
    .restart local v28    # "slashCount":I
    :cond_12b
    const/16 v19, -0x1

    goto/16 :goto_77

    .line 1361
    .restart local v19    # "c":I
    :sswitch_12f
    if-nez v22, :cond_18e

    .line 1362
    const/16 v3, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v5, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 1364
    .local v6, "passwordColonOffset":I
    const-string v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v12}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v20

    .line 1367
    .local v20, "canonicalUsername":Ljava/lang/String;
    if-eqz v23, :cond_167

    .line 1368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1369
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    :cond_167
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1370
    move/from16 v0, v21

    if-eq v6, v0, :cond_188

    .line 1371
    const/16 v22, 0x1

    .line 1372
    add-int/lit8 v8, v6, 0x1

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    move/from16 v9, v21

    invoke-static/range {v7 .. v15}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1376
    :cond_188
    const/16 v23, 0x1

    .line 1382
    .end local v6    # "passwordColonOffset":I
    :goto_18a
    add-int/lit8 v5, v21, 0x1

    .line 1383
    goto/16 :goto_5f

    .line 1378
    :cond_18e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v21

    invoke-static/range {v7 .. v15}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_18a

    .line 1400
    .restart local v26    # "portColonOffset":I
    :cond_1be
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v5, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1401
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1403
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_203

    .line 1404
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URL host: \""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1405
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x22

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1407
    :cond_203
    move/from16 v5, v21

    .line 1425
    .end local v19    # "c":I
    .end local v21    # "componentDelimiterOffset":I
    .end local v26    # "portColonOffset":I
    :cond_205
    :goto_205
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v25

    .line 1426
    .local v25, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v5, v2}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1427
    move/from16 v5, v25

    .line 1430
    move/from16 v0, v24

    if-ge v5, v0, :cond_24a

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_24a

    .line 1431
    const/16 v3, 0x23

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v5, v1, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v9

    .line 1432
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v15}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1434
    move v5, v9

    .line 1438
    .end local v9    # "queryDelimiterOffset":I
    :cond_24a
    move/from16 v0, v24

    if-ge v5, v0, :cond_270

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_270

    .line 1439
    add-int/lit8 v11, v5, 0x1

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v24

    invoke-static/range {v10 .. v18}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1443
    :cond_270
    return-object p0

    .line 1413
    .end local v25    # "pathDelimiterOffset":I
    :cond_271
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p1

    iget-object v3, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1416
    move-object/from16 v0, p1

    iget v3, v0, Lokhttp3/HttpUrl;->port:I

    move-object/from16 v0, p0

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    move/from16 v0, v24

    if-eq v5, v0, :cond_2b1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_205

    .line 1420
    :cond_2b1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_205

    .line 1358
    :sswitch_data_2bc
    .sparse-switch
        -0x1 -> :sswitch_7b
        0x23 -> :sswitch_7b
        0x2f -> :sswitch_7b
        0x3f -> :sswitch_7b
        0x40 -> :sswitch_12f
        0x5c -> :sswitch_7b
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1008
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_b
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1010
    return-object p0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .prologue
    .line 1033
    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

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

    .line 1034
    :cond_20
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1035
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "query"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1132
    if-eqz p1, :cond_14

    .line 1133
    const-string v1, " \"\'<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1135
    :goto_11
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1136
    return-object p0

    .line 1135
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1232
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_9
    if-ge v12, v13, :cond_23

    .line 1233
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1234
    .local v0, "pathSegment":Ljava/lang/String;
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    .line 1235
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1234
    invoke-interface {v6, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1232
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1237
    .end local v0    # "pathSegment":Ljava/lang/String;
    :cond_23
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4c

    .line 1238
    const/4 v12, 0x0

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    :goto_2e
    if-ge v12, v13, :cond_4c

    .line 1239
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1240
    .local v5, "component":Ljava/lang/String;
    if-eqz v5, :cond_49

    .line 1241
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 1242
    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1241
    invoke-interface {v1, v12, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1238
    :cond_49
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    .line 1246
    .end local v5    # "component":Ljava/lang/String;
    :cond_4c
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 1247
    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v7, " \"#<>\\^`{|}"

    move v8, v2

    move v9, v2

    move v10, v4

    move v11, v4

    invoke-static/range {v6 .. v11}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1250
    :cond_5e
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1193
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_b
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_10

    .line 1197
    :goto_f
    return-object p0

    .line 1195
    :cond_10
    const-string v1, " \"\'<>#&="

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1196
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1184
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_c
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_11

    .line 1189
    :goto_10
    return-object p0

    .line 1186
    :cond_11
    const-string v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 1188
    .local v6, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v6}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "index"    # I

    .prologue
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

    .prologue
    .line 982
    if-nez p1, :cond_a

    .line 983
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_a
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 985
    const-string v0, "http"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 991
    :goto_16
    return-object p0

    .line 986
    :cond_17
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 987
    const-string v0, "https"

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_16

    .line 989
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

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 13
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1101
    if-nez p2, :cond_c

    .line 1102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1105
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v8, 0x0

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    .line 1104
    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 1107
    .local v9, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1109
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_45
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1178
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1179
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1180
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 13
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1089
    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 1090
    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 1093
    .local v9, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0, v9}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1094
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_40
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1172
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1173
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1174
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0x3a

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_9f

    .line 1262
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :goto_16
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1269
    :cond_26
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1271
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_3b
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1277
    :cond_40
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v2, :cond_5b

    .line 1278
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_a6

    .line 1280
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1288
    :cond_5b
    :goto_5b
    iget v2, p0, Lokhttp3/HttpUrl$Builder;->port:I

    if-ne v2, v4, :cond_63

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_79

    .line 1289
    :cond_63
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v0

    .line 1290
    .local v0, "effectivePort":I
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_73

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_79

    .line 1291
    :cond_73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1296
    .end local v0    # "effectivePort":I
    :cond_79
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1298
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_8c

    .line 1299
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1303
    :cond_8c
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_9a

    .line 1304
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1265
    :cond_9f
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 1284
    :cond_a6
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 995
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_b
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 997
    return-object p0
.end method
