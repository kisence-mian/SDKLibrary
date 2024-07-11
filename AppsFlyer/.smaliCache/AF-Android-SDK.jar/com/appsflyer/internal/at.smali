.class public final Lcom/appsflyer/internal/at;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static AFInAppEventParameterName:Ljava/lang/String;

.field public static AFInAppEventType:Ljava/lang/String;

.field public static AFKeystoreWrapper:Ljava/lang/String;

.field public static valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    const-string v0, "Event timeout. Check \'minTimeBetweenSessions\' param"

    sput-object v0, Lcom/appsflyer/internal/at;->valueOf:Ljava/lang/String;

    .line 5
    const-string v0, "Skipping event because \'isStopped\' is true"

    sput-object v0, Lcom/appsflyer/internal/at;->AFInAppEventType:Ljava/lang/String;

    .line 6
    const-string v0, "Status code failure"

    sput-object v0, Lcom/appsflyer/internal/at;->AFKeystoreWrapper:Ljava/lang/String;

    .line 7
    const-string v0, "No dev key"

    sput-object v0, Lcom/appsflyer/internal/at;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
