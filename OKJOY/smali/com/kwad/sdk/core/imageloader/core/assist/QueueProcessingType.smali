.class public final enum Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

.field public static final enum FIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

.field public static final enum LIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    const-string v1, "FIFO"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->FIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    const-string v1, "LIFO"

    invoke-direct {v0, v1, v3}, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->LIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->FIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->LIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    return-object v0
.end method
