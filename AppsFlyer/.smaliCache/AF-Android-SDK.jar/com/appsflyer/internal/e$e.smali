.class public final enum Lcom/appsflyer/internal/e$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/e$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/e$e;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/e$e;

.field public static final enum values:Lcom/appsflyer/internal/e$e;


# instance fields
.field public AFKeystoreWrapper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 319
    new-instance v0, Lcom/appsflyer/internal/e$e;

    const-string v1, "XPOSED"

    const/4 v2, 0x0

    const-string v3, "xps"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/e$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/e$e;->AFInAppEventType:Lcom/appsflyer/internal/e$e;

    new-instance v1, Lcom/appsflyer/internal/e$e;

    const-string v3, "FRIDA"

    const/4 v4, 0x1

    const-string v5, "frd"

    invoke-direct {v1, v3, v4, v5}, Lcom/appsflyer/internal/e$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/e$e;->values:Lcom/appsflyer/internal/e$e;

    .line 318
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/appsflyer/internal/e$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/appsflyer/internal/e$e;->valueOf:[Lcom/appsflyer/internal/e$e;

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

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 324
    iput-object p3, p0, Lcom/appsflyer/internal/e$e;->AFKeystoreWrapper:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/e$e;
    .registers 2

    .line 318
    const-class v0, Lcom/appsflyer/internal/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/e$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/e$e;
    .registers 1

    .line 318
    sget-object v0, Lcom/appsflyer/internal/e$e;->valueOf:[Lcom/appsflyer/internal/e$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/e$e;

    return-object v0
.end method
