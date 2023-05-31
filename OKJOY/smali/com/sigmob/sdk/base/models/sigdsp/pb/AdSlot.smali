.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ADSLOT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_BIDFLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_LATEST_CAMP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_LATEST_CRID:Ljava/lang/String; = ""

.field public static final DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_TARGET_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_VID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ad_caches:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.AdCache#ADAPTER"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation

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

.field public final adslot_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Size#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final adslot_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final api_strategy_index:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final bidfloor:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final creative_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final ext:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
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

.field public final latest_camp_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final latest_crid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final material_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sdk_cached_ads:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
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

.field public final sdk_strategy_index:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final target_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$ProtoAdapter_AdSlot;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$ProtoAdapter_AdSlot;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_BIDFLOOR:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->DEFAULT_TARGET_FLOOR:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;)V"
        }
    .end annotation

    sget-object v16, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v16}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p16

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    const-string v1, "adslot_type"

    invoke-static {v1, p3}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    const-string v1, "material_type"

    invoke-static {v1, p8}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    const-string v1, "sdk_cached_ads"

    invoke-static {v1, p11}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    const-string v1, "creative_type"

    invoke-static {v1, p12}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    const-string v1, "ext"

    move-object/from16 v0, p14

    invoke-static {v1, v0}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    const-string v1, "ad_caches"

    move-object/from16 v0, p15

    invoke-static {v1, v0}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_b1
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_ba

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_56
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_63
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_79
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_86
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    if-eqz v2, :cond_a5

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_a5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_ba
    return v0

    :cond_bb
    move v0, v1

    goto/16 :goto_19

    :cond_be
    move v0, v1

    goto/16 :goto_26

    :cond_c1
    move v0, v1

    goto/16 :goto_3c

    :cond_c4
    move v0, v1

    goto :goto_49

    :cond_c6
    move v0, v1

    goto :goto_56

    :cond_c8
    move v0, v1

    goto :goto_63

    :cond_ca
    move v0, v1

    goto :goto_79

    :cond_cc
    move v0, v1

    goto :goto_86
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    const-string v1, "adslot_type"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    const-string v1, "material_type"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    const-string v1, "sdk_cached_ads"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    const-string v1, "creative_type"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->target_floor:Ljava/lang/Integer;

    const-string v1, "ext"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ext:Ljava/util/Map;

    const-string v1, "ad_caches"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", adslot_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v1, :cond_23

    const-string v1, ", adslot_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, ", adslot_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v1, :cond_45

    const-string v1, ", bidfloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v1, :cond_63

    const-string v1, ", latest_camp_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v1, :cond_72

    const-string v1, ", latest_crid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, ", material_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_85
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_94

    const-string v1, ", sdk_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_94
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_a3

    const-string v1, ", api_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a3
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, ", sdk_cached_ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c9

    const-string v1, ", creative_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_d8

    const-string v1, ", target_floor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->target_floor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_eb

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_eb
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fe

    const-string v1, ", ad_caches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_fe
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AdSlot{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
