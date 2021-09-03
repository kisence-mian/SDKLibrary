.class public Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/tds/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2047
    new-instance v0, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2049
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

    .line 2054
    if-eqz p3, :cond_4

    move v0, p4

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method public visitBooleanList(Lcom/tds/protobuf/Internal$BooleanList;Lcom/tds/protobuf/Internal$BooleanList;)Lcom/tds/protobuf/Internal$BooleanList;
    .registers 6
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$BooleanList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$BooleanList;

    .line 2182
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 2183
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$BooleanList;->size()I

    move-result v1

    .line 2184
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2185
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2186
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$BooleanList;

    move-result-object p1

    .line 2188
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    .line 2191
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
.end method

.method public visitByteString(ZLcom/tds/protobuf/ByteString;ZLcom/tds/protobuf/ByteString;)Lcom/tds/protobuf/ByteString;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Lcom/tds/protobuf/ByteString;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Lcom/tds/protobuf/ByteString;

    .line 2087
    if-eqz p3, :cond_4

    move-object v0, p4

    goto :goto_5

    :cond_4
    move-object v0, p2

    :goto_5
    return-object v0
.end method

.method public visitDouble(ZDZD)D
    .registers 9
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # D
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # D

    .line 2065
    if-eqz p4, :cond_4

    move-wide v0, p5

    goto :goto_5

    :cond_4
    move-wide v0, p2

    :goto_5
    return-wide v0
.end method

.method public visitDoubleList(Lcom/tds/protobuf/Internal$DoubleList;Lcom/tds/protobuf/Internal$DoubleList;)Lcom/tds/protobuf/Internal$DoubleList;
    .registers 6
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$DoubleList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$DoubleList;

    .line 2210
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 2211
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$DoubleList;->size()I

    move-result v1

    .line 2212
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2213
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2214
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$DoubleList;

    move-result-object p1

    .line 2216
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    .line 2219
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
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

    .line 2254
    .local p1, "mine":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p2, "other":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<Lcom/tds/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p1}, Lcom/tds/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2255
    invoke-virtual {p1}, Lcom/tds/protobuf/FieldSet;->clone()Lcom/tds/protobuf/FieldSet;

    move-result-object p1

    .line 2257
    :cond_a
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/FieldSet;->mergeFrom(Lcom/tds/protobuf/FieldSet;)V

    .line 2258
    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # F
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # F

    .line 2070
    if-eqz p3, :cond_4

    move v0, p4

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method public visitFloatList(Lcom/tds/protobuf/Internal$FloatList;Lcom/tds/protobuf/Internal$FloatList;)Lcom/tds/protobuf/Internal$FloatList;
    .registers 6
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$FloatList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$FloatList;

    .line 2224
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 2225
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$FloatList;->size()I

    move-result v1

    .line 2226
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2227
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2228
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$FloatList;

    move-result-object p1

    .line 2230
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    .line 2233
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
.end method

.method public visitInt(ZIZI)I
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # I
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # I

    .line 2059
    if-eqz p3, :cond_4

    move v0, p4

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method public visitIntList(Lcom/tds/protobuf/Internal$IntList;Lcom/tds/protobuf/Internal$IntList;)Lcom/tds/protobuf/Internal$IntList;
    .registers 6
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$IntList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$IntList;

    .line 2196
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 2197
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$IntList;->size()I

    move-result v1

    .line 2198
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2199
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2200
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$IntList;

    move-result-object p1

    .line 2202
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 2205
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
.end method

.method public visitLazyMessage(Lcom/tds/protobuf/LazyFieldLite;Lcom/tds/protobuf/LazyFieldLite;)Lcom/tds/protobuf/LazyFieldLite;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/LazyFieldLite;
    .param p2, "other"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 2157
    if-eqz p2, :cond_d

    .line 2158
    if-nez p1, :cond_a

    .line 2159
    new-instance v0, Lcom/tds/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/tds/protobuf/LazyFieldLite;-><init>()V

    move-object p1, v0

    .line 2161
    :cond_a
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/LazyFieldLite;->merge(Lcom/tds/protobuf/LazyFieldLite;)V

    .line 2163
    :cond_d
    return-object p1
.end method

.method public visitList(Lcom/tds/protobuf/Internal$ProtobufList;Lcom/tds/protobuf/Internal$ProtobufList;)Lcom/tds/protobuf/Internal$ProtobufList;
    .registers 6
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

    .line 2168
    .local p1, "mine":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    .local p2, "other":Lcom/tds/protobuf/Internal$ProtobufList;, "Lcom/tds/protobuf/Internal$ProtobufList<TT;>;"
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 2169
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 2170
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2171
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2172
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 2174
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 2177
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
.end method

