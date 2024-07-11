.class public final Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

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
    .registers 10

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p1

    sget-object v2, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$kwad$sdk$core$imageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_5c

    move v4, v2

    goto :goto_53

    :pswitch_1e
    if-eqz p3, :cond_30

    div-int/lit8 p2, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    move v4, v2

    :goto_25
    div-int v5, p2, v4

    if-le v5, v1, :cond_53

    div-int v5, v3, v4

    if-le v5, p1, :cond_53

    mul-int/lit8 v4, v4, 0x2

    goto :goto_25

    :cond_30
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_53

    :pswitch_39
    if-eqz p3, :cond_4b

    div-int/lit8 p2, v0, 0x2

    div-int/lit8 v3, p0, 0x2

    move v4, v2

    :goto_40
    div-int v5, p2, v4

    if-gt v5, v1, :cond_48

    div-int v5, v3, v4

    if-le v5, p1, :cond_53

    :cond_48
    mul-int/lit8 v4, v4, 0x2

    goto :goto_40

    :cond_4b
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_53
    :goto_53
    if-ge v4, v2, :cond_56

    goto :goto_57

    :cond_56
    move v2, v4

    :goto_57
    invoke-static {v0, p0, v2, p3}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result p0

    return p0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)F
    .registers 11

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float v3, v2, v3

    int-to-float v4, p0

    int-to-float v5, p1

    div-float v5, v4, v5

    sget-object v6, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_20

    cmpl-float v6, v3, v5

    if-gez v6, :cond_28

    :cond_20
    sget-object v6, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->CROP:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_2b

    cmpg-float p2, v3, v5

    if-gez p2, :cond_2b

    :cond_28
    div-float/2addr v4, v3

    float-to-int p1, v4

    goto :goto_2e

    :cond_2b
    div-float p2, v2, v5

    float-to-int v1, p2

    :goto_2e
    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p3, :cond_36

    if-ge v1, v0, :cond_36

    if-lt p1, p0, :cond_3c

    :cond_36
    if-eqz p3, :cond_3f

    if-eq v1, v0, :cond_3f

    if-eq p1, p0, :cond_3f

    :cond_3c
    int-to-float p0, v1

    div-float p2, p0, v2

    :cond_3f
    return p2
.end method

.method public static computeMinImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)I
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    sget-object v2, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float p0, p0

    int-to-float v1, v2

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
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

    if-gt v2, v0, :cond_16

    div-int v2, p1, p2

    if-le v2, v1, :cond_15

    goto :goto_16

    :cond_15
    return p2

    :cond_16
    :goto_16
    if-eqz p3, :cond_1b

    mul-int/lit8 p2, p2, 0x2

    goto :goto_c

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_c
.end method

.method public static defineTargetSizeForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
    .registers 3

    invoke-interface {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    :cond_a
    invoke-interface {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getHeight()I

    move-result p0

    if-gtz p0, :cond_14

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    :cond_14
    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-direct {p1, v0, p0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    return-object p1
.end method
