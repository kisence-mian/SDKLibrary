.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_is_expired:Ljava/lang/Boolean;

.field public api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

.field public app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

.field public device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

.field public network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

.field public req_timestamp:Ljava/lang/Long;

.field public request_id:Ljava/lang/String;

.field public request_scene_type:Ljava/lang/Integer;

.field public slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_id:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_REQ_TIMESTAMP:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->req_timestamp:Ljava/lang/Long;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_REQUEST_SCENE_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_AD_IS_EXPIRED:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_is_expired(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    return-object p0
.end method

.method public api_version(Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    return-object p0
.end method

.method public app(Lcom/sigmob/sdk/common/models/sigdsp/pb/App;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;
    .registers 15

    new-instance v13, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    iget-object v5, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    iget-object v6, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v7, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->req_timestamp:Ljava/lang/Long;

    iget-object v8, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    iget-object v11, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;Lcom/sigmob/sdk/common/models/sigdsp/pb/App;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v13
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    move-result-object v0

    return-object v0
.end method

.method public device(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    return-object p0
.end method

.method public network(Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    return-object p0
.end method

.method public privacy(Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    return-object p0
.end method

.method public req_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->req_timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public request_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public request_scene_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public slots(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    return-object p0
.end method
