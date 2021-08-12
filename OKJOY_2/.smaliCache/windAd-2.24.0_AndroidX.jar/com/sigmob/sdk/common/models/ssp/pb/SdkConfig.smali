.class public final Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;,
        Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APK_EXPIRED_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_APPORIENTATION:Ljava/lang/Integer;

.field public static final DEFAULT_AUTO_LOAD_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_UP_IP:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLE_ATTRIBUTION_UPDATE:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

.field public static final DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

.field public static final DEFAULT_REPORT_LOG:Ljava/lang/Integer;

.field public static final DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.AntiFraudLogConfig#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final apk_expired_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x14
    .end annotation
.end field

.field public final appOrientation:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final auto_load_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x10
    .end annotation
.end field

.field public final configRefresh:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final dclog_blacklist:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final disableUpAppInfo:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x6
    .end annotation
.end field

.field public final disable_up_ip:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x15
    .end annotation
.end field

.field public final disable_up_location:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final disable_up_oaid:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x12
    .end annotation
.end field

.field public final enable_attribution_update:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x17
    .end annotation
.end field

.field public final enable_permission:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x13
    .end annotation
.end field

.field public final enable_report_crash:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x18
    .end annotation
.end field

.field public final endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.CommonEndpointsConfig#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final ip_names:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x16
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final is_gdpr_region:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final max_send_log_records:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final report_log:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x7
    .end annotation
.end field

.field public final rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.RvConfig#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final send_log_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xe
    .end annotation
.end field

.field public final splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.SplashConfig#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final tracking_expiration_time:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final tracking_retry_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final up_wifi_list_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_APPORIENTATION:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_AUTO_LOAD_INTERVAL:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_APK_EXPIRED_TIME:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_DISABLE_UP_IP:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_ATTRIBUTION_UPDATE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
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

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    sget-object v25, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-direct/range {v0 .. v25}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;-><init>(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    sget-object v1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v2, p25

    invoke-direct {p0, v1, v2}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    move-object v1, p2

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    move-object v1, p3

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    move-object v1, p5

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    move-object v1, p6

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    move-object v1, p7

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    move-object v1, p9

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    move-object v1, p10

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    move-object v1, p11

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    const-string v1, "dclog_blacklist"

    move-object/from16 v2, p15

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    const-string v1, "ip_names"

    move-object/from16 v2, p22

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v0, v2

    :goto_10c
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_13d

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;->hashCode()I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;->hashCode()I

    move-result v1

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_81

    :cond_80
    move v1, v2

    :goto_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_9b

    :cond_9a
    move v1, v2

    :goto_9b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a8

    :cond_a7
    move v1, v2

    :goto_a8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_b5

    :cond_b4
    move v1, v2

    :goto_b5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_c2

    :cond_c1
    move v1, v2

    :goto_c2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_d8

    :cond_d7
    move v1, v2

    :goto_d8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_e5

    :cond_e4
    move v1, v2

    :goto_e5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    if-eqz v1, :cond_f1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_f2

    :cond_f1
    move v1, v2

    :goto_f2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    if-eqz v1, :cond_fe

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_ff

    :cond_fe
    move v1, v2

    :goto_ff
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_10c

    :cond_10b
    move v1, v2

    :goto_10c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    if-eqz v1, :cond_118

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_119

    :cond_118
    move v1, v2

    :goto_119
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    if-eqz v1, :cond_12e

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_12f

    :cond_12e
    move v1, v2

    :goto_12f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    if-eqz v1, :cond_13a

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_13a
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_13d
    return v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    const-string v2, "dclog_blacklist"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->dclog_blacklist:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->auto_load_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_location:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_permission:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->apk_expired_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->disable_up_ip:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    const-string v2, "ip_names"

    invoke-static {v2, v1}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->ip_names:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_attribution_update:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->newBuilder()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    if-eqz v1, :cond_14

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", configRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", appOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    if-eqz v1, :cond_41

    const-string v1, ", rv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/common/models/ssp/pb/RvConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    if-eqz v1, :cond_50

    const-string v1, ", splash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/common/models/ssp/pb/SplashConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v1, :cond_5f

    const-string v1, ", disableUpAppInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", report_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v1, :cond_7d

    const-string v1, ", anti_fraud_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/common/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v1, :cond_8c

    const-string v1, ", is_gdpr_region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", tracking_expiration_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", tracking_retry_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", up_wifi_list_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v1, :cond_c8

    const-string v1, ", max_send_log_records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_d7

    const-string v1, ", send_log_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d7
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ea

    const-string v1, ", dclog_blacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->dclog_blacklist:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_ea
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_f9

    const-string v1, ", auto_load_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->auto_load_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f9
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    if-eqz v1, :cond_108

    const-string v1, ", disable_up_location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_location:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_108
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    if-eqz v1, :cond_117

    const-string v1, ", disable_up_oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_oaid:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_117
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    if-eqz v1, :cond_126

    const-string v1, ", enable_permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_permission:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_126
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_135

    const-string v1, ", apk_expired_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->apk_expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_135
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    if-eqz v1, :cond_144

    const-string v1, ", disable_up_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->disable_up_ip:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_144
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_157

    const-string v1, ", ip_names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->ip_names:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_157
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    if-eqz v1, :cond_166

    const-string v1, ", enable_attribution_update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_attribution_update:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_166
    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    if-eqz v1, :cond_175

    const-string v1, ", enable_report_crash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfig;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_175
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SdkConfig{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
