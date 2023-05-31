.class public final enum Lcom/ksad/lottie/model/content/GradientType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/GradientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/GradientType;

.field public static final enum Linear:Lcom/ksad/lottie/model/content/GradientType;

.field public static final enum Radial:Lcom/ksad/lottie/model/content/GradientType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/GradientType;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    new-instance v0, Lcom/ksad/lottie/model/content/GradientType;

    const-string v1, "Radial"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/GradientType;->Radial:Lcom/ksad/lottie/model/content/GradientType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ksad/lottie/model/content/GradientType;

    sget-object v1, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/GradientType;->Radial:Lcom/ksad/lottie/model/content/GradientType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ksad/lottie/model/content/GradientType;->$VALUES:[Lcom/ksad/lottie/model/content/GradientType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/GradientType;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/GradientType;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/GradientType;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/GradientType;->$VALUES:[Lcom/ksad/lottie/model/content/GradientType;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/GradientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/GradientType;

    return-object v0
.end method
