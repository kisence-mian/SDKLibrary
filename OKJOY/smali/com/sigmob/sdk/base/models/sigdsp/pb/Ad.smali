.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ADSLOT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_AD_SOURCE_CHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_AD_SOURCE_LOGO:Ljava/lang/String; = ""

.field public static final DEFAULT_AD_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_BID_PRICE:Ljava/lang/Integer;

.field public static final DEFAULT_CAMP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CRID:Ljava/lang/String; = ""

.field public static final DEFAULT_CUST_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_DISPLAY_ORIENTATION:Ljava/lang/Integer;

.field public static final DEFAULT_EXPIRED_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_FORBIDEN_PARSE_LANDINGPAGE:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_OVERRIDE:Ljava/lang/Integer;

.field public static final DEFAULT_PRODUCT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SETTLEMENT_PRICE_ENC:Ljava/lang/String; = ""

.field public static final DEFAULT_VID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.AdSetting#ADAPTER"
        tag = 0x13
    .end annotation
.end field

.field public final ad_source_channel:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xd
    .end annotation
.end field

.field public final ad_source_logo:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xc
    .end annotation
.end field

.field public final ad_tracking:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Tracking#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;",
            ">;"
        }
    .end annotation
.end field

.field public final ad_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xe
    .end annotation
.end field

.field public final adslot_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final bid_price:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x8
    .end annotation
.end field

.field public final camp_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field

.field public final crid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final cust_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final display_orientation:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x12
    .end annotation
.end field

.field public final expired_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x10
    .end annotation
.end field

.field public final forbiden_parse_landingpage:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final is_override:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final materials:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.MaterialMeta#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
            ">;"
        }
    .end annotation
.end field

.field public final options:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation

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

.field public final product_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final settlement_price_enc:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xa
    .end annotation
.end field

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$ProtoAdapter_Ad;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$ProtoAdapter_Ad;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_BID_PRICE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_IS_OVERRIDE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_AD_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_EXPIRED_TIME:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_FORBIDEN_PARSE_LANDINGPAGE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->DEFAULT_DISPLAY_ORIENTATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;)V
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
            ")V"
        }
    .end annotation

    sget-object v20, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-direct/range {v0 .. v20}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Tracking;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p20

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    const-string v1, "materials"

    invoke-static {v1, p6}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    const-string v1, "ad_tracking"

    invoke-static {v1, p7}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    const-string v1, "options"

    move-object/from16 v0, p15

    invoke-static {v1, v0}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_d9
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_fa

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    if-eqz v0, :cond_101

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_79
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_86
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_93
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_ad
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_ba
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_d0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_dd
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_ea
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    if-eqz v2, :cond_f7

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;->hashCode()I

    move-result v1

    :cond_f7
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_fa
    return v0

    :cond_fb
    move v0, v1

    goto/16 :goto_19

    :cond_fe
    move v0, v1

    goto/16 :goto_26

    :cond_101
    move v0, v1

    goto/16 :goto_33

    :cond_104
    move v0, v1

    goto/16 :goto_40

    :cond_107
    move v0, v1

    goto/16 :goto_4d

    :cond_10a
    move v0, v1

    goto/16 :goto_6c

    :cond_10d
    move v0, v1

    goto/16 :goto_79

    :cond_110
    move v0, v1

    goto/16 :goto_86

    :cond_113
    move v0, v1

    goto/16 :goto_93

    :cond_116
    move v0, v1

    goto :goto_a0

    :cond_118
    move v0, v1

    goto :goto_ad

    :cond_11a
    move v0, v1

    goto :goto_ba

    :cond_11c
    move v0, v1

    goto :goto_d0

    :cond_11e
    move v0, v1

    goto :goto_dd

    :cond_120
    move v0, v1

    goto :goto_ea
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->adslot_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->cust_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->camp_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->crid:Ljava/lang/String;

    const-string v1, "materials"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->materials:Ljava/util/List;

    const-string v1, "ad_tracking"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->ad_tracking:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->bid_price:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->product_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->settlement_price_enc:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->is_override:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->ad_source_logo:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->ad_source_channel:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->ad_type:Ljava/lang/Integer;

    const-string v1, "options"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->options:Ljava/util/Map;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->expired_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->display_orientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", adslot_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->adslot_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, ", cust_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", camp_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->camp_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", crid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, ", materials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->materials:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ", ad_tracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_tracking:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_76
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    if-eqz v1, :cond_85

    const-string v1, ", bid_price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_85
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    if-eqz v1, :cond_94

    const-string v1, ", product_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_94
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    if-eqz v1, :cond_a3

    const-string v1, ", settlement_price_enc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    if-eqz v1, :cond_b2

    const-string v1, ", is_override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b2
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    if-eqz v1, :cond_c1

    const-string v1, ", ad_source_logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_logo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c1
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    if-eqz v1, :cond_d0

    const-string v1, ", ad_source_channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_source_channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    if-eqz v1, :cond_df

    const-string v1, ", ad_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_df
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->options:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f2
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_101

    const-string v1, ", expired_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_101
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    if-eqz v1, :cond_110

    const-string v1, ", forbiden_parse_landingpage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_110
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_11f

    const-string v1, ", display_orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    if-eqz v1, :cond_12e

    const-string v1, ", ad_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12e
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Ad{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
