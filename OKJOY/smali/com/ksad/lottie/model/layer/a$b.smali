.class synthetic Lcom/ksad/lottie/model/layer/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/layer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/ksad/lottie/model/content/Mask$MaskMode;->values()[Lcom/ksad/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    :try_start_9
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_93

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_91

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_8f

    :goto_2a
    invoke-static {}, Lcom/ksad/lottie/model/layer/Layer$LayerType;->values()[Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    :try_start_33
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Shape:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_8d

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_8b

    :goto_49
    :try_start_49
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Solid:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_89

    :goto_54
    :try_start_54
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Image:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_87

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Null:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_85

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Text:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_83

    :goto_75
    :try_start_75
    sget-object v0, Lcom/ksad/lottie/model/layer/a$b;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_80

    :catch_83
    move-exception v0

    goto :goto_75

    :catch_85
    move-exception v0

    goto :goto_6a

    :catch_87
    move-exception v0

    goto :goto_5f

    :catch_89
    move-exception v0

    goto :goto_54

    :catch_8b
    move-exception v0

    goto :goto_49

    :catch_8d
    move-exception v0

    goto :goto_3e

    :catch_8f
    move-exception v0

    goto :goto_2a

    :catch_91
    move-exception v0

    goto :goto_1f

    :catch_93
    move-exception v0

    goto :goto_14
.end method
