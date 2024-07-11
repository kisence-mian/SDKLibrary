.class public Lcom/tapjoy/TapjoyConnectFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_LEGACY_ID_FALLBACK:Ljava/lang/String; = "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

.field public static final CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_ADVERTISING_ID_CHECK:Ljava/lang/String; = "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

.field public static final DISABLE_ANDROID_ID_AS_ANALYTICS_ID:Ljava/lang/String; = "TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID"

.field public static final DISABLE_AUTOMATIC_SESSION_TRACKING:Ljava/lang/String; = "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

.field public static final DISABLE_PERSISTENT_IDS:Ljava/lang/String; = "TJC_OPTION_DISABLE_PERSISTENT_IDS"

.field public static final ENABLE_LOGGING:Ljava/lang/String; = "TJC_OPTION_ENABLE_LOGGING"

.field public static final FLAG_ARRAY:[Ljava/lang/String;

.field public static final MEDIATION_CONFIGS:Ljava/lang/String; = "TJC_OPTION_MEDIATION_CONFIGS"

.field public static final PLACEMENT_URL:Ljava/lang/String; = "TJC_OPTION_PLACEMENT_SERVICE_URL"

.field public static final SERVICE_URL:Ljava/lang/String; = "TJC_OPTION_SERVICE_URL"

.field public static final STORE_ARRAY:[Ljava/lang/String;

.field public static final STORE_GFAN:Ljava/lang/String; = "gfan"

.field public static final STORE_NAME:Ljava/lang/String; = "TJC_OPTION_STORE_NAME"

.field public static final STORE_SKT:Ljava/lang/String; = "skt"

.field public static final USER_ID:Ljava/lang/String; = "TJC_OPTION_USER_ID"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TJC_OPTION_USER_ID"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TJC_OPTION_ENABLE_LOGGING"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "TJC_OPTION_SERVICE_URL"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v5, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v5, "TJC_OPTION_STORE_NAME"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v5, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    aput-object v5, v0, v1

    const/4 v1, 0x6

    const-string v5, "TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID"

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v5, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    aput-object v5, v0, v1

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "gfan"

    aput-object v1, v0, v2

    const-string v1, "skt"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/tapjoy/TapjoyConnectFlag$1;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectFlag$1;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
