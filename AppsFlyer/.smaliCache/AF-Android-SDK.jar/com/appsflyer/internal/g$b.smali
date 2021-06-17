.class final enum Lcom/appsflyer/internal/g$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/g$b;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/g$b;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/g$b;

.field private static final synthetic AFVersionDeclaration:[Lcom/appsflyer/internal/g$b;

.field private static enum init:Lcom/appsflyer/internal/g$b;

.field private static enum valueOf:Lcom/appsflyer/internal/g$b;

.field private static enum values:Lcom/appsflyer/internal/g$b;


# instance fields
.field AFInAppEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 223
    new-instance v0, Lcom/appsflyer/internal/g$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "uk"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->AFInAppEventParameterName:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const-string v1, "ACCELEROMETER"

    const/4 v3, 0x1

    const-string v4, "am"

    invoke-direct {v0, v1, v3, v4}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->valueOf:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const-string v1, "MAGNETOMETER"

    const/4 v4, 0x2

    const-string v5, "mm"

    invoke-direct {v0, v1, v4, v5}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const-string v1, "RESERVED"

    const/4 v5, 0x3

    const-string v6, "rs"

    invoke-direct {v0, v1, v5, v6}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->values:Lcom/appsflyer/internal/g$b;

    new-instance v0, Lcom/appsflyer/internal/g$b;

    const-string v1, "GYROSCOPE"

    const/4 v6, 0x4

    const-string v7, "gs"

    invoke-direct {v0, v1, v6, v7}, Lcom/appsflyer/internal/g$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$b;->init:Lcom/appsflyer/internal/g$b;

    .line 222
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/appsflyer/internal/g$b;

    sget-object v7, Lcom/appsflyer/internal/g$b;->AFInAppEventParameterName:Lcom/appsflyer/internal/g$b;

    aput-object v7, v1, v2

    sget-object v2, Lcom/appsflyer/internal/g$b;->valueOf:Lcom/appsflyer/internal/g$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsflyer/internal/g$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appsflyer/internal/g$b;->values:Lcom/appsflyer/internal/g$b;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/appsflyer/internal/g$b;->AFVersionDeclaration:[Lcom/appsflyer/internal/g$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/appsflyer/internal/g$b;->AFInAppEventType:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/g$b;
    .registers 2

    .line 222
    const-class v0, Lcom/appsflyer/internal/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/g$b;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/g$b;
    .registers 1

    .line 222
    sget-object v0, Lcom/appsflyer/internal/g$b;->AFVersionDeclaration:[Lcom/appsflyer/internal/g$b;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/g$b;

    return-object v0
.end method
