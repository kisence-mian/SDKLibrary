.class final Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$ProtoAdapter_Device;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_153

    packed-switch v3, :pswitch_data_15c

    :pswitch_13
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->cell_ip(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->mem_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->android_api_level(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->start_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_save_enabled(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_level(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_b7
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_state(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_c4
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_d1
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->is_root(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_de
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->dpi(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_eb
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo(Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_f8
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_105
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did(Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_112
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->model(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_11f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->vendor(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_12c
    sget-object v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version(Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_139
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :pswitch_146
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    goto/16 :goto_9

    :cond_153
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_146
        :pswitch_139
        :pswitch_12c
        :pswitch_11f
        :pswitch_112
        :pswitch_105
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_13
        :pswitch_b7
        :pswitch_aa
        :pswitch_9d
        :pswitch_90
        :pswitch_83
        :pswitch_77
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$ProtoAdapter_Device;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    const/16 v2, 0xe

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    const/16 v2, 0x13

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    const/16 v2, 0x18

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->cell_ip:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$ProtoAdapter_Device;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->device_type:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->os_type:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->vendor:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->model:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->dpi:Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->is_root:Ljava/lang/Boolean;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->disk_size:Ljava/lang/Long;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_state:Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_level:Ljava/lang/Float;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->battery_save_enabled:Ljava/lang/Boolean;

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->device_name:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->start_timestamp:Ljava/lang/Long;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->android_api_level:Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->mem_size:Ljava/lang/Long;

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->total_disk_size:Ljava/lang/Long;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->free_disk_size:Ljava/lang/Long;

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->sd_total_disk_size:Ljava/lang/Long;

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->sd_free_disk_size:Ljava/lang/Long;

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->cell_ip:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$ProtoAdapter_Device;->encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version:Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    :cond_14
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did:Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    :cond_24
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    :cond_34
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo:Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    :cond_44
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    if-eqz v0, :cond_54

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution:Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    :cond_54
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$ProtoAdapter_Device;->redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object p1

    return-object p1
.end method
