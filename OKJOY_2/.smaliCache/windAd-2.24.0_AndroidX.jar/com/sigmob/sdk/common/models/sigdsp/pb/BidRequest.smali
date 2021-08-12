.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;,
        Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AD_IS_EXPIRED:Ljava/lang/Boolean;

.field public static final DEFAULT_REQUEST_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_REQUEST_SCENE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_REQ_TIMESTAMP:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final ad_is_expired:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Version#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.App#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Device#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Network#ADAPTER"
        tag = 0x5
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.Privacy#ADAPTER"
        tag = 0xa
    .end annotation
.end field

.field public final req_timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0x7
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final request_scene_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x8
    .end annotation
.end field

.field public final slots:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.sigdsp.pb.AdSlot#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_REQ_TIMESTAMP:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_REQUEST_SCENE_TYPE:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->DEFAULT_AD_IS_EXPIRED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;Lcom/sigmob/sdk/common/models/sigdsp/pb/App;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;Ljava/util/Map;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/App;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v12, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;Lcom/sigmob/sdk/common/models/sigdsp/pb/App;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;Lcom/sigmob/sdk/common/models/sigdsp/pb/App;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;Ljava/util/Map;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/App;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p12}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iput-object p3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    iput-object p4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    iput-object p5, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    const-string p1, "slots"

    invoke-static {p1, p6}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    iput-object p7, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    iput-object p8, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    const-string p1, "options"

    invoke-static {p1, p11}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_8a

    :cond_89
    move v0, v2

    :goto_8a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_94

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_7d

    :cond_7c
    move v1, v2

    :goto_7d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;->hashCode()I

    move-result v2

    :cond_88
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_94
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    const-string v2, "slots"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->req_timestamp:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    const-string v2, "options"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    if-eqz v1, :cond_23

    const-string v1, ", api_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    if-eqz v1, :cond_32

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    if-eqz v1, :cond_41

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    if-eqz v1, :cond_50

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    const-string v1, ", slots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_72

    const-string v1, ", req_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_72
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    if-eqz v1, :cond_81

    const-string v1, ", request_scene_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_81
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    if-eqz v1, :cond_90

    const-string v1, ", ad_is_expired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_90
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    if-eqz v1, :cond_9f

    const-string v1, ", privacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9f
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b2

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b2
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BidRequest{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
