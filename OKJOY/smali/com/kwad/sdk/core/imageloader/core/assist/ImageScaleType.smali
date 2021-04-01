.class public final enum Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_INT:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum NONE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field public static final enum NONE_SAFE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "NONE_SAFE"

    invoke-direct {v0, v1, v4}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v1, v5}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_INT"

    invoke-direct {v0, v1, v6}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY"

    invoke-direct {v0, v1, v7}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY_STRETCHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method
