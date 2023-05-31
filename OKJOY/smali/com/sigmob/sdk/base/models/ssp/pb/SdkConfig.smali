.class public final Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;
.super Lcom/sigmob/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/AndroidMessage",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APPORIENTATION:Ljava/lang/Integer;

.field public static final DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

.field public static final DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

.field public static final DEFAULT_REPORT_LOG:Ljava/lang/Integer;

.field public static final DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.AntiFraudLogConfig#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final appOrientation:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final configRefresh:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final disableUpAppInfo:Ljava/lang/Boolean;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x6
    .end annotation
.end field

.field public final endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.ssp.pb.CommonEndpointsConfig#ADAPTER"
        tag = 0x1
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

.field public final rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;
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

.field public final splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;
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
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$ProtoAdapter_SdkConfig;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/sigmob/wire/AndroidMessage;->newCreator(Lcom/sigmob/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_APPORIENTATION:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    const v0, 0x15180

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 31

    sget-object v15, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v15}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;-><init>(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 18

    sget-object v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    move-object/from16 v0, p15

    invoke-direct {p0, v1, v0}, Lcom/sigmob/wire/AndroidMessage;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_a7
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    if-nez v0, :cond_c5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_a8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_b5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    if-eqz v2, :cond_c2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_c2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/AndroidMessage;->hashCode:I

    :cond_c5
    return v0

    :cond_c6
    move v0, v1

    goto/16 :goto_19

    :cond_c9
    move v0, v1

    goto/16 :goto_26

    :cond_cc
    move v0, v1

    goto/16 :goto_33

    :cond_cf
    move v0, v1

    goto/16 :goto_40

    :cond_d2
    move v0, v1

    goto/16 :goto_4d

    :cond_d5
    move v0, v1

    goto :goto_5a

    :cond_d7
    move v0, v1

    goto :goto_67

    :cond_d9
    move v0, v1

    goto :goto_74

    :cond_db
    move v0, v1

    goto :goto_81

    :cond_dd
    move v0, v1

    goto :goto_8e

    :cond_df
    move v0, v1

    goto :goto_9b

    :cond_e1
    move v0, v1

    goto :goto_a8

    :cond_e3
    move v0, v1

    goto :goto_b5
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->appOrientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->report_log:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    if-eqz v1, :cond_14

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->endpoints:Lcom/sigmob/sdk/base/models/ssp/pb/CommonEndpointsConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", configRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", appOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->appOrientation:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    if-eqz v1, :cond_41

    const-string v1, ", rv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->rv:Lcom/sigmob/sdk/base/models/ssp/pb/RvConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    if-eqz v1, :cond_50

    const-string v1, ", splash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->splash:Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v1, :cond_5f

    const-string v1, ", disableUpAppInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    const-string v1, ", report_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->report_log:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    if-eqz v1, :cond_7d

    const-string v1, ", anti_fraud_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->anti_fraud_log:Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v1, :cond_8c

    const-string v1, ", is_gdpr_region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_9b

    const-string v1, ", tracking_expiration_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_aa

    const-string v1, ", tracking_retry_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_b9

    const-string v1, ", up_wifi_list_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v1, :cond_c8

    const-string v1, ", max_send_log_records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_d7

    const-string v1, ", send_log_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d7
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
