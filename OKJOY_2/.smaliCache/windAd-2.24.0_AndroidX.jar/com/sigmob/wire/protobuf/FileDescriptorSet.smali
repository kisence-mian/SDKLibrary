.class public final Lcom/sigmob/wire/protobuf/FileDescriptorSet;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;,
        Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message<",
        "Lcom/sigmob/wire/protobuf/FileDescriptorSet;",
        "Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/wire/protobuf/FileDescriptorSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final file:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FileDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;-><init>(Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p2}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    const-string p2, "file"

    invoke-static {p2, p1}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    iget-object p1, p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_17
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->newBuilder()Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    const-string v2, "file"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->file:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "FileDescriptorSet{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
