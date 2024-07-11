.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public android_api_level:Ljava/lang/Integer;

.field public battery_level:Ljava/lang/Float;

.field public battery_save_enabled:Ljava/lang/Boolean;

.field public battery_state:Ljava/lang/Integer;

.field public cell_ip:Ljava/lang/String;

.field public device_name:Ljava/lang/String;

.field public device_type:Ljava/lang/Integer;

.field public did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

.field public disk_size:Ljava/lang/Long;

.field public dpi:Ljava/lang/Integer;

.field public free_disk_size:Ljava/lang/Long;

.field public geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

.field public is_root:Ljava/lang/Boolean;

.field public mem_size:Ljava/lang/Long;

.field public model:Ljava/lang/String;

.field public os_type:Ljava/lang/Integer;

.field public os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

.field public resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

.field public screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

.field public sd_free_disk_size:Ljava/lang/Long;

.field public sd_total_disk_size:Ljava/lang/Long;

.field public start_timestamp:Ljava/lang/Long;

.field public total_disk_size:Ljava/lang/Long;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_DEVICE_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_OS_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_type:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->model:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_DPI:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->dpi:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_IS_ROOT:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->is_root:Ljava/lang/Boolean;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_DISK_SIZE:Ljava/lang/Long;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->disk_size:Ljava/lang/Long;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_BATTERY_STATE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_state:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_BATTERY_LEVEL:Ljava/lang/Float;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_level:Ljava/lang/Float;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_BATTERY_SAVE_ENABLED:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_save_enabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_name:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_START_TIMESTAMP:Ljava/lang/Long;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->start_timestamp:Ljava/lang/Long;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_ANDROID_API_LEVEL:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->android_api_level:Ljava/lang/Integer;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->DEFAULT_MEM_SIZE:Ljava/lang/Long;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->mem_size:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->cell_ip:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public android_api_level(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->android_api_level:Ljava/lang/Integer;

    return-object p0
.end method

.method public battery_level(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_level:Ljava/lang/Float;

    return-object p0
.end method

.method public battery_save_enabled(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_save_enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public battery_state(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_state:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
    .registers 30

    move-object/from16 v0, p0

    new-instance v27, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-object/from16 v1, v27

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_type:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_type:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->vendor:Ljava/lang/String;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->model:Ljava/lang/String;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->dpi:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->is_root:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->disk_size:Ljava/lang/Long;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_state:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_level:Ljava/lang/Float;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_save_enabled:Ljava/lang/Boolean;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_name:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->start_timestamp:Ljava/lang/Long;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->android_api_level:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->mem_size:Ljava/lang/Long;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->total_disk_size:Ljava/lang/Long;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->free_disk_size:Ljava/lang/Long;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_total_disk_size:Ljava/lang/Long;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_free_disk_size:Ljava/lang/Long;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->cell_ip:Ljava/lang/String;

    move-object/from16 v25, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v26

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v27
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object v0

    return-object v0
.end method

.method public cell_ip(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->cell_ip:Ljava/lang/String;

    return-object p0
.end method

.method public device_name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_name:Ljava/lang/String;

    return-object p0
.end method

.method public device_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public did(Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    return-object p0
.end method

.method public disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->disk_size:Ljava/lang/Long;

    return-object p0
.end method

.method public dpi(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->dpi:Ljava/lang/Integer;

    return-object p0
.end method

.method public free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->free_disk_size:Ljava/lang/Long;

    return-object p0
.end method

.method public geo(Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    return-object p0
.end method

.method public is_root(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->is_root:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mem_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->mem_size:Ljava/lang/Long;

    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->model:Ljava/lang/String;

    return-object p0
.end method

.method public os_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public os_version(Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    return-object p0
.end method

.method public resolution(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    return-object p0
.end method

.method public screen_size(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    return-object p0
.end method

.method public sd_free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_free_disk_size:Ljava/lang/Long;

    return-object p0
.end method

.method public sd_total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_total_disk_size:Ljava/lang/Long;

    return-object p0
.end method

.method public start_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->start_timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->total_disk_size:Ljava/lang/Long;

    return-object p0
.end method

.method public vendor(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->vendor:Ljava/lang/String;

    return-object p0
.end method
