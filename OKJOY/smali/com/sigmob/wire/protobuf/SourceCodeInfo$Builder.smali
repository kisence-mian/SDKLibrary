.class public final Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo;",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public location:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->location:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->build()Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/SourceCodeInfo;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->location:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/protobuf/SourceCodeInfo;-><init>(Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public location(Ljava/util/List;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->location:Ljava/util/List;

    return-object p0
.end method
