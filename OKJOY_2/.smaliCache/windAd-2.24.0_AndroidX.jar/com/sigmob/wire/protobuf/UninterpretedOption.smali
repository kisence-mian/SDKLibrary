.class public final Lcom/sigmob/wire/protobuf/UninterpretedOption;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;,
        Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;,
        Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message<",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AGGREGATE_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_DOUBLE_VALUE:Ljava/lang/Double;

.field public static final DEFAULT_IDENTIFIER_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_NEGATIVE_INT_VALUE:Ljava/lang/Long;

.field public static final DEFAULT_POSITIVE_INT_VALUE:Ljava/lang/Long;

.field public static final DEFAULT_STRING_VALUE:Lcom/sigmob/wire/okio/ByteString;

.field private static final serialVersionUID:J


# instance fields
.field public final aggregate_value:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final double_value:Ljava/lang/Double;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x6
    .end annotation
.end field

.field public final identifier_value:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final name:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.UninterpretedOption$NamePart#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field public final negative_int_value:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0x5
    .end annotation
.end field

.field public final positive_int_value:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x4
    .end annotation
.end field

.field public final string_value:Lcom/sigmob/wire/okio/ByteString;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->DEFAULT_POSITIVE_INT_VALUE:Ljava/lang/Long;

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->DEFAULT_NEGATIVE_INT_VALUE:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->DEFAULT_DOUBLE_VALUE:Ljava/lang/Double;

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->DEFAULT_STRING_VALUE:Lcom/sigmob/wire/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Lcom/sigmob/wire/okio/ByteString;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v8, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/wire/protobuf/UninterpretedOption;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Lcom/sigmob/wire/okio/ByteString;",
            "Ljava/lang/String;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p8}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    const-string p8, "name"

    invoke-static {p8, p1}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    iput-object p4, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    iput-object p6, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    iput-object p7, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    iget-object p1, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_64

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v1

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_61
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_64
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->newBuilder()Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    const-string v2, "name"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->identifier_value:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->positive_int_value:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->negative_int_value:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->double_value:Ljava/lang/Double;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->string_value:Lcom/sigmob/wire/okio/ByteString;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->aggregate_value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    if-eqz v1, :cond_27

    const-string v1, ", identifier_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    if-eqz v1, :cond_36

    const-string v1, ", positive_int_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    if-eqz v1, :cond_45

    const-string v1, ", negative_int_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    if-eqz v1, :cond_54

    const-string v1, ", double_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    if-eqz v1, :cond_63

    const-string v1, ", string_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    if-eqz v1, :cond_72

    const-string v1, ", aggregate_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "UninterpretedOption{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
