.class public final Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-direct {v1, v0, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v1, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)I
    .registers 13

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v5

    sget-object v0, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$kwad$sdk$core$imageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v1, :cond_41

    const/4 v6, 0x2

    if-eq v0, v6, :cond_26

    move v0, v1

    :cond_1f
    :goto_1f
    if-ge v0, v1, :cond_5c

    :goto_21
    invoke-static {v2, v3, v1, p3}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result v0

    return v0

    :cond_26
    if-eqz p3, :cond_38

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v3, 0x2

    move v0, v1

    :goto_2d
    div-int v8, v6, v0

    if-le v8, v4, :cond_1f

    div-int v8, v7, v0

    if-le v8, v5, :cond_1f

    mul-int/lit8 v0, v0, 0x2

    goto :goto_2d

    :cond_38
    div-int v0, v2, v4

    div-int v4, v3, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1f

    :cond_41
    if-eqz p3, :cond_53

    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v7, v3, 0x2

    move v0, v1

    :goto_48
    div-int v8, v6, v0

    if-gt v8, v4, :cond_50

    div-int v8, v7, v0

    if-le v8, v5, :cond_1f

    :cond_50
    mul-int/lit8 v0, v0, 0x2

    goto :goto_48

    :cond_53
    div-int v0, v2, v4

    div-int v4, v3, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1f

    :cond_5c
    move v1, v0

    goto :goto_21
.end method

.method public static computeImageScale(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)F
    .registers 13

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    int-to-float v5, v3

    int-to-float v2, v1

    div-float v2, v5, v2

    int-to-float v6, v4

    int-to-float v7, v0

    div-float v7, v6, v7

    sget-object v8, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    if-ne p2, v8, :cond_20

    cmpl-float v8, v2, v7

    if-gez v8, :cond_28

    :cond_20
    sget-object v8, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->CROP:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    if-ne p2, v8, :cond_3e

    cmpg-float v8, v2, v7

    if-gez v8, :cond_3e

    :cond_28
    div-float v0, v6, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    :goto_2d
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p3, :cond_35

    if-ge v2, v3, :cond_35

    if-lt v1, v4, :cond_3b

    :cond_35
    if-eqz p3, :cond_3d

    if-eq v2, v3, :cond_3d

    if-eq v1, v4, :cond_3d

    :cond_3b
    int-to-float v0, v2

    div-float/2addr v0, v5

    :cond_3d
    return v0

    :cond_3e
    div-float v1, v5, v7

    float-to-int v1, v1

    move v2, v1

    move v1, v0

    goto :goto_2d
.end method

.method public static computeMinImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)I
    .registers 7

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    sget-object v2, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    sget-object v3, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v1, v1

    int-to-float v2, v3

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .registers 7

    sget-object v0, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    :goto_c
    div-int v2, p0, p2

    if-gt v2, v0, :cond_14

    div-int v2, p1, p2

    if-le v2, v1, :cond_1c

    :cond_14
    if-eqz p3, :cond_19

    mul-int/lit8 p2, p2, 0x2

    goto :goto_c

    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_1c
    return p2
.end method

.method public static defineTargetSizeForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
    .registers 5

    invoke-interface {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    :cond_a
    invoke-interface {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v1

    if-gtz v1, :cond_14

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    :cond_14
    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method
