.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;",
            ">;"
        }
    .end annotation
.end field

.field public handle_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public handle_type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->handle_name:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->handle_type:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->handle_name:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->events:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;-><init>(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle;

    move-result-object v0

    return-object v0
.end method

.method public events(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->events:Ljava/util/List;

    return-object p0
.end method

.method public handle_name(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->handle_name:Ljava/util/List;

    return-object p0
.end method

.method public handle_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEventHandle$Builder;->handle_type:Ljava/lang/Integer;

    return-object p0
.end method
