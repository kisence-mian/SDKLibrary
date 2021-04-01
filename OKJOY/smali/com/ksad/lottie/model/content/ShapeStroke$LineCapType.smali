.class public final enum Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum Butt:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum Unknown:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "Butt"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Butt:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "Round"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Unknown:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Butt:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Unknown:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method


# virtual methods
.method public toPaintCap()Landroid/graphics/Paint$Cap;
    .registers 3

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_10

    :cond_14
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_10
.end method
