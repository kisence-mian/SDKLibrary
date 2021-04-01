.class public Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final imageKey:Ljava/lang/String;

.field private final imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

.field private final imageUri:Ljava/lang/String;

.field private final originalImageUri:Ljava/lang/String;

.field private final targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

.field private final viewScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {p7}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    iput-object p5, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    iput-object p6, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    invoke-virtual {p7}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    invoke-virtual {p7}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isConsiderExifParams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p7}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .registers 5

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_35

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_3e
    return-void
.end method

.method private copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getImageKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalImageUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->originalImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getViewScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public shouldConsiderExifParams()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    return v0
.end method
