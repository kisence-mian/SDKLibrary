.class public final enum Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

.field public static final enum NETWORK_MOBILE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

.field public static final enum NETWORK_NONE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

.field public static final enum NETWORK_WIFI:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    const-string v1, "NETWORK_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_NONE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    new-instance v1, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    const-string v3, "NETWORK_MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_MOBILE:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    new-instance v3, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    const-string v5, "NETWORK_WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->NETWORK_WIFI:Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->$VALUES:[Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->$VALUES:[Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/NetworkMonitor$NetworkState;

    return-object v0
.end method
