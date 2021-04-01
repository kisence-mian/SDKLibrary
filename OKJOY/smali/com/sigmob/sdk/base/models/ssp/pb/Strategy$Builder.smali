.class public final Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public adapter:Ljava/lang/String;

.field public channel_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public adapter(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;

    move-result-object v0

    return-object v0
.end method

.method public channel_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    return-object p0
.end method
