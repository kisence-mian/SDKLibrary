.class final enum Lcom/appsflyer/internal/g$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/g$e;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/g$e;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/g$e;

.field public static final enum values:Lcom/appsflyer/internal/g$e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 199
    new-instance v0, Lcom/appsflyer/internal/g$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/g$e;->values:Lcom/appsflyer/internal/g$e;

    new-instance v1, Lcom/appsflyer/internal/g$e;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/g$e;->AFInAppEventType:Lcom/appsflyer/internal/g$e;

    new-instance v3, Lcom/appsflyer/internal/g$e;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/g$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/g$e;

    .line 198
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/g$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/appsflyer/internal/g$e;->valueOf:[Lcom/appsflyer/internal/g$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/g$e;
    .registers 2

    .line 198
    const-class v0, Lcom/appsflyer/internal/g$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/g$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/g$e;
    .registers 1

    .line 198
    sget-object v0, Lcom/appsflyer/internal/g$e;->valueOf:[Lcom/appsflyer/internal/g$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/g$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/g$e;

    return-object v0
.end method
