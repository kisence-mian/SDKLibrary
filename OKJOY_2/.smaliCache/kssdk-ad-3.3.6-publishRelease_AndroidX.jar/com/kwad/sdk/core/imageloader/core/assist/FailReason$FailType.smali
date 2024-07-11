.class public final enum Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

.field public static final enum DECODING_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

.field public static final enum IO_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

.field public static final enum NETWORK_DENIED:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

.field public static final enum OUT_OF_MEMORY:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

.field public static final enum UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const-string v1, "IO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const-string v3, "DECODING_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const-string v5, "NETWORK_DENIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    new-instance v5, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const-string v7, "OUT_OF_MEMORY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    new-instance v7, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    return-object p0
.end method

.method public static values()[Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    return-object v0
.end method
