.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$ProtoAdapter_AdSlot;,
        Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ADSLOT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_ALGORITHM_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_BIDFLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_LATEST_CAMP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_LATEST_CRID:Ljava/lang/String; = ""

.field public static final DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_VID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ad_caches:Ljava/util/Map;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.AdCache#ADAPTER"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
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

.field public final adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Size#ADAPTER"
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final algorithm_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
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

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Video#ADAPTER"
        tag = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$ProtoAdapter_AdSlot;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$ProtoAdapter_AdSlot;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->DEFAULT_BIDFLOOR:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->DEFAULT_ALGORITHM_FLOOR:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
            ")V"
        }
    .end annotation

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

    sget-object v17, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct/range {v0 .. v17}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    const-string v1, "adslot_type"

    move-object v2, p3

    invoke-static {v1, p3}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    move-object v1, p4

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    move-object v1, p5

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    const-string v1, "material_type"

    move-object v2, p8

    invoke-static {v1, p8}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    move-object v1, p10

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    const-string v1, "sdk_cached_ads"

    move-object v2, p11

    invoke-static {v1, p11}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    const-string v1, "creative_type"

    move-object v2, p12

    invoke-static {v1, p12}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    const-string v1, "ext"

    move-object/from16 v2, p14

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    const-string v1, "ad_caches"

    move-object/from16 v2, p15

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    goto :goto_bc

    :cond_bb
    move v0, v2

    :goto_bc
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_c5

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_86

    :cond_85
    move v1, v2

    :goto_86
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a5

    :cond_a4
    move v1, v2

    :goto_a5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;->hashCode()I

    move-result v2

    :cond_c2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_c5
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    const-string v2, "adslot_type"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    const-string v2, "material_type"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    const-string v2, "sdk_cached_ads"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    const-string v2, "creative_type"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->algorithm_floor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    const-string v2, "ext"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->ext:Ljava/util/Map;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    const-string v2, "ad_caches"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", adslot_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    if-eqz v1, :cond_23

    const-string v1, ", adslot_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, ", adslot_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->adslot_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v1, :cond_45

    const-string v1, ", bidfloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_45
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    if-eqz v1, :cond_54

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v1, :cond_63

    const-string v1, ", latest_camp_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v1, :cond_72

    const-string v1, ", latest_crid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, ", material_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->material_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_85
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_94

    const-string v1, ", sdk_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_94
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_a3

    const-string v1, ", api_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a3
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, ", sdk_cached_ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b6
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c9

    const-string v1, ", creative_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->creative_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_d8

    const-string v1, ", algorithm_floor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d8
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_eb

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ext:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_eb
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fe

    const-string v1, ", ad_caches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_fe
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    if-eqz v1, :cond_10d

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;->video:Lcom/sigmob/sdk/common/models/sigdsp/pb/Video;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10d
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
