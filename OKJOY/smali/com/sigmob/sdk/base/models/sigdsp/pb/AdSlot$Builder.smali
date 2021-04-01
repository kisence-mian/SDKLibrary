.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation
.end field

.field public adslot_id:Ljava/lang/String;

.field public adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

.field public adslot_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public api_strategy_index:Ljava/lang/Integer;

.field public bidfloor:Ljava/lang/Integer;

.field public creative_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ext:Ljava/util/Map;
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

.field public latest_camp_id:Ljava/lang/String;

.field public latest_crid:Ljava/lang/String;

.field public material_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sdk_cached_ads:Ljava/util/Map;
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

.field public sdk_strategy_index:Ljava/lang/Integer;

.field public target_floor:Ljava/lang/Integer;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_BIDFLOOR:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->vid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ext:Ljava/util/Map;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_caches(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    return-object p0
.end method

.method public adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    return-object p0
.end method

.method public adslot_size(Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    return-object p0
.end method

.method public adslot_type(Ljava/util/List;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    return-object p0
.end method

.method public api_strategy_index(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    return-object p0
.end method

.method public bidfloor(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;
    .registers 19

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->vid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->target_floor:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ext:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v17

    invoke-direct/range {v1 .. v17}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public creative_type(Ljava/util/List;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    return-object p0
.end method

.method public ext(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ext:Ljava/util/Map;

    return-object p0
.end method

.method public latest_camp_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    return-object p0
.end method

.method public latest_crid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    return-object p0
.end method

.method public material_type(Ljava/util/List;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    return-object p0
.end method

.method public sdk_cached_ads(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    return-object p0
.end method

.method public sdk_strategy_index(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    return-object p0
.end method

.method public target_floor(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->target_floor:Ljava/lang/Integer;

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->vid:Ljava/lang/String;

    return-object p0
.end method
