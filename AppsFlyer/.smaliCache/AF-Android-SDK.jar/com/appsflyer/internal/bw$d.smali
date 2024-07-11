.class public final enum Lcom/appsflyer/internal/bw$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/bw$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/bw$d;

.field private static final synthetic AFInAppEventType:[Lcom/appsflyer/internal/bw$d;

.field public static final enum valueOf:Lcom/appsflyer/internal/bw$d;

.field public static final enum values:Lcom/appsflyer/internal/bw$d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 56
    new-instance v0, Lcom/appsflyer/internal/bw$d;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/bw$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/bw$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw$d;

    new-instance v1, Lcom/appsflyer/internal/bw$d;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/appsflyer/internal/bw$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/bw$d;->valueOf:Lcom/appsflyer/internal/bw$d;

    new-instance v3, Lcom/appsflyer/internal/bw$d;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/appsflyer/internal/bw$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appsflyer/internal/bw$d;->values:Lcom/appsflyer/internal/bw$d;

    .line 55
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appsflyer/internal/bw$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/appsflyer/internal/bw$d;->AFInAppEventType:[Lcom/appsflyer/internal/bw$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/bw$d;
    .registers 2

    .line 55
    const-class v0, Lcom/appsflyer/internal/bw$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/bw$d;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/bw$d;
    .registers 1

    .line 55
    sget-object v0, Lcom/appsflyer/internal/bw$d;->AFInAppEventType:[Lcom/appsflyer/internal/bw$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/bw$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/bw$d;

    return-object v0
.end method
