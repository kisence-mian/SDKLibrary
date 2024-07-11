.class final enum Lcom/appsflyer/internal/g$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/g$c;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/g$c;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/g$c;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/g$c;

.field private static final synthetic AFLogger$LogLevel:[Lcom/appsflyer/internal/g$c;

.field public static final enum valueOf:Lcom/appsflyer/internal/g$c;

.field private static enum values:Lcom/appsflyer/internal/g$c;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 206
    new-instance v0, Lcom/appsflyer/internal/g$c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const-string v1, "ACCELEROMETER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const-string v1, "MAGNETOMETER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->valueOf:Lcom/appsflyer/internal/g$c;

    new-instance v1, Lcom/appsflyer/internal/g$c;

    const-string v5, "RESERVED"

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/g$c;->values:Lcom/appsflyer/internal/g$c;

    new-instance v1, Lcom/appsflyer/internal/g$c;

    const-string v5, "GYROSCOPE"

    const/4 v7, 0x4

    invoke-direct {v1, v5, v7}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/g$c;->AFInAppEventType:Lcom/appsflyer/internal/g$c;

    .line 205
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/appsflyer/internal/g$c;

    sget-object v8, Lcom/appsflyer/internal/g$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/g$c;

    aput-object v8, v5, v2

    sget-object v2, Lcom/appsflyer/internal/g$c;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$c;

    aput-object v2, v5, v3

    aput-object v0, v5, v4

    sget-object v0, Lcom/appsflyer/internal/g$c;->values:Lcom/appsflyer/internal/g$c;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    sput-object v5, Lcom/appsflyer/internal/g$c;->AFLogger$LogLevel:[Lcom/appsflyer/internal/g$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/g$c;
    .registers 2

    .line 205
    const-class v0, Lcom/appsflyer/internal/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/g$c;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/g$c;
    .registers 1

    .line 205
    sget-object v0, Lcom/appsflyer/internal/g$c;->AFLogger$LogLevel:[Lcom/appsflyer/internal/g$c;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/g$c;

    return-object v0
.end method
