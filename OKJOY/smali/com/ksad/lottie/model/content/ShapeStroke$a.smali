.class synthetic Lcom/ksad/lottie/model/content/ShapeStroke$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/lottie/model/content/ShapeStroke;
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

    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->b:[I

    :try_start_9
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Bevel:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Miter:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->b:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5b

    :goto_2a
    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->a:[I

    :try_start_33
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Butt:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Round:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/ksad/lottie/model/content/ShapeStroke$a;->a:[I

    sget-object v1, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->Unknown:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    :catch_5b
    move-exception v0

    goto :goto_2a

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
