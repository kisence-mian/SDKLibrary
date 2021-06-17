.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static CATCH_EXCEPTION:Z

.field public static CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

.field public static CLEAR_EKV_BL:Z

.field public static CLEAR_EKV_WL:Z

.field public static GPU_RENDERER:Ljava/lang/String;

.field public static GPU_VENDER:Ljava/lang/String;

.field static a:[D

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field public static enable:Z

.field public static kContinueSessionMillis:J

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 23
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    sput v1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 30
    const-string v2, ""

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 31
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 37
    const/4 v2, 0x1

    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

    .line 39
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 40
    const-wide/16 v3, 0x7530

    sput-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 47
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z

    .line 48
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z

    .line 51
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    .line 56
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .registers 2

    .line 102
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 103
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(I)V

    .line 104
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 82
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 85
    :cond_12
    const/4 p0, 0x0

    const-string p1, "MobclickAgent.setSecret\u65b9\u6cd5\u53c2\u6570secretkey\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|secretkey\u53c2\u6570\u5fc5\u987b\u662f\u975e\u7a7a \u5b57\u7b26\u4e32\u3002"

    const-string v0, "\\|"

    invoke-static {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    :goto_1a
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 1

    .line 59
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 63
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 67
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 114
    nop

    .line 116
    const/4 p0, 0x0

    :try_start_2
    const-string v0, "com.umeng.analytics.game.GameSdkVersion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_17

    .line 118
    const-string v1, "SDK_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_18

    move-object p0, v0

    .line 123
    :cond_17
    goto :goto_19

    .line 121
    :catchall_18
    move-exception v0

    .line 124
    :goto_19
    return-object p0
.end method

.method public static getLocation()[D
    .registers 1

    .line 71
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 95
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/common/b;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 98
    :cond_12
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .registers 2

    .line 107
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_e

    .line 108
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/common/b;->d()I

    move-result p0

    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 110
    :cond_e
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return p0
.end method
