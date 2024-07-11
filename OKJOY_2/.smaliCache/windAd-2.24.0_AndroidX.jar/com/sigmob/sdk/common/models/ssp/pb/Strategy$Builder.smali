.class public final Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_expire_time:Ljava/lang/Integer;

.field public adapter:Ljava/lang/String;

.field public channel_id:Ljava/lang/String;

.field public enable_extra_close_callback:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->DEFAULT_AD_EXPIRE_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->ad_expire_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->DEFAULT_ENABLE_EXTRA_CLOSE_CALLBACK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_expire_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->ad_expire_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public adapter(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;
    .registers 10

    new-instance v8, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->adapter:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->ad_expire_time:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v8
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;

    move-result-object v0

    return-object v0
.end method

.method public channel_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->channel_id:Ljava/lang/String;

    return-object p0
.end method

.method public enable_extra_close_callback(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->enable_extra_close_callback:Ljava/lang/Boolean;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy$Builder;->options:Ljava/util/Map;

    return-object p0
.end method
