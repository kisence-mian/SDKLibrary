.class public final enum Lcom/ksad/lottie/model/content/Mask$MaskMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/Mask$MaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

.field public static final enum MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;

    const-string v1, "MaskModeAdd"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;

    const-string v1, "MaskModeSubtract"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    new-instance v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;

    const-string v1, "MaskModeIntersect"

    invoke-direct {v0, v1, v4}, Lcom/ksad/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ksad/lottie/model/content/Mask$MaskMode;

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/ksad/lottie/model/content/Mask$MaskMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/Mask$MaskMode;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/Mask$MaskMode;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/Mask$MaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
