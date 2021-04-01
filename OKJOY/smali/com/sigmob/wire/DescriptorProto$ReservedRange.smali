.class public final Lcom/sigmob/wire/DescriptorProto$ReservedRange;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
        "Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_END:Ljava/lang/Integer;

.field public static final DEFAULT_START:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final end:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x2
    .end annotation
.end field

.field public final start:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;

    invoke-direct {v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;-><init>()V

    sput-object v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->DEFAULT_START:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->DEFAULT_END:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 5

    sget-object v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_26
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_19
.end method

.method public newBuilder()Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->start:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->end:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->newBuilder()Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ReservedRange{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
