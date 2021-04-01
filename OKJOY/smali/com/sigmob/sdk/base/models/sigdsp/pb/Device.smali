.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANDROID_API_LEVEL:Ljava/lang/Integer;

.field public static final DEFAULT_BATTERY_LEVEL:Ljava/lang/Float;

.field public static final DEFAULT_BATTERY_SAVE_ENABLED:Ljava/lang/Boolean;

.field public static final DEFAULT_BATTERY_STATE:Ljava/lang/Integer;

.field public static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICE_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_DISK_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_DPI:Ljava/lang/Integer;

.field public static final DEFAULT_FREE_DISK_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_IS_ROOT:Ljava/lang/Boolean;

.field public static final DEFAULT_MEM_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_SD_FREE_DISK_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_SD_TOTAL_DISK_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_START_TIMESTAMP:Ljava/lang/Long;

.field public static final DEFAULT_TOTAL_DISK_SIZE:Ljava/lang/Long;

.field public static final DEFAULT_VENDOR:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final android_api_level:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x12
    .end annotation
.end field

.field public final battery_level:Ljava/lang/Float;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0xe
    .end annotation
.end field

.field public final battery_save_enabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xf
    .end annotation
.end field

.field public final battery_state:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final device_name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x10
    .end annotation
.end field

.field public final device_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field

.field public final did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.DeviceId#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final disk_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0xb
    .end annotation
.end field

.field public final dpi:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final free_disk_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x15
    .end annotation
.end field

.field public final geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Geo#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final is_root:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xa
    .end annotation
.end field

.field public final mem_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x13
    .end annotation
.end field

.field public final model:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final os_type:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Version#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Size#ADAPTER"
        tag = 0x18
    .end annotation
.end field

.field public final screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.sigdsp.pb.Size#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final sd_free_disk_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x17
    .end annotation
.end field

.field public final sd_total_disk_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x16
    .end annotation
.end field

.field public final start_timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0x11
    .end annotation
.end field

.field public final total_disk_size:Ljava/lang/Long;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x14
    .end annotation
.end field

.field public final vendor:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$ProtoAdapter_Device;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$ProtoAdapter_Device;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_DEVICE_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_OS_TYPE:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_DPI:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_IS_ROOT:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_DISK_SIZE:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_BATTERY_STATE:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_BATTERY_LEVEL:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_BATTERY_SAVE_ENABLED:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_START_TIMESTAMP:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_ANDROID_API_LEVEL:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_MEM_SIZE:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_TOTAL_DISK_SIZE:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_FREE_DISK_SIZE:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_SD_TOTAL_DISK_SIZE:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->DEFAULT_SD_FREE_DISK_SIZE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)V
    .registers 49

    sget-object v24, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

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

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    invoke-direct/range {v0 .. v24}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 27

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p24

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_101
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_13a

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_14d

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    if-eqz v0, :cond_150

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_b5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_162

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_c2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    if-eqz v0, :cond_165

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_cf
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_dc
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_e9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_f6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_103
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_110
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_11d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    if-eqz v0, :cond_176

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_12a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v2, :cond_137

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->hashCode()I

    move-result v1

    :cond_137
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_13a
    return v0

    :cond_13b
    move v0, v1

    goto/16 :goto_19

    :cond_13e
    move v0, v1

    goto/16 :goto_26

    :cond_141
    move v0, v1

    goto/16 :goto_33

    :cond_144
    move v0, v1

    goto/16 :goto_40

    :cond_147
    move v0, v1

    goto/16 :goto_4d

    :cond_14a
    move v0, v1

    goto/16 :goto_5a

    :cond_14d
    move v0, v1

    goto/16 :goto_67

    :cond_150
    move v0, v1

    goto/16 :goto_74

    :cond_153
    move v0, v1

    goto/16 :goto_81

    :cond_156
    move v0, v1

    goto/16 :goto_8e

    :cond_159
    move v0, v1

    goto/16 :goto_9b

    :cond_15c
    move v0, v1

    goto/16 :goto_a8

    :cond_15f
    move v0, v1

    goto/16 :goto_b5

    :cond_162
    move v0, v1

    goto/16 :goto_c2

    :cond_165
    move v0, v1

    goto/16 :goto_cf

    :cond_168
    move v0, v1

    goto/16 :goto_dc

    :cond_16b
    move v0, v1

    goto/16 :goto_e9

    :cond_16e
    move v0, v1

    goto :goto_f6

    :cond_170
    move v0, v1

    goto :goto_103

    :cond_172
    move v0, v1

    goto :goto_110

    :cond_174
    move v0, v1

    goto :goto_11d

    :cond_176
    move v0, v1

    goto :goto_12a
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->device_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->os_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->vendor:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->model:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->dpi:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->is_root:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->disk_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_state:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_level:Ljava/lang/Float;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->battery_save_enabled:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->device_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->start_timestamp:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->android_api_level:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->mem_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->total_disk_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->free_disk_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->sd_total_disk_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->sd_free_disk_size:Ljava/lang/Long;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", os_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    if-eqz v1, :cond_32

    const-string v1, ", os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_41

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    if-eqz v1, :cond_5f

    const-string v1, ", did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v1, :cond_6e

    const-string v1, ", screen_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    if-eqz v1, :cond_7d

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    if-eqz v1, :cond_8c

    const-string v1, ", dpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    if-eqz v1, :cond_9b

    const-string v1, ", is_root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    if-eqz v1, :cond_aa

    const-string v1, ", disk_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", battery_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    if-eqz v1, :cond_c8

    const-string v1, ", battery_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_d7

    const-string v1, ", battery_save_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    if-eqz v1, :cond_e6

    const-string v1, ", device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_f5

    const-string v1, ", start_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    if-eqz v1, :cond_104

    const-string v1, ", android_api_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_104
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    if-eqz v1, :cond_113

    const-string v1, ", mem_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_113
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    if-eqz v1, :cond_122

    const-string v1, ", total_disk_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_122
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    if-eqz v1, :cond_131

    const-string v1, ", free_disk_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_131
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    if-eqz v1, :cond_140

    const-string v1, ", sd_total_disk_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_140
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    if-eqz v1, :cond_14f

    const-string v1, ", sd_free_disk_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v1, :cond_15e

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_15e
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Device{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
