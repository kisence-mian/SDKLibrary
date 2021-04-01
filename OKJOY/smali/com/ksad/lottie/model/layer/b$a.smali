.class synthetic Lcom/ksad/lottie/model/layer/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/layer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ksad/lottie/model/layer/Layer$MatteType;->values()[Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ksad/lottie/model/layer/b$a;->a:[I

    :try_start_9
    sget-object v0, Lcom/ksad/lottie/model/layer/b$a;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Add:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ksad/lottie/model/layer/b$a;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$MatteType;->Invert:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
