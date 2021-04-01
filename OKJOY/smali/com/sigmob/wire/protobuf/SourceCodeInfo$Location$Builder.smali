.class public final Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public leading_comments:Ljava/lang/String;

.field public leading_detached_comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public span:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public trailing_comments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->path:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->span:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_detached_comments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->build()Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->path:Ljava/util/List;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->span:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_comments:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->trailing_comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_detached_comments:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public leading_comments(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_comments:Ljava/lang/String;

    return-object p0
.end method

.method public leading_detached_comments(Ljava/util/List;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->leading_detached_comments:Ljava/util/List;

    return-object p0
.end method

.method public path(Ljava/util/List;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->path:Ljava/util/List;

    return-object p0
.end method

.method public span(Ljava/util/List;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->span:Ljava/util/List;

    return-object p0
.end method

.method public trailing_comments(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location$Builder;->trailing_comments:Ljava/lang/String;

    return-object p0
.end method
