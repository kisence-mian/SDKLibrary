.class Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashCodeVisitor"
.end annotation


# instance fields
.field private hashCode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/protobuf/GeneratedMessageLite$1;

    .line 1841
    invoke-direct {p0}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;

    .line 1841
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return v0
.end method

.method static synthetic access$102(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;
    .param p1, "x1"    # I

    .line 1841
    iput p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p1
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Z
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Z

    .line 1852
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p2}, Lcom/tds/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1853
    return p2
.end method

.method public visitBooleanList(Lcom/tds/protobuf/Internal$BooleanList;Lcom/tds/protobuf/Internal$BooleanList;)Lcom/tds/protobuf/Internal$BooleanList;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$BooleanList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$BooleanList;

    .line 1991
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1992
    return-object p1
.end method

.method public visitByteString(ZLcom/tds/protobuf/ByteString;ZLcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Lcom/tds/protobuf/ByteString;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Lcom/tds/protobuf/ByteString;

    .line 1891
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p2}, Lcom/tds/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1892
    return-object p2
.end method

.method public visitDouble(ZDZD)D
    .registers 10
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # D
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # D

    .line 1865
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tds/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1866
    return-wide p2
.end method

.method public visitDoubleList(Lcom/tds/protobuf/Internal$DoubleList;Lcom/tds/protobuf/Internal$DoubleList;)Lcom/tds/protobuf/Internal$DoubleList;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$DoubleList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$DoubleList;

    .line 2003
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2004
    return-object p1
.end method

.method public visitExtensions(Lcom/tds/protobuf/FieldSet;Lcom/tds/protobuf/FieldSet;)Lcom/tds/protobuf/FieldSet;
    .registers 5
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

    .line 2023
    .local p1, "mine":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p2, "other":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/tds/protobuf/FieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2024
    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # F
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # F

    .line 1871
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1872
    return p2
.end method

.method public visitFloatList(Lcom/tds/protobuf/Internal$FloatList;Lcom/tds/protobuf/Internal$FloatList;)Lcom/tds/protobuf/Internal$FloatList;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$FloatList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$FloatList;

    .line 2009
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2010
    return-object p1
.end method

.method public visitInt(ZIZI)I
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # I
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # I

    .line 1858
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1859
    return p2
.end method

.method public visitIntList(Lcom/tds/protobuf/Internal$IntList;Lcom/tds/protobuf/Internal$IntList;)Lcom/tds/protobuf/Internal$IntList;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$IntList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$IntList;

    .line 1997
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1998
    return-object p1
.end method

.method public visitLazyMessage(Lcom/tds/protobuf/LazyFieldLite;Lcom/tds/protobuf/LazyFieldLite;)Lcom/tds/protobuf/LazyFieldLite;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/LazyFieldLite;
    .param p2, "other"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 1974
    if-eqz p1, :cond_7

    .line 1975
    invoke-virtual {p1}, Lcom/tds/protobuf/LazyFieldLite;->hashCode()I

    move-result v0

    .local v0, "protoHash":I
    goto :goto_9

    .line 1977
    .end local v0    # "protoHash":I
    :cond_7
    const/16 v0, 0x25

    .line 1979
    .restart local v0    # "protoHash":I
    :goto_9
    iget v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1980
    return-object p1
.end method

.method public visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 5
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

    .line 1985
    .local p1, "mine":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    .local p2, "other":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1986
    return-object p1
.end method

.method public visitLong(ZJZJ)J
    .registers 9
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # J
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # J

    .line 1877
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-static {p2, p3}, Lcom/tds/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1878
    return-wide p2
.end method

.method public visitLongList(Lcom/tds/protobuf/Internal$LongList;Lcom/tds/protobuf/Internal$LongList;)Lcom/tds/protobuf/Internal$LongList;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$LongList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$LongList;

    .line 2015
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2016
    return-object p1
.end method

.method public visitMap(Lcom/tds/protobuf/MapFieldLite;Lcom/tds/protobuf/MapFieldLite;)Lcom/tds/protobuf/MapFieldLite;
    .registers 5
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

    .line 2037
    .local p1, "mine":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p2, "other":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/tds/protobuf/MapFieldLite;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2038
    return-object p1
.end method

.method public visitMessage(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1958
    .local p1, "mine":Lcom/tds/protobuf/MessageLite;, "TT;"
    .local p2, "other":Lcom/tds/protobuf/MessageLite;, "TT;"
    if-eqz p1, :cond_13

    .line 1959
    instance-of v0, p1, Lcom/tds/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_e

    .line 1960
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Lcom/tds/protobuf/GeneratedMessageLite;->hashCode(Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v0

    .local v0, "protoHash":I
    goto :goto_15

    .line 1962
    .end local v0    # "protoHash":I
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .restart local v0    # "protoHash":I
    goto :goto_15

    .line 1965
    .end local v0    # "protoHash":I
    :cond_13
    const/16 v0, 0x25

    .line 1967
    .restart local v0    # "protoHash":I
    :goto_15
    iget v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1968
    return-object p1
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1897
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/tds/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1898
    return-object p2
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1933
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1934
    return-object p2
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1909
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tds/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1910
    return-object p2
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1915
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1916
    return-object p2
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1903
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1904
    return-object p2
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1939
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1940
    return-object p2
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1921
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tds/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1922
    return-object p2
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1945
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->visitMessage(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public visitOneofNotSet(Z)V
    .registers 3
    .param p1, "minePresent"    # Z

    .line 1950
    if-nez p1, :cond_3

    .line 1953
    return-void

    .line 1951
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 1927
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1928
    return-object p2
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/String;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Ljava/lang/String;

    .line 1884
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 1885
    return-object p2
.end method

.method public visitUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 5
    .param p1, "mine"    # Lcom/tds/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 2031
    iget v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/tds/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    .line 2032
    return-object p1
.end method
