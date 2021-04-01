.class final Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_d1

    packed-switch v0, :pswitch_data_da

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->appOrientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log(Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_b7
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_c4
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :cond_d1
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_da
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
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)I
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    move-result-object v1

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    :cond_14
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    :cond_24
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    :cond_34
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    :cond_44
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->redact(Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0
.end method
