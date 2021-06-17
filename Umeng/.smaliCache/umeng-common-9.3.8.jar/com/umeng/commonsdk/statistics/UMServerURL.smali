.class public Lcom/umeng/commonsdk/statistics/UMServerURL;
.super Ljava/lang/Object;
.source "UMServerURL.java"


# static fields
.field public static DEFAULT_URL:Ljava/lang/String;

.field public static OVERSEA_DEFAULT_URL:Ljava/lang/String;

.field public static OVERSEA_SECONDARY_URL:Ljava/lang/String;

.field public static PATH_ANALYTICS:Ljava/lang/String;

.field public static PATH_INNER:Ljava/lang/String;

.field public static PATH_INNER_CRASH:Ljava/lang/String;

.field public static PATH_PUSH_LAUNCH:Ljava/lang/String;

.field public static PATH_PUSH_LOG:Ljava/lang/String;

.field public static PATH_PUSH_REGIST:Ljava/lang/String;

.field public static PATH_SHARE:Ljava/lang/String;

.field public static SECONDARY_URL:Ljava/lang/String;

.field public static ZCFG_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "zcfg"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->ZCFG_PATH:Ljava/lang/String;

    .line 16
    const-string v0, "https://ulogs.umeng.com"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    .line 18
    const-string v0, "https://ulogs.umengcloud.com"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    .line 23
    const-string v0, "unify_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_INNER:Ljava/lang/String;

    .line 25
    const-string v0, "umpx_share"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_SHARE:Ljava/lang/String;

    .line 26
    const-string v0, "umpx_push_register"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_REGIST:Ljava/lang/String;

    .line 27
    const-string v0, "umpx_push_launch"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_LAUNCH:Ljava/lang/String;

    .line 28
    const-string v0, "umpx_push_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_PUSH_LOG:Ljava/lang/String;

    .line 29
    const-string v0, "pikachu"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_INNER_CRASH:Ljava/lang/String;

    .line 46
    const-string v0, "https://alogus.umeng.com"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_DEFAULT_URL:Ljava/lang/String;

    .line 48
    const-string v0, "https://alogsus.umeng.com"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_SECONDARY_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
