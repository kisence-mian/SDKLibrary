.class public final Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

.field public apk_expired_time:Ljava/lang/Integer;

.field public appOrientation:Ljava/lang/Integer;

.field public auto_load_interval:Ljava/lang/Integer;

.field public configRefresh:Ljava/lang/Integer;

.field public dclog_blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public disableUpAppInfo:Ljava/lang/Boolean;

.field public disable_up_ip:Ljava/lang/Boolean;

.field public disable_up_location:Ljava/lang/Boolean;

.field public disable_up_oaid:Ljava/lang/Integer;

.field public enable_attribution_update:Ljava/lang/Boolean;

.field public enable_permission:Ljava/lang/Boolean;

.field public enable_report_crash:Ljava/lang/Boolean;

.field public endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

.field public ip_names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_gdpr_region:Ljava/lang/Boolean;

.field public max_send_log_records:Ljava/lang/Integer;

.field public report_log:Ljava/lang/Integer;

.field public rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

.field public send_log_interval:Ljava/lang/Integer;

.field public splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

.field public tracking_expiration_time:Ljava/lang/Integer;

.field public tracking_retry_interval:Ljava/lang/Integer;

.field public up_wifi_list_interval:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_APPORIENTATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_AUTO_LOAD_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->auto_load_interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_oaid:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_APK_EXPIRED_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->apk_expired_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_IP:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_ip:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_ATTRIBUTION_UPDATE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_attribution_update:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->dclog_blacklist:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->ip_names:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public anti_fraud_log(Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    return-object p0
.end method

.method public apk_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->apk_expired_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public appOrientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public auto_load_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->auto_load_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
    .registers 30

    move-object/from16 v0, p0

    new-instance v27, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-object/from16 v1, v27

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->dclog_blacklist:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->auto_load_interval:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_oaid:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->apk_expired_time:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_ip:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->ip_names:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_attribution_update:Ljava/lang/Boolean;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash:Ljava/lang/Boolean;

    move-object/from16 v25, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v26

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;-><init>(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v27
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    return-object p0
.end method

.method public dclog_blacklist(Ljava/util/List;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->dclog_blacklist:Ljava/util/List;

    return-object p0
.end method

.method public disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_up_ip(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_ip:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_up_oaid(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_oaid:Ljava/lang/Integer;

    return-object p0
.end method

.method public enable_attribution_update(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_attribution_update:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endpoints(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    return-object p0
.end method

.method public ip_names(Ljava/util/List;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->ip_names:Ljava/util/List;

    return-object p0
.end method

.method public is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    return-object p0
.end method

.method public max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    return-object p0
.end method

.method public report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    return-object p0
.end method

.method public rv(Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    return-object p0
.end method

.method public send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public splash(Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    return-object p0
.end method

.method public tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    return-object p0
.end method
