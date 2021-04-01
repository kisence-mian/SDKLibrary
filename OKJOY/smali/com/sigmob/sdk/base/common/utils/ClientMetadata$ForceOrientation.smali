.class public final enum Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;
.super Ljava/lang/Enum;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

.field public static final enum DEVICE_ORIENTATION:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

.field public static final enum FORCE_LANDSCAPE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

.field public static final enum FORCE_PORTRAIT:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

.field public static final enum UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const-string v1, "FORCE_PORTRAIT"

    const-string v2, "portrait"

    invoke-direct {v0, v1, v3, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->FORCE_PORTRAIT:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const-string v1, "FORCE_LANDSCAPE"

    const-string v2, "landscape"

    invoke-direct {v0, v1, v4, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->FORCE_LANDSCAPE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const-string v1, "DEVICE_ORIENTATION"

    const-string v2, "device"

    invoke-direct {v0, v1, v5, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->DEVICE_ORIENTATION:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const-string v1, "UNDEFINED"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->FORCE_PORTRAIT:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->FORCE_LANDSCAPE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->DEVICE_ORIENTATION:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->UNDEFINED:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->$VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->$VALUES:[Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/utils/ClientMetadata$ForceOrientation;

    return-object v0
.end method
