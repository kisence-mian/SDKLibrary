.class public final enum Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field public static final enum DISC_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field public static final enum MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field public static final enum NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    const-string v3, "DISC_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    return-object v0
.end method
