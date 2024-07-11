.class public final Lcom/sigmob/wire/protobuf/MessageOptions;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/MessageOptions$ProtoAdapter_MessageOptions;,
        Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message<",
        "Lcom/sigmob/wire/protobuf/MessageOptions;",
        "Lcom/sigmob/wire/protobuf/MessageOptions$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/MessageOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEPRECATED:Ljava/lang/Boolean;

.field public static final DEFAULT_MAP_ENTRY:Ljava/lang/Boolean;

.field public static final DEFAULT_MESSAGE_SET_WIRE_FORMAT:Ljava/lang/Boolean;

.field public static final DEFAULT_NO_STANDARD_DESCRIPTOR_ACCESSOR:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final deprecated:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x3
    .end annotation
.end field

.field public final map_entry:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x7
    .end annotation
.end field

.field public final message_set_wire_format:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1
    .end annotation
.end field

.field public final no_standard_descriptor_accessor:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x2
    .end annotation
.end field

.field public final uninterpreted_option:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.UninterpretedOption#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3e7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/MessageOptions$ProtoAdapter_MessageOptions;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/MessageOptions$ProtoAdapter_MessageOptions;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->DEFAULT_MESSAGE_SET_WIRE_FORMAT:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->DEFAULT_NO_STANDARD_DESCRIPTOR_ACCESSOR:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->DEFAULT_DEPRECATED:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->DEFAULT_MAP_ENTRY:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)V"
        }
    .end annotation

    sget-object v6, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/wire/protobuf/MessageOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    const-string p1, "uninterpreted_option"

    invoke-static {p1, p5}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/protobuf/MessageOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MessageOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/MessageOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    iget-object p1, p1, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MessageOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_4a
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MessageOptions;->newBuilder()Lcom/sigmob/wire/protobuf/MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->message_set_wire_format:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->map_entry:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    const-string v2, "uninterpreted_option"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MessageOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const-string v1, ", message_set_wire_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->message_set_wire_format:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    if-eqz v1, :cond_23

    const-string v1, ", no_standard_descriptor_accessor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    if-eqz v1, :cond_32

    const-string v1, ", deprecated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    if-eqz v1, :cond_41

    const-string v1, ", map_entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->map_entry:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, ", uninterpreted_option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_54
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MessageOptions{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
