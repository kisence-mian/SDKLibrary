.class public final enum Lcom/appsflyer/internal/e$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/e$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic AFKeystoreWrapper:[Lcom/appsflyer/internal/e$d;

.field public static final enum valueOf:Lcom/appsflyer/internal/e$d;

.field public static final enum values:Lcom/appsflyer/internal/e$d;


# instance fields
.field public AFInAppEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 285
    new-instance v0, Lcom/appsflyer/internal/e$d;

    const-string v1, "HOOKING"

    const/4 v2, 0x0

    const-string v3, "hk"

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/e$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/e$d;->valueOf:Lcom/appsflyer/internal/e$d;

    new-instance v1, Lcom/appsflyer/internal/e$d;

    const-string v3, "DEBUGGABLE"

    const/4 v4, 0x1

    const-string v5, "dbg"

    invoke-direct {v1, v3, v4, v5}, Lcom/appsflyer/internal/e$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/e$d;->values:Lcom/appsflyer/internal/e$d;

    .line 284
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/appsflyer/internal/e$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/appsflyer/internal/e$d;->AFKeystoreWrapper:[Lcom/appsflyer/internal/e$d;

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

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput-object p3, p0, Lcom/appsflyer/internal/e$d;->AFInAppEventType:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/e$d;
    .registers 2

    .line 284
    const-class v0, Lcom/appsflyer/internal/e$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/e$d;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/e$d;
    .registers 1

    .line 284
    sget-object v0, Lcom/appsflyer/internal/e$d;->AFKeystoreWrapper:[Lcom/appsflyer/internal/e$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/e$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/e$d;

    return-object v0
.end method
