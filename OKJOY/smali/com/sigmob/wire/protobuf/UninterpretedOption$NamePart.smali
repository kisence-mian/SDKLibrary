.class public final Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IS_EXTENSION:Ljava/lang/Boolean;

.field public static final DEFAULT_NAME_PART:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final is_extension:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field

.field public final name_part:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REQUIRED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$ProtoAdapter_NamePart;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$ProtoAdapter_NamePart;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->DEFAULT_IS_EXTENSION:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 5

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

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
    instance-of v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_20
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->newBuilder()Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", name_part="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->name_part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is_extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->is_extension:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "NamePart{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
