.class public final enum Lcom/ksad/lottie/model/layer/Layer$MatteType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/layer/Layer$MatteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/layer/Layer$MatteType;

.field public static final enum Add:Lcom/ksad/lottie/model/layer/Layer$MatteType;

.field public static final enum Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

.field public static final enum None:Lcom/ksad/lottie/model/layer/Layer$MatteType;

.field public static final enum Unknown:Lcom/ksad/lottie/model/layer/Layer$MatteType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->None:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    new-instance v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const-string v1, "Add"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Add:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    new-instance v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const-string v1, "Invert"

    invoke-direct {v0, v1, v4}, Lcom/ksad/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    new-instance v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lcom/ksad/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Unknown:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ksad/lottie/model/layer/Layer$MatteType;

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->None:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Add:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Unknown:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->$VALUES:[Lcom/ksad/lottie/model/layer/Layer$MatteType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/layer/Layer$MatteType;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/layer/Layer$MatteType;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/layer/Layer$MatteType;->$VALUES:[Lcom/ksad/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/layer/Layer$MatteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method
