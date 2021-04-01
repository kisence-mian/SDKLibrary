.class public Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;,
        Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;
    }
.end annotation


# static fields
.field protected static final ERROR_CANT_DECODE_IMAGE:Ljava/lang/String; = "Image can\'t be decoded [%s]"

.field protected static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field protected static final LOG_FLIP_IMAGE:Ljava/lang/String; = "Flip image horizontally [%s]"

.field protected static final LOG_ROTATE_IMAGE:Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"

.field protected static final LOG_SCALE_IMAGE:Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

.field protected static final LOG_SUBSAMPLE_IMAGE:Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"


# instance fields
.field protected final loggingEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    return-void
.end method

.method private canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    move-result-object v0

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-ne v0, v2, :cond_5e

    :cond_16
    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(III)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    move-result-object v4

    sget-object v7, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-ne v0, v7, :cond_a7

    move v0, v6

    :goto_30
    invoke-static {v2, v3, v4, v0}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)F

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v3, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v3, :cond_5e

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->scale(F)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const-string v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    if-eqz p4, :cond_76

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v5, v0, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_76

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Flip image horizontally [%s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_76
    if-eqz p3, :cond_93

    int-to-float v0, p3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v0, :cond_93

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "Rotate image on %1$d\u00b0 [%2$s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_a6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a6
    return-object v0

    :cond_a7
    move v0, v1

    goto :goto_30
.end method

.method public decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_17

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "No stream for image [%s]"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_16
    return-object v0

    :cond_17
    :try_start_17
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    move-result-object v2

    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->resetStream(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_48

    move-result-object v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v0, :cond_3d

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Image can\'t be decoded [%s]"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_3d
    iget-object v1, v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v2, v1, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iget-boolean v1, v1, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16

    :catchall_48
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected defineExifOrientation(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_2a

    move-result v2

    packed-switch v2, :pswitch_data_36

    move v0, v1

    :goto_18
    :pswitch_18
    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v2, v1, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZ)V

    return-object v2

    :pswitch_1e
    move v0, v1

    :pswitch_1f
    const/16 v1, 0x5a

    goto :goto_18

    :pswitch_22
    move v0, v1

    :pswitch_23
    const/16 v1, 0x10e

    goto :goto_18

    :pswitch_26
    move v0, v1

    :pswitch_27
    const/16 v1, 0xb4

    goto :goto_18

    :catch_2a
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v2, "Can\'t read EXIF tags from file [%s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_34
    move v0, v1

    goto :goto_18

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_34
        :pswitch_18
        :pswitch_26
        :pswitch_27
        :pswitch_23
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .registers 9

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->shouldConsiderExifParams()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    move-result-object v0

    :goto_22
    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    new-instance v3, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    invoke-direct {v3, v4, v1, v5}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(III)V

    invoke-direct {v2, v3, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    return-object v2

    :cond_33
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    goto :goto_22
.end method

.method protected getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected prepareDecodingOptions(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    move-result-object v0

    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-ne v0, v3, :cond_36

    move v0, v1

    :goto_b
    if-le v0, v1, :cond_2f

    iget-boolean v3, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v3, :cond_2f

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->scaleDown(I)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string v1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v1

    :cond_36
    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-ne v0, v3, :cond_3f

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeMinImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)I

    move-result v0

    goto :goto_b

    :cond_3f
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v3

    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    if-ne v0, v4, :cond_51

    move v0, v1

    :goto_48
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    move-result-object v4

    invoke-static {p1, v3, v4, v0}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)I

    move-result v0

    goto :goto_b

    :cond_51
    move v0, v2

    goto :goto_48
.end method

.method protected resetStream(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .registers 4

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    :goto_9
    return-object p1

    :catch_a
    move-exception v0

    :cond_b
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_9
.end method
