.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintUriAdapter;,
        Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final COLOR_MODE_MONOCHROME:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x17

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_18

    :cond_e
    move v0, v2

    :goto_f
    sput-boolean v0, Landroid/support/v4/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v4, :cond_1a

    :goto_15
    sput-boolean v2, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void

    :cond_18
    move v0, v1

    .line 70
    goto :goto_f

    :cond_1a
    move v2, v1

    .line 78
    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    .line 143
    iput v1, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    .line 144
    iput v1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    .line 163
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    .line 164
    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "colorMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 816
    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    .line 831
    .end local p0    # "original":Landroid/graphics/Bitmap;
    :goto_4
    return-object p0

    .line 820
    .restart local p0    # "original":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 822
    .local v3, "grayscale":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 824
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 825
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 826
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 827
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 828
    invoke-virtual {v0, p0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 829
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p0, v3

    .line 831
    goto :goto_4
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 4
    .param p0, "other"    # Landroid/print/PrintAttributes;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 558
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 559
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 563
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 564
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 567
    :cond_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3d

    .line 568
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 569
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 573
    :cond_3d
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 11
    .param p0, "imageWidth"    # I
    .param p1, "imageHeight"    # I
    .param p2, "content"    # Landroid/graphics/RectF;
    .param p3, "fittingMode"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 589
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 592
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p0

    div-float v1, v4, v5

    .line 593
    .local v1, "scale":F
    const/4 v4, 0x2

    if-ne p3, v4, :cond_34

    .line 594
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 598
    :goto_1b
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p0

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float v2, v4, v6

    .line 603
    .local v2, "translateX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float v3, v4, v6

    .line 605
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 606
    return-object v0

    .line 596
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :cond_34
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1b
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 796
    if-eqz p1, :cond_6

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v2, :cond_e

    .line 797
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad argument to loadBitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :cond_e
    const/4 v0, 0x0

    .line 801
    .local v0, "is":Ljava/io/InputStream;
    :try_start_f
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 802
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2d

    move-result-object v2

    .line 804
    if-eqz v0, :cond_23

    .line 806
    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 809
    :cond_23
    :goto_23
    return-object v2

    .line 807
    :catch_24
    move-exception v1

    .line 808
    .local v1, "t":Ljava/io/IOException;
    const-string v3, "PrintHelper"

    const-string v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 804
    .end local v1    # "t":Ljava/io/IOException;
    :catchall_2d
    move-exception v2

    if-eqz v0, :cond_33

    .line 806
    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 809
    :cond_33
    :goto_33
    throw v2

    .line 807
    :catch_34
    move-exception v1

    .line 808
    .restart local v1    # "t":Ljava/io/IOException;
    const-string v3, "PrintHelper"

    const-string v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 3

    .prologue
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_c

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    goto :goto_b
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 746
    if-eqz p1, :cond_8

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v7, :cond_10

    .line 747
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad argument to getScaledBitmap"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 750
    :cond_10
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 751
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    invoke-direct {p0, p1, v3}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 754
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    .local v5, "w":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 758
    .local v1, "h":I
    if-lez v5, :cond_22

    if-gtz v1, :cond_23

    .line 787
    :cond_22
    :goto_22
    return-object v6

    .line 763
    :cond_23
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 765
    .local v2, "imageSide":I
    const/4 v4, 0x1

    .line 766
    .local v4, "sampleSize":I
    :goto_28
    const/16 v7, 0xdac

    if-le v2, v7, :cond_31

    .line 767
    ushr-int/lit8 v2, v2, 0x1

    .line 768
    shl-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 772
    :cond_31
    if-lez v4, :cond_22

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v4

    if-lez v7, :cond_22

    .line 776
    iget-object v7, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 777
    :try_start_3d
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v6, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 778
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 779
    iget-object v6, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 780
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 781
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_5f

    .line 783
    :try_start_50
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_62

    move-result-object v6

    .line 785
    iget-object v7, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 786
    const/4 v8, 0x0

    :try_start_58
    iput-object v8, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v7

    goto :goto_22

    :catchall_5c
    move-exception v6

    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5c

    throw v6

    .line 781
    .end local v0    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_5f
    move-exception v6

    :try_start_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v6

    .line 785
    .restart local v0    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_62
    move-exception v6

    iget-object v7, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 786
    const/4 v8, 0x0

    :try_start_67
    iput-object v8, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    throw v6

    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v6
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 247
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13
    .param p1, "jobName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    if-nez p2, :cond_9

    .line 277
    :cond_8
    :goto_8
    return-void

    .line 262
    :cond_9
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string v1, "print"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 265
    .local v8, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroid/support/v4/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 266
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 270
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_1b
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 271
    invoke-virtual {v0, v7}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 272
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 275
    .local v6, "attr":Landroid/print/PrintAttributes;
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;

    iget v3, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_8

    .line 268
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    .end local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_3d
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .restart local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_1b
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageFile"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 341
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13
    .param p1, "jobName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageFile"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 356
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_7

    .line 376
    :goto_6
    return-void

    .line 360
    :cond_7
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget v5, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 363
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string v2, "print"

    .line 364
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 365
    .local v8, "printManager":Landroid/print/PrintManager;
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 366
    .local v7, "builder":Landroid/print/PrintAttributes$Builder;
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 368
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v1, :cond_3c

    .line 369
    :cond_2f
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 373
    :cond_34
    :goto_34
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 375
    .local v6, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_6

    .line 370
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_3c
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 371
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_34
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .prologue
    .line 199
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 200
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 221
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    .line 222
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .prologue
    .line 176
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    .line 177
    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 16
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p6, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 626
    sget-boolean v0, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v0, :cond_18

    .line 627
    move-object v3, p1

    .line 635
    .local v3, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_5
    new-instance v0, Landroid/support/v4/print/PrintHelper$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    move-object v7, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/print/PrintHelper$1;-><init>(Landroid/support/v4/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    return-void

    .line 631
    .end local v3    # "pdfAttributes":Landroid/print/PrintAttributes;
    :cond_18
    invoke-static {p1}, Landroid/support/v4/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v1, Landroid/print/PrintAttributes$Margins;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 632
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .restart local v3    # "pdfAttributes":Landroid/print/PrintAttributes;
    goto :goto_5
.end method
