.class public final enum Lcom/ksad/lottie/model/content/PolystarShape$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/PolystarShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/PolystarShape$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/PolystarShape$Type;

.field public static final enum Polygon:Lcom/ksad/lottie/model/content/PolystarShape$Type;

.field public static final enum Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;

    const-string v1, "Star"

    invoke-direct {v0, v1, v3, v2}, Lcom/ksad/lottie/model/content/PolystarShape$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    new-instance v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, v2, v4}, Lcom/ksad/lottie/model/content/PolystarShape$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Polygon:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    new-array v0, v4, [Lcom/ksad/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Polygon:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->$VALUES:[Lcom/ksad/lottie/model/content/PolystarShape$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->value:I

    return-void
.end method

.method public static forValue(I)Lcom/ksad/lottie/model/content/PolystarShape$Type;
    .registers 6

    invoke-static {}, Lcom/ksad/lottie/model/content/PolystarShape$Type;->values()[Lcom/ksad/lottie/model/content/PolystarShape$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    iget v4, v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->value:I

    if-ne v4, p0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/PolystarShape$Type;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/PolystarShape$Type;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/PolystarShape$Type;->$VALUES:[Lcom/ksad/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/PolystarShape$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method
