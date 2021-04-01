.class public final Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/DescriptorProto$ExtensionRange;",
        "Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public end:Ljava/lang/Integer;

.field public start:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/wire/DescriptorProto$ExtensionRange;
    .registers 5

    new-instance v0, Lcom/sigmob/wire/DescriptorProto$ExtensionRange;

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;->start:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;->end:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/DescriptorProto$ExtensionRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;->build()Lcom/sigmob/wire/DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public end(Ljava/lang/Integer;)Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;->end:Ljava/lang/Integer;

    return-object p0
.end method

.method public start(Ljava/lang/Integer;)Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/DescriptorProto$ExtensionRange$Builder;->start:Ljava/lang/Integer;

    return-object p0
.end method