.method public visitLong(ZJZJ)J
    .registers 9
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # J
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # J

    .line 2075
    if-eqz p4, :cond_4

    move-wide v0, p5

    goto :goto_5

    :cond_4
    move-wide v0, p2

    :goto_5
    return-wide v0
.end method

.method public visitLongList(Lcom/tds/protobuf/Internal$LongList;Lcom/tds/protobuf/Internal$LongList;)Lcom/tds/protobuf/Internal$LongList;
    .registers 6
    .param p1, "mine"    # Lcom/tds/protobuf/Internal$LongList;
    .param p2, "other"    # Lcom/tds/protobuf/Internal$LongList;

    .line 2238
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 2239
    .local v0, "size":I
    invoke-interface {p2}, Lcom/tds/protobuf/Internal$LongList;->size()I

    move-result v1

    .line 2240
    .local v1, "otherSize":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 2241
    invoke-interface {p1}, Lcom/tds/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2242
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/tds/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/tds/protobuf/Internal$LongList;

    move-result-object p1

    .line 2244
    :cond_18
    invoke-interface {p1, p2}, Lcom/tds/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    .line 2247
    :cond_1b
    if-lez v0, :cond_1f

    move-object v2, p1

    goto :goto_20

    :cond_1f
    move-object v2, p2

    :goto_20
    return-object v2
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

    .line 2271
    .local p1, "mine":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    .local p2, "other":Lcom/tds/protobuf/MapFieldLite;, "Lcom/tds/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p2}, Lcom/tds/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2272
    invoke-virtual {p1}, Lcom/tds/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2273
    invoke-virtual {p1}, Lcom/tds/protobuf/MapFieldLite;->mutableCopy()Lcom/tds/protobuf/MapFieldLite;

    move-result-object p1

    .line 2275
    :cond_10
    invoke-virtual {p1, p2}, Lcom/tds/protobuf/MapFieldLite;->mergeFrom(Lcom/tds/protobuf/MapFieldLite;)V

    .line 2277
    :cond_13
    return-object p1
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

    .line 2148
    .local p1, "mine":Lcom/tds/protobuf/MessageLite;, "TT;"
    .local p2, "other":Lcom/tds/protobuf/MessageLite;, "TT;"
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 2149
    invoke-interface {p1}, Lcom/tds/protobuf/MessageLite;->toBuilder()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tds/protobuf/MessageLite$Builder;->mergeFrom(Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/protobuf/MessageLite$Builder;->build()Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 2152
    :cond_11
    if-eqz p1, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p2

    :goto_16
    return-object v0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2092
    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2122
    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2102
    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2107
    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2097
    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2127
    if-eqz p1, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/LazyFieldLite;

    goto :goto_b

    :cond_6
    new-instance v0, Lcom/tds/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/tds/protobuf/LazyFieldLite;-><init>()V

    .line 2128
    .local v0, "lazy":Lcom/tds/protobuf/LazyFieldLite;
    :goto_b
    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/LazyFieldLite;

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/LazyFieldLite;->merge(Lcom/tds/protobuf/LazyFieldLite;)V

    .line 2129
    return-object v0
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2112
    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2134
    if-eqz p1, :cond_d

    .line 2135
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    move-object v1, p3

    check-cast v1, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/tds/protobuf/MessageLite;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 2137
    :cond_d
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .registers 2
    .param p1, "minePresent"    # Z

    .line 2142
    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2117
    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/String;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Ljava/lang/String;

    .line 2081
    if-eqz p3, :cond_4

    move-object v0, p4

    goto :goto_5

    :cond_4
    move-object v0, p2

    :goto_5
    return-object v0
.end method

.method public visitUnknownFields(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;
    .registers 4
    .param p1, "mine"    # Lcom/tds/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/tds/protobuf/UnknownFieldSetLite;

    .line 2265
    invoke-static {}, Lcom/tds/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_8

    move-object v0, p1

    goto :goto_c

    .line 2266
    :cond_8
    invoke-static {p1, p2}, Lcom/tds/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/tds/protobuf/UnknownFieldSetLite;Lcom/tds/protobuf/UnknownFieldSetLite;)Lcom/tds/protobuf/UnknownFieldSetLite;

    move-result-object v0

    :goto_c
    return-object v0
.end method
