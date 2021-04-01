.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_type:Ljava/lang/Integer;

.field public crids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->crids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ad_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->ad_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->ad_type:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->crids:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;-><init>(Ljava/lang/Integer;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;

    move-result-object v0

    return-object v0
.end method

.method public crids(Ljava/util/List;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache$Builder;->crids:Ljava/util/List;

    return-object p0
.end method
