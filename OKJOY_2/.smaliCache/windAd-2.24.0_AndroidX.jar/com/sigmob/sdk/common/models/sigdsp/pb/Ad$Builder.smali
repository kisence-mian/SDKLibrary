.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

.field public ad_source_channel:Ljava/lang/String;

.field public ad_source_logo:Ljava/lang/String;

.field public ad_tracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;",
            ">;"
        }
    .end annotation
.end field

.field public ad_type:Ljava/lang/Integer;

.field public adslot_id:Ljava/lang/String;

.field public bid_price:Ljava/lang/Integer;

.field public bid_type:Ljava/lang/Integer;

.field public camp_id:Ljava/lang/String;

.field public crid:Ljava/lang/String;

.field public cust_id:Ljava/lang/String;

.field public display_orientation:Ljava/lang/Integer;

.field public expired_time:Ljava/lang/Integer;

.field public forbiden_parse_landingpage:Ljava/lang/Boolean;

.field public is_override:Ljava/lang/Integer;

.field public materials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;",
            ">;"
        }
    .end annotation
.end field

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

.field public product_id:Ljava/lang/String;

.field public settlement_price_enc:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->adslot_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->vid:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->cust_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->camp_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->crid:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_BID_PRICE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->bid_price:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->settlement_price_enc:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_IS_OVERRIDE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->is_override:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_logo:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_channel:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_AD_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_EXPIRED_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->expired_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_FORBIDEN_PARSE_LANDINGPAGE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->DEFAULT_DISPLAY_ORIENTATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->display_orientation:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->materials:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_tracking:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_setting(Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    return-object p0
.end method

.method public ad_source_channel(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_channel:Ljava/lang/String;

    return-object p0
.end method

.method public ad_source_logo(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_logo:Ljava/lang/String;

    return-object p0
.end method

.method public ad_tracking(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_tracking:Ljava/util/List;

    return-object p0
.end method

.method public ad_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->adslot_id:Ljava/lang/String;

    return-object p0
.end method

.method public bid_price(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->bid_price:Ljava/lang/Integer;

    return-object p0
.end method

.method public bid_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->bid_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;
    .registers 26

    move-object/from16 v0, p0

    new-instance v23, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->adslot_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->vid:Ljava/lang/String;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->cust_id:Ljava/lang/String;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->camp_id:Ljava/lang/String;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->crid:Ljava/lang/String;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->materials:Ljava/util/List;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_tracking:Ljava/util/List;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->bid_price:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->product_id:Ljava/lang/String;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->settlement_price_enc:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->is_override:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_logo:Ljava/lang/String;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_source_channel:Ljava/lang/String;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_type:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->options:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->expired_time:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->display_orientation:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->ad_setting:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->bid_type:Ljava/lang/Integer;

    move-object/from16 v21, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v22

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSetting;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v23
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v0

    return-object v0
.end method

.method public camp_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->camp_id:Ljava/lang/String;

    return-object p0
.end method

.method public crid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->crid:Ljava/lang/String;

    return-object p0
.end method

.method public cust_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->cust_id:Ljava/lang/String;

    return-object p0
.end method

.method public display_orientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->display_orientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->expired_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public forbiden_parse_landingpage(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public is_override(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->is_override:Ljava/lang/Integer;

    return-object p0
.end method

.method public materials(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->materials:Ljava/util/List;

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->options:Ljava/util/Map;

    return-object p0
.end method

.method public product_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->product_id:Ljava/lang/String;

    return-object p0
.end method

.method public settlement_price_enc(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->settlement_price_enc:Ljava/lang/String;

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad$Builder;->vid:Ljava/lang/String;

    return-object p0
.end method
