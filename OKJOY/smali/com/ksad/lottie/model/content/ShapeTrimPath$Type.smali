.class public final enum Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/ShapeTrimPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    const-string v1, "Simultaneously"

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    new-instance v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    const-string v1, "Individually"

    invoke-direct {v0, v1, v3}, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

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

.method public static forId(I)Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown trim path type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    .registers 2

    const-class v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method

.method public static values()[Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    .registers 1

    sget-object v0, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {v0}, [Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method
