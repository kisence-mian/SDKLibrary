.class public final Lcom/sigmob/wire/protobuf/MethodDescriptorProto;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/MethodDescriptorProto$ProtoAdapter_MethodDescriptorProto;,
        Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message<",
        "Lcom/sigmob/wire/protobuf/MethodDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLIENT_STREAMING:Ljava/lang/Boolean;

.field public static final DEFAULT_INPUT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_OUTPUT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SERVER_STREAMING:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final client_streaming:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final input_type:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final options:Lcom/sigmob/wire/protobuf/MethodOptions;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.MethodOptions#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final output_type:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final server_streaming:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$ProtoAdapter_MethodDescriptorProto;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$ProtoAdapter_MethodDescriptorProto;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->DEFAULT_CLIENT_STREAMING:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->DEFAULT_SERVER_STREAMING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/protobuf/MethodOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 15

    sget-object v7, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/protobuf/MethodOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/protobuf/MethodOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 9

    sget-object v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    iput-object p5, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/MethodOptions;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_58
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_5b
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->input_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->output_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->client_streaming:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->server_streaming:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", input_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->input_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", output_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->output_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    if-eqz v1, :cond_41

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_50

    const-string v1, ", client_streaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->client_streaming:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    if-eqz v1, :cond_5f

    const-string v1, ", server_streaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->server_streaming:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "MethodDescriptorProto{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
