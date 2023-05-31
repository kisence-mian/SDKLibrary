.class public final Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

.field public appOrientation:Ljava/lang/Integer;

.field public configRefresh:Ljava/lang/Integer;

.field public disableUpAppInfo:Ljava/lang/Boolean;

.field public endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

.field public is_gdpr_region:Ljava/lang/Boolean;

.field public max_send_log_records:Ljava/lang/Integer;

.field public report_log:Ljava/lang/Integer;

.field public rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

.field public send_log_interval:Ljava/lang/Integer;

.field public splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

.field public tracking_expiration_time:Ljava/lang/Integer;

.field public tracking_retry_interval:Ljava/lang/Integer;

.field public up_wifi_list_interval:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_APPORIENTATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public anti_fraud_log(Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    return-object p0
.end method

.method public appOrientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
    .registers 18

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v16

    invoke-direct/range {v1 .. v16}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;-><init>(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    return-object p0
.end method

.method public disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endpoints(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    return-object p0
.end method

.method public is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    return-object p0
.end method

.method public max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    return-object p0
.end method

.method public report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    return-object p0
.end method

.method public rv(Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    return-object p0
.end method

.method public send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public splash(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    return-object p0
.end method

.method public tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    return-object p0
.end method
