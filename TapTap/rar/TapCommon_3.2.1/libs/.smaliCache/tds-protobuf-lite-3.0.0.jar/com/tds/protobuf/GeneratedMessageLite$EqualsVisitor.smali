.class Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EqualsVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;

.field static final NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1586
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;

    invoke-direct {v0}, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;-><init>()V

    sput-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;

    .line 1588
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    invoke-direct {v0}, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;-><init>()V

    sput-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Z
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Z

    .line 1595
    if-ne p1, p3, :cond_5

    if-ne p2, p4, :cond_5

    .line 1598
    return p2

    .line 1596
    :cond_5
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitBooleanList(Lcom/tds/protobuf/Internal$BooleanList;Lcom/tds/protobuf/Internal$BooleanList;)Lcom/tds/protobuf/Internal$BooleanList;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$BooleanList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$BooleanList;

    .line 1771
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1774
    return-object p1

    .line 1772
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitByteString(ZLcom/tds/protobuf/ByteString;ZLcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Lcom/tds/protobuf/ByteString;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Lcom/tds/protobuf/ByteString;

    .line 1646
    if-ne p1, p3, :cond_9

    invoke-virtual {p2, p4}, Lcom/tds/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1649
    return-object p2

    .line 1647
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitDouble(ZDZD)D
    .registers 8
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # D
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # D

    .line 1612
    if-ne p1, p4, :cond_7

    cmpl-double v0, p2, p5

    if-nez v0, :cond_7

    .line 1615
    return-wide p2

    .line 1613
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitDoubleList(Lcom/tds/protobuf/Internal$DoubleList;Lcom/tds/protobuf/Internal$DoubleList;)Lcom/tds/protobuf/Internal$DoubleList;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$DoubleList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$DoubleList;

    .line 1787
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1790
    return-object p1

    .line 1788
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitExtensions(Lcom/tds/protobuf/FieldSet;Lcom/tds/protobuf/FieldSet;)Lcom/tds/protobuf/FieldSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/tds/protobuf/FieldSet<",
            "Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 1813
    .local p1, "mine":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p2, "other":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1816
    return-object p1

    .line 1814
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitFloat(ZFZF)F
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # F
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # F

    .line 1620
    if-ne p1, p3, :cond_7

    cmpl-float v0, p2, p4

    if-nez v0, :cond_7

    .line 1623
    return p2

    .line 1621
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitFloatList(Lcom/tds/protobuf/Internal$FloatList;Lcom/tds/protobuf/Internal$FloatList;)Lcom/tds/protobuf/Internal$FloatList;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$FloatList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$FloatList;

    .line 1795
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1798
    return-object p1

    .line 1796
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitInt(ZIZI)I
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # I
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # I

    .line 1603
    if-ne p1, p3, :cond_5

    if-ne p2, p4, :cond_5

    .line 1606
    return p2

    .line 1604
    :cond_5
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitIntList(Lcom/tds/protobuf/Internal$IntList;Lcom/tds/protobuf/Internal$IntList;)Lcom/tds/protobuf/Internal$IntList;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$IntList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$IntList;

    .line 1779
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1782
    return-object p1

    .line 1780
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLazyMessage(Lcom/tds/protobuf/LazyFieldLite;Lcom/tds/protobuf/LazyFieldLite;)Lcom/tds/protobuf/LazyFieldLite;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/LazyFieldLite;
    .param p2, "other"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 1749
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1750
    const/4 v0, 0x0

    return-object v0

    .line 1752
    :cond_6
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    .line 1755
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/LazyFieldLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1756
    return-object p1

    .line 1758
    :cond_11
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0

    .line 1753
    :cond_14
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/tds/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    .line 1763
    .local p1, "mine":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    .local p2, "other":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1766
    return-object p1

    .line 1764
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLong(ZJZJ)J
    .registers 8
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # J
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # J

    .line 1628
    if-ne p1, p4, :cond_7

    cmp-long v0, p2, p5

    if-nez v0, :cond_7

    .line 1631
    return-wide p2

    .line 1629
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitLongList(Lcom/tds/protobuf/Internal$LongList;Lcom/tds/protobuf/Internal$LongList;)Lcom/tds/protobuf/Internal$LongList;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$LongList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$LongList;

    .line 1803
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1806
    return-object p1

    .line 1804
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitMap(Lcom/tds/protobuf/MapFieldLite;Lcom/tds/protobuf/MapFieldLite;)Lcom/tds/protobuf/MapFieldLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/tds/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1831
    .local p1, "mine":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p2, "other":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/MapFieldLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1834
    return-object p1

    .line 1832
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitMessage(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1733
    .local p1, "mine":Lcom/tds/protobuf/MessageLite;, "TT;"
    .local p2, "other":Lcom/tds/protobuf/MessageLite;, "TT;"
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1734
    const/4 v0, 0x0

    return-object v0

    .line 1737
    :cond_6
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 1741
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->equals(Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/tds/protobuf/MessageLite;)Z

    .line 1743
    return-object p1

    .line 1738
    :cond_11
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1654
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1655
    return-object p2

    .line 1657
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1702
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1703
    return-object p2

    .line 1705
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1670
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1671
    return-object p2

    .line 1673
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1678
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1679
    return-object p2

    .line 1681
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1662
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1663
    return-object p2

    .line 1665
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1710
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    return-object p2

    .line 1713
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1686
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1687
    return-object p2

    .line 1689
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1718
    if-eqz p1, :cond_f

    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {v0, p0, v1}, Lcom/tds/protobuf/GeneratedMessageLite;->equals(Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/tds/protobuf/MessageLite;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1719
    return-object p2

    .line 1721
    :cond_f
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofNotSet(Z)V
    .registers 3
    .param p1, "minePresent"    # Z

    .line 1726
    if-nez p1, :cond_3

    .line 1729
    return-void

    .line 1727
    :cond_3
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1694
    if-eqz p1, :cond_9

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1695
    return-object p2

    .line 1697
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/String;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Ljava/lang/String;

    .line 1637
    if-ne p1, p3, :cond_9

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1640
    return-object p2

    .line 1638
    :cond_9
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method

.method public visitUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 1823
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1826
    return-object p1

    .line 1824
    :cond_7
    sget-object v0, Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/tds/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw v0
.end method
