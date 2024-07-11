.class final Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SdkConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14b

    packed-switch v3, :pswitch_data_154

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_attribution_update(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_3b
    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->ip_names:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_8c

    :pswitch_40
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_ip(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_4c
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->apk_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_58
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_64
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_oaid(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_70
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_7c
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->auto_load_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto :goto_9

    :pswitch_88
    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->dclog_blacklist:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    :goto_8c
    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_95
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_a2
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_af
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_bc
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_c9
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_d6
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_e3
    sget-object v3, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_f0
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_fd
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_10a
    sget-object v3, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash(Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_117
    sget-object v3, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv(Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_124
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->appOrientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_131
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :pswitch_13e
    sget-object v3, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    goto/16 :goto_9

    :cond_14b
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_13e
        :pswitch_131
        :pswitch_124
        :pswitch_117
        :pswitch_10a
        :pswitch_fd
        :pswitch_f0
        :pswitch_e3
        :pswitch_d6
        :pswitch_c9
        :pswitch_bc
        :pswitch_af
        :pswitch_a2
        :pswitch_95
        :pswitch_88
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    const/16 v2, 0x13

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    const/16 v2, 0x18

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)I
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->encodedSize(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    :cond_14
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    :cond_24
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    :cond_34
    iget-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    :cond_44
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;->redact(Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object p1

    return-object p1
.end method
