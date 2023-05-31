.class public final Lcom/sigmob/wire/protobuf/EnumDescriptorProto;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final options:Lcom/sigmob/wire/protobuf/EnumOptions;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.EnumOptions#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final value:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.EnumValueDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$ProtoAdapter_EnumDescriptorProto;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$ProtoAdapter_EnumDescriptorProto;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/protobuf/EnumOptions;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/EnumOptions;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/protobuf/EnumOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/protobuf/EnumOptions;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/EnumOptions;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    if-eqz v2, :cond_2f

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/EnumOptions;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_19
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->name:Ljava/lang/String;

    const-string v1, "value"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->value:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->value:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    if-eqz v1, :cond_36

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "EnumDescriptorProto{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
