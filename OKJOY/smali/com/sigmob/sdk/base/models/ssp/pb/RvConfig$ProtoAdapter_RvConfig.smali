.class final Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_f8

    packed-switch v0, :pswitch_data_100

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints(Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->ifMute(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->showClose(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->finished(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadExpired(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadTimeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->videoClosePosition(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endcardClosePosition(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->mutePostion(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->loadPeriodTime(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->skipPercent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_b7
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->screen_capture(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_c4
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->screen_capture_times:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_d1
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->skipSeconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_de
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->enableExitOnVideoClose(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :pswitch_eb
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->close_dialog_setting(Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    goto/16 :goto_9

    :cond_f8
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    return-object v0

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
        :pswitch_53
        :pswitch_5f
        :pswitch_6b
        :pswitch_77
        :pswitch_83
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b7
        :pswitch_c4
        :pswitch_d1
        :pswitch_de
        :pswitch_eb
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)I
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ifMute:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->showClose:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->FLOAT:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->finished:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadExpired:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadTimeout:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->videoClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->endcardClosePosition:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->mutePostion:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->loadPeriodTime:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipPercent:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->screen_capture_times:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->skipSeconds:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->enableExitOnVideoClose:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;->encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;

    move-result-object v1

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/RvEndpointsConfig;

    :cond_14
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/ssp/pb/DialogSetting;

    :cond_24
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig$ProtoAdapter_RvConfig;->redact(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-result-object v0

    return-object v0
.end method
