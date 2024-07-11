.class public Lcom/umeng/commonsdk/statistics/AnalyticsConstants;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static APPLOG_URL_LIST:[Ljava/lang/String; = null

.field public static final CFG_FIELD_KEY:Ljava/lang/String; = "cfgfd"

.field public static CHECK_DEVICE:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "MobclickAgent"

.field public static final OS:Ljava/lang/String; = "Android"

.field public static final SDK_TYPE:Ljava/lang/String; = "Android"

.field public static SUB_PROCESS_EVENT:Z = false

.field public static final UM_DEBUG:Z

.field public static final ZERO_RESPONSE_FLAG:Ljava/lang/String; = "iscfg"

.field private static commonDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    .line 20
    const/4 v1, 0x0

    sput-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    .line 25
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v1, v2, v0

    sput-object v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    .line 27
    sget-boolean v1, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    sput-boolean v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 30
    sput v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceType()I
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;

    monitor-enter v0

    .line 45
    :try_start_3
    sget v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 45
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDeviceType(I)V
    .registers 1

    .line 37
    sput p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    .line 38
    return-void
.end method
