.class public Lcom/sigmob/sdk/common/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final ADSCENE:Ljava/lang/String; = "ad_scene"

.field public static final AD_UNIT_KEY:Ljava/lang/String; = "AD_UNIT_KEY"

.field public static final ALLOW_INSTALL:Ljava/lang/String; = "allow_install"

.field public static final APPID:Ljava/lang/String; = "appId"

.field public static final APPNAME:Ljava/lang/String; = "appName"

.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final AUDIO_BUFFER_MAX_LENGTH:I = 0x200000

.field public static final BROADCAST_IDENTIFIER_KEY:Ljava/lang/String; = "broadcastIdentifier"

.field public static final CACHE_FILE_NUMBER:I = 0x3

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_RANGE_PARAMS:Ljava/lang/String; = "bytes "

.field public static final ENABLEKEEPON:Ljava/lang/String; = "enablekeepon"

.field public static final ENABLESCREENLOCKDISPLAYAD:Ljava/lang/String; = "enablescreenlockdisplayad"

.field public static final EXPIRED:Ljava/lang/String; = "expired"

.field public static final EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field public static final EXT:Ljava/lang/String; = "ext"

.field public static final EXT_GDPR_REGION:Ljava/lang/String; = "ext_gdpr_region"

.field public static final FAIL:Ljava/lang/String; = "0"

.field public static final GDT_DOWNLOAD:I = 0x1

.field public static final GOOGLE_PLAY:Z = false

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTP_END:Ljava/lang/String; = "\r\n\r\n"

.field public static final IS_EXPIRED:Ljava/lang/String; = "isExpired"

.field public static final IS_GDPR_REGION:Ljava/lang/String; = "is_gdpr_region"

.field public static final IS_MOCK:Ljava/lang/Boolean;

.field public static final IS_REQUEST_IN_EEA_OR_UNKNOWN:Ljava/lang/String; = "is_request_in_eea_or_unknown"

.field public static final IS_TEST:Ljava/lang/Boolean;

.field public static final LAST_DAY:Ljava/lang/String; = "last_day"

.field public static final LINE_BREAK:Ljava/lang/String; = "\r\n"

.field public static final MTG_PLACEMENT_ID:Ljava/lang/String; = "unitId"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PLACEMENTID:Ljava/lang/String; = "placementId"

.field public static final PLAYDIRECTION:Ljava/lang/String; = "playDirection"

.field public static final PLAY_MODE_PRELOAD:I = 0x0

.field public static final PLAY_MODE_PRELOAD_STREAM:I = 0x1

.field public static final PLAY_MODE_STREAM:I = 0x2

.field public static final PRECACHE_SIZE:I = 0x493e0

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final RANGE_PARAMS:Ljava/lang/String; = "bytes="

.field public static final RANGE_PARAMS_0:Ljava/lang/String; = "bytes=0-"

.field public static final READY_FILTERS:Ljava/lang/String; = "ready_filters"

.field public static final REPAPIKEY:Ljava/lang/String; = "apiKey"

.field public static final REQUESTED_ORIENTATION:Ljava/lang/String; = "REQUESTED_ORIENTATION"

.field public static final REQUEST_SCENE_TYPE:Ljava/lang/String; = "request_scene_type"

.field public static final RETRYMAXNUM:I = 0xbb8

.field public static final SDK_VERSION:Ljava/lang/String; = "2.24.0"

.field public static final SD_REMAIN_SIZE:I = 0x3200000

.field public static final SEVENDAYS:I = 0x240c8400

.field public static final SIGMOB_CHANNEL:Ljava/lang/String; = "1000"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SUCCESS:Ljava/lang/String; = "1"

.field public static final TEMPLATETYPE:Ljava/lang/String; = "templateType"

.field public static final TEN_SECONDS_MILLIS:I = 0x2710

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final USER_GDPR_REGION:Ljava/lang/String; = "user_gdpr_region"

.field public static final WIND_AGERESTRICTED_STATUS:Ljava/lang/String; = "wind_agerestricted_status"

.field public static final WIND_CONSENT_STATUS:Ljava/lang/String; = "wind_consent_status"

.field public static final WIND_USER_AGE:Ljava/lang/String; = "wind_user_age"

.field public static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/Constants;->IS_MOCK:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
