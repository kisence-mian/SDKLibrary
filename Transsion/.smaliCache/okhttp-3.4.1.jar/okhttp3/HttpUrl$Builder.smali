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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

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
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 938
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 940
    const/4 v1, -0x1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 941
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 946
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .registers 11
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .line 1046
    const/4 v0, 0x0

    .line 1048
    .local v0, "offset":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/\\"

    invoke-static {p1, v0, v1, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1049
    .local v7, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v7, v1, :cond_14

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1050
    .local v5, "addTrailingSlash":Z
    :goto_16
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1051
    add-int/lit8 v0, v7, 0x1

    .line 1052
    .end local v5    # "addTrailingSlash":Z
    .end local v7    # "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_27

    .line 1053
    return-object p0

    .line 1052
    :cond_27
    goto :goto_1
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1544
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, "percentDecoded":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1549
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1550
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lokhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_31

    :cond_28
    nop

    .line 1551
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v2}, Lokhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_31
    nop

    .line 1552
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_36

    const/4 v2, 0x0

    return-object v2

    .line 1553
    :cond_36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1554
    .local v2, "address":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_44

    invoke-static {v2}, Lokhttp3/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1555
    :cond_44
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1558
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_4a
    invoke-static {v1}, Lokhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 1635
    move v0, p4

    .line 1637
    .local v0, "b":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_45

    .line 1638
    array-length v3, p3

    if-ne v0, v3, :cond_9

    return v2

    .line 1641
    :cond_9
    if-eq v0, p4, :cond_16

    .line 1642
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_14

    return v2

    .line 1643
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 1647
    :cond_16
    const/4 v3, 0x0

    .line 1648
    .local v3, "value":I
    move v4, v1

    .line 1649
    .local v4, "groupOffset":I
    :goto_18
    if-ge v1, p2, :cond_39

    .line 1650
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1651
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_39

    const/16 v7, 0x39

    if-le v5, v7, :cond_27

    goto :goto_39

    .line 1652
    :cond_27
    if-nez v3, :cond_2c

    if-eq v4, v1, :cond_2c

    return v2

    .line 1653
    :cond_2c
    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v3, v7, -0x30

    .line 1654
    const/16 v6, 0xff

    if-le v3, v6, :cond_36

    return v2

    .line 1649
    .end local v5    # "c":C
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1656
    :cond_39
    :goto_39
    sub-int v5, v1, v4

    .line 1657
    .local v5, "groupLength":I
    if-nez v5, :cond_3e

    return v2

    .line 1660
    :cond_3e
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "b":I
    .local v2, "b":I
    int-to-byte v6, v3

    aput-byte v6, p3, v0

    .line 1661
    .end local v3    # "value":I
    .end local v4    # "groupOffset":I
    .end local v5    # "groupLength":I
    move v0, v2

    goto :goto_2

    .line 1663
    .end local v1    # "i":I
    .end local v2    # "b":I
    .restart local v0    # "b":I
    :cond_45
    add-int/lit8 v1, p4, 0x4

    if-eq v0, v1, :cond_4a

    return v2

    .line 1664
    :cond_4a
    const/4 v1, 0x1

    return v1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 14
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1563
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1564
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 1565
    .local v1, "b":I
    const/4 v2, -0x1

    .line 1566
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 1568
    .local v3, "groupOffset":I
    move v4, p1

    .local v4, "i":I
    :goto_8
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v4, p2, :cond_7c

    .line 1569
    array-length v8, v0

    if-ne v1, v8, :cond_11

    return-object v7

    .line 1572
    :cond_11
    add-int/lit8 v8, v4, 0x2

    if-gt v8, p2, :cond_29

    const-string v8, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1574
    if-eq v2, v5, :cond_21

    return-object v7

    .line 1575
    :cond_21
    add-int/lit8 v4, v4, 0x2

    .line 1576
    add-int/lit8 v1, v1, 0x2

    .line 1577
    move v2, v1

    .line 1578
    if-ne v4, p2, :cond_4c

    goto :goto_7c

    .line 1579
    :cond_29
    if-eqz v1, :cond_4c

    .line 1581
    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1582
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 1583
    :cond_37
    const-string v8, "."

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1585
    add-int/lit8 v8, v1, -0x2

    invoke-static {p0, v3, p2, v0, v8}, Lokhttp3/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v8

    if-nez v8, :cond_48

    return-object v7

    .line 1586
    :cond_48
    add-int/lit8 v1, v1, 0x2

    .line 1587
    goto :goto_7c

    .line 1589
    :cond_4b
    return-object v7

    .line 1594
    :cond_4c
    :goto_4c
    const/4 v6, 0x0

    .line 1595
    .local v6, "value":I
    move v3, v4

    .line 1596
    :goto_4e
    if-ge v4, p2, :cond_62

    .line 1597
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1598
    .local v8, "c":C
    invoke-static {v8}, Lokhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1599
    .local v9, "hexDigit":I
    if-ne v9, v5, :cond_5b

    goto :goto_62

    .line 1600
    :cond_5b
    shl-int/lit8 v10, v6, 0x4

    add-int v6, v10, v9

    .line 1596
    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1602
    :cond_62
    :goto_62
    sub-int v5, v4, v3

    .line 1603
    .local v5, "groupLength":I
    if-eqz v5, :cond_7b

    const/4 v8, 0x4

    if-le v5, v8, :cond_6a

    goto :goto_7b

    .line 1606
    :cond_6a
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "b":I
    .local v7, "b":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 1607
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "b":I
    .restart local v1    # "b":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1608
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    goto :goto_8

    .line 1603
    .restart local v5    # "groupLength":I
    .restart local v6    # "value":I
    :cond_7b
    :goto_7b
    return-object v7

    .line 1619
    .end local v4    # "i":I
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    :cond_7c
    :goto_7c
    array-length v4, v0

    if-eq v1, v4, :cond_91

    .line 1620
    if-ne v2, v5, :cond_82

    return-object v7

    .line 1621
    :cond_82
    array-length v4, v0

    sub-int v5, v1, v2

    sub-int/2addr v4, v5

    sub-int v5, v1, v2

    invoke-static {v0, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1622
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v0, v2, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1626
    :cond_91
    :try_start_91
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_95
    .catch Ljava/net/UnknownHostException; {:try_start_91 .. :try_end_95} :catch_96

    return-object v4

    .line 1627
    :catch_96
    move-exception v4

    .line 1628
    .local v4, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_9e

    :goto_9d
    throw v5

    :goto_9e
    goto :goto_9d
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9
    .param p0, "address"    # [B

    .line 1669
    const/4 v0, -0x1

    .line 1670
    .local v0, "longestRunOffset":I
    const/4 v1, 0x0

    .line 1671
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    const/16 v4, 0x10

    if-ge v2, v3, :cond_21

    .line 1672
    move v3, v2

    .line 1673
    .local v3, "currentRunOffset":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-byte v5, p0, v2

    if-nez v5, :cond_18

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_18

    .line 1674
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 1676
    :cond_18
    sub-int v4, v2, v3

    .line 1677
    .local v4, "currentRunLength":I
    if-le v4, v1, :cond_1e

    .line 1678
    move v0, v3

    .line 1679
    move v1, v4

    .line 1671
    .end local v3    # "currentRunOffset":I
    .end local v4    # "currentRunLength":I
    :cond_1e
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1684
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1685
    .local v2, "result":Lokio/Buffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_27
    :goto_27
    array-length v5, p0

    if-ge v3, v5, :cond_52

    .line 1686
    const/16 v5, 0x3a

    if-ne v3, v0, :cond_38

    .line 1687
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1688
    add-int/2addr v3, v1

    .line 1689
    if-ne v3, v4, :cond_27

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_27

    .line 1691
    :cond_38
    if-lez v3, :cond_3d

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1692
    :cond_3d
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 1693
    .local v5, "group":I
    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 1694
    nop

    .end local v5    # "group":I
    add-int/lit8 v3, v3, 0x2

    .line 1695
    goto :goto_27

    .line 1697
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 1449
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

    .line 1453
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1454
    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1455
    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1456
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

    .line 1453
    :goto_24
    return v0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1703
    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1704
    .local v1, "portString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1b

    .line 1705
    .local v2, "i":I
    if-lez v2, :cond_1a

    const v3, 0xffff

    if-gt v2, v3, :cond_1a

    return v2

    .line 1706
    :cond_1a
    return v0

    .line 1707
    .end local v1    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_1b
    move-exception v1

    .line 1708
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private pop()V
    .registers 5

    .line 1470
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1473
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1474
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1476
    :cond_2a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    :goto_2f
    return-void
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1527
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1c

    .line 1528
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1e

    goto :goto_19

    .line 1530
    :cond_b
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_19

    .line 1531
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_b

    goto :goto_19

    .line 1535
    :sswitch_18
    return v0

    .line 1527
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1538
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
    .registers 14
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .line 1429
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1431
    .local v0, "segment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1432
    return-void

    .line 1434
    :cond_14
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1435
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    .line 1436
    return-void

    .line 1438
    :cond_1e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1439
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1441
    :cond_3e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    :goto_43
    if-eqz p4, :cond_4c

    .line 1444
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    :cond_4c
    return-void
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_31

    .line 1168
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1169
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1170
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1171
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1172
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1173
    return-void

    .line 1167
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 1177
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1401
    if-ne p2, p3, :cond_3

    .line 1403
    return-void

    .line 1405
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1406
    .local v0, "c":C
    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1413
    :cond_13
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1408
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1409
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    add-int/lit8 p2, p2, 0x1

    .line 1417
    :goto_2a
    move v1, p2

    .local v1, "i":I
    :goto_2b
    if-ge v1, p3, :cond_48

    .line 1418
    const-string v2, "/\\"

    invoke-static {p1, v1, p3, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1419
    .local v2, "pathSegmentDelimiterOffset":I
    if-ge v2, p3, :cond_37

    const/4 v4, 0x1

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    move v10, v4

    .line 1420
    .local v10, "segmentHasTrailingSlash":Z
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1421
    move v1, v2

    .line 1422
    if-eqz v10, :cond_47

    add-int/lit8 v1, v1, 0x1

    .line 1423
    .end local v2    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_47
    goto :goto_2b

    .line 1424
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1485
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    .line 1487
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1488
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

    .line 1490
    :cond_1c
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_1e
    if-ge v6, p2, :cond_4a

    .line 1491
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1493
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

    .line 1499
    goto :goto_47

    .line 1500
    :cond_41
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_46

    .line 1501
    return v6

    .line 1503
    :cond_46
    return v1

    .line 1490
    .end local v7    # "c":C
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1507
    .end local v6    # "i":I
    :cond_4a
    return v1

    .line 1488
    :cond_4b
    :goto_4b
    return v1
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_15

    .line 1514
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1515
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_15

    .line 1516
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 1517
    nop

    .end local v1    # "c":C
    add-int/lit8 p1, p1, 0x1

    .line 1521
    goto :goto_1

    .line 1522
    :cond_15
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .line 1026
    if-eqz p1, :cond_f

    .line 1029
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1030
    return-object p0

    .line 1027
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .line 1039
    if-eqz p1, :cond_8

    .line 1042
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1040
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

    .line 1127
    if-eqz p1, :cond_32

    .line 1128
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1129
    :cond_d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1130
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1132
    const-string v2, " \"\'<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 1131
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    return-object p0

    .line 1127
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 1011
    if-eqz p1, :cond_f

    .line 1012
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1013
    return-object p0

    .line 1011
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 4
    .param p1, "pathSegments"    # Ljava/lang/String;

    .line 1021
    if-eqz p1, :cond_8

    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1021
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

    .line 1115
    if-eqz p1, :cond_32

    .line 1116
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1117
    :cond_d
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1118
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1120
    const-string v2, " \"\'<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 1119
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    return-object p0

    .line 1115
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/HttpUrl;
    .registers 3

    .line 1220
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1221
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1222
    new-instance v0, Lokhttp3/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;Lokhttp3/HttpUrl$1;)V

    return-object v0

    .line 1221
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .registers 3

    .line 1007
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

    .line 1187
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1188
    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1190
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .line 982
    if-eqz p1, :cond_10

    .line 983
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 985
    return-object p0

    .line 982
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 1089
    if-eqz p1, :cond_2c

    .line 1090
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1094
    return-object p0

    .line 1091
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

    .line 1089
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .line 1106
    if-eqz p1, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1108
    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1110
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .line 969
    if-eqz p1, :cond_10

    .line 970
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 972
    return-object p0

    .line 969
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1180
    if-eqz p1, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1181
    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1183
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .line 993
    if-eqz p1, :cond_29

    .line 994
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 996
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 997
    return-object p0

    .line 995
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

    .line 993
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .registers 26
    .param p1, "base"    # Lokhttp3/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .line 1278
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v9, v2, v1}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v7

    .line 1279
    .local v7, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v9, v7, v1}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v10

    .line 1282
    .local v10, "limit":I
    invoke-static {v9, v7, v10}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v11

    .line 1283
    .local v11, "schemeDelimiterOffset":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_53

    .line 1284
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v4, "https:"

    move-object/from16 v1, p2

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1285
    const-string v1, "https"

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1286
    const-string v1, "https:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_5b

    .line 1287
    :cond_36
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "http:"

    move-object/from16 v1, p2

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1288
    const-string v1, "http"

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1289
    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_5b

    .line 1291
    :cond_50
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1293
    :cond_53
    if-eqz p1, :cond_1f8

    .line 1294
    # getter for: Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lokhttp3/HttpUrl;->access$100(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1300
    :goto_5b
    const/4 v1, 0x0

    .line 1301
    .local v1, "hasUsername":Z
    const/4 v2, 0x0

    .line 1302
    .local v2, "hasPassword":Z
    invoke-static {v9, v7, v10}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v13

    .line 1303
    .local v13, "slashCount":I
    const/4 v3, 0x2

    const/16 v14, 0x23

    if-ge v13, v3, :cond_af

    if-eqz p1, :cond_af

    # getter for: Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lokhttp3/HttpUrl;->access$100(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_af

    .line 1366
    :cond_75
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1367
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1368
    # getter for: Lokhttp3/HttpUrl;->host:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lokhttp3/HttpUrl;->access$200(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1369
    # getter for: Lokhttp3/HttpUrl;->port:I
    invoke-static/range {p1 .. p1}, Lokhttp3/HttpUrl;->access$300(Lokhttp3/HttpUrl;)I

    move-result v3

    iput v3, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1370
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1371
    iget-object v3, v0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1372
    if-eq v7, v10, :cond_a3

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_aa

    .line 1373
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1378
    :cond_aa
    move v15, v1

    move/from16 v16, v2

    goto/16 :goto_1a3

    .line 1313
    :cond_af
    :goto_af
    add-int/2addr v7, v13

    move v15, v1

    move/from16 v16, v2

    move v8, v7

    .line 1316
    .end local v1    # "hasUsername":Z
    .end local v2    # "hasPassword":Z
    .end local v7    # "pos":I
    .local v8, "pos":I
    .local v15, "hasUsername":Z
    .local v16, "hasPassword":Z
    :goto_b4
    const-string v1, "@/\\?#"

    invoke-static {v9, v8, v10, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1317
    .local v7, "componentDelimiterOffset":I
    if-eq v7, v10, :cond_c1

    .line 1318
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_c2

    :cond_c1
    const/4 v1, -0x1

    :goto_c2
    move/from16 v17, v1

    .line 1320
    .local v17, "c":I
    sparse-switch v17, :sswitch_data_1fc

    move v14, v7

    move v7, v8

    const/16 v2, 0x23

    const/4 v3, -0x1

    .end local v8    # "pos":I
    .local v7, "pos":I
    .local v14, "componentDelimiterOffset":I
    goto/16 :goto_1f3

    .line 1323
    .end local v14    # "componentDelimiterOffset":I
    .local v7, "componentDelimiterOffset":I
    .restart local v8    # "pos":I
    :sswitch_ce
    const-string v6, "%40"

    if-nez v16, :cond_137

    .line 1324
    const/16 v1, 0x3a

    invoke-static {v9, v8, v7, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v5

    .line 1326
    .local v5, "passwordColonOffset":I
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v2, v8

    move v3, v5

    move v14, v5

    .end local v5    # "passwordColonOffset":I
    .local v14, "passwordColonOffset":I
    move/from16 v5, v18

    move-object v12, v6

    move/from16 v6, v19

    move/from16 v22, v7

    .end local v7    # "componentDelimiterOffset":I
    .local v22, "componentDelimiterOffset":I
    move/from16 v7, v20

    move/from16 v19, v8

    .end local v8    # "pos":I
    .local v19, "pos":I
    move/from16 v8, v21

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1328
    .local v8, "canonicalUsername":Ljava/lang/String;
    if-eqz v15, :cond_112

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_113

    :cond_112
    move-object v1, v8

    :goto_113
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1331
    move/from16 v12, v22

    .end local v22    # "componentDelimiterOffset":I
    .local v12, "componentDelimiterOffset":I
    if-eq v14, v12, :cond_132

    .line 1332
    const/16 v16, 0x1

    .line 1333
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v20, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    move-object/from16 v21, v8

    .end local v8    # "canonicalUsername":Ljava/lang/String;
    .local v21, "canonicalUsername":Ljava/lang/String;
    move/from16 v8, v20

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_134

    .line 1331
    .end local v21    # "canonicalUsername":Ljava/lang/String;
    .restart local v8    # "canonicalUsername":Ljava/lang/String;
    :cond_132
    move-object/from16 v21, v8

    .line 1336
    .end local v8    # "canonicalUsername":Ljava/lang/String;
    .restart local v21    # "canonicalUsername":Ljava/lang/String;
    :goto_134
    const/4 v15, 0x1

    .line 1337
    .end local v14    # "passwordColonOffset":I
    .end local v21    # "canonicalUsername":Ljava/lang/String;
    move v14, v12

    goto :goto_163

    .line 1338
    .end local v12    # "componentDelimiterOffset":I
    .end local v19    # "pos":I
    .restart local v7    # "componentDelimiterOffset":I
    .local v8, "pos":I
    :cond_137
    move-object v12, v6

    move v14, v7

    move/from16 v19, v8

    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .local v14, "componentDelimiterOffset":I
    .restart local v19    # "pos":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move/from16 v2, v19

    move v3, v14

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1341
    :goto_163
    add-int/lit8 v7, v14, 0x1

    .line 1342
    .end local v19    # "pos":I
    .local v7, "pos":I
    move v8, v7

    const/16 v2, 0x23

    const/4 v3, -0x1

    goto/16 :goto_1f3

    .line 1350
    .end local v14    # "componentDelimiterOffset":I
    .local v7, "componentDelimiterOffset":I
    .restart local v8    # "pos":I
    :sswitch_16b
    move v14, v7

    move/from16 v19, v8

    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .restart local v14    # "componentDelimiterOffset":I
    .restart local v19    # "pos":I
    move/from16 v7, v19

    .end local v19    # "pos":I
    .local v7, "pos":I
    invoke-static {v9, v7, v14}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v1

    .line 1351
    .local v1, "portColonOffset":I
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v14, :cond_18c

    .line 1352
    invoke-static {v9, v7, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1353
    add-int/lit8 v2, v1, 0x1

    invoke-static {v9, v2, v14}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1354
    const/4 v3, -0x1

    if-ne v2, v3, :cond_19a

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1356
    :cond_18c
    invoke-static {v9, v7, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1357
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1359
    :cond_19a
    iget-object v2, v0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v2, :cond_1a1

    sget-object v2, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1360
    :cond_1a1
    move v7, v14

    .line 1361
    nop

    .line 1378
    .end local v1    # "portColonOffset":I
    .end local v14    # "componentDelimiterOffset":I
    .end local v17    # "c":I
    :goto_1a3
    const-string v1, "?#"

    invoke-static {v9, v7, v10, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v12

    .line 1379
    .local v12, "pathDelimiterOffset":I
    invoke-direct {v0, v9, v7, v12}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1380
    move v14, v12

    .line 1383
    .end local v7    # "pos":I
    .local v14, "pos":I
    if-ge v14, v10, :cond_1d5

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1d5

    .line 1384
    const/16 v1, 0x23

    invoke-static {v9, v14, v10, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v17

    .line 1385
    .local v17, "queryDelimiterOffset":I
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move/from16 v3, v17

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1387
    move/from16 v14, v17

    .line 1391
    .end local v17    # "queryDelimiterOffset":I
    :cond_1d5
    if-ge v14, v10, :cond_1f0

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1f0

    .line 1392
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v10

    invoke-static/range {v1 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1396
    :cond_1f0
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1363
    .end local v12    # "pathDelimiterOffset":I
    .end local v14    # "pos":I
    .restart local v8    # "pos":I
    :goto_1f3
    const/4 v12, -0x1

    const/16 v14, 0x23

    goto/16 :goto_b4

    .line 1296
    .end local v8    # "pos":I
    .end local v13    # "slashCount":I
    .end local v15    # "hasUsername":Z
    .end local v16    # "hasPassword":Z
    .restart local v7    # "pos":I
    :cond_1f8
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    nop

    :sswitch_data_1fc
    .sparse-switch
        -0x1 -> :sswitch_16b
        0x23 -> :sswitch_16b
        0x2f -> :sswitch_16b
        0x3f -> :sswitch_16b
        0x40 -> :sswitch_ce
        0x5c -> :sswitch_16b
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .line 976
    if-eqz p1, :cond_10

    .line 977
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 978
    return-object p0

    .line 976
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .line 1001
    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 1002
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1003
    return-object p0

    .line 1001
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

    .line 1098
    if-eqz p1, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1099
    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1102
    return-object p0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .registers 11

    .line 1198
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_24

    .line 1199
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1200
    .local v2, "pathSegment":Ljava/lang/String;
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1201
    const-string v4, "[]"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1200
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .end local v2    # "pathSegment":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1203
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_24
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 1204
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 1205
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1206
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 1207
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1208
    const-string v4, "\\^`{|}"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1207
    invoke-interface {v9, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .end local v2    # "component":Ljava/lang/String;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1212
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_4c
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 1213
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1216
    :cond_5c
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "encodedName"    # Ljava/lang/String;

    .line 1159
    if-eqz p1, :cond_16

    .line 1160
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 1161
    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1162
    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1163
    return-object p0

    .line 1159
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 1150
    if-eqz p1, :cond_16

    .line 1151
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 1152
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1155
    return-object p0

    .line 1150
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

    .line 1081
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1082
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1083
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_14
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .line 950
    if-eqz p1, :cond_31

    .line 952
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 953
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_17

    .line 954
    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 955
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 959
    :goto_17
    return-object p0

    .line 957
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

    .line 951
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 11
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .line 1068
    if-eqz p2, :cond_3d

    .line 1071
    const/4 v1, 0x0

    .line 1072
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1071
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1077
    return-object p0

    .line 1075
    :cond_24
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

    .line 1069
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .line 1144
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1145
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1146
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 11
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .line 1057
    if-eqz p2, :cond_3d

    .line 1058
    const/4 v1, 0x0

    .line 1059
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1058
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 1063
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1064
    return-object p0

    .line 1061
    :cond_24
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

    .line 1057
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1138
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1139
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1140
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1231
    :cond_21
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    :cond_3b
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    .line 1241
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 1245
    :cond_54
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    :goto_59
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 1249
    .local v1, "effectivePort":I
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    :cond_6b
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v2}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1256
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_7e

    .line 1257
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v2}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1261
    :cond_7e
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_8c

    .line 1262
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1263
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;

    .line 963
    if-eqz p1, :cond_10

    .line 964
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 965
    return-object p0

    .line 963
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
