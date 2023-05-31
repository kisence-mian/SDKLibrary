.class public Lcom/kwad/sdk/core/imageloader/KSImageLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IMGOPTION_NORMAL:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_NORMAL:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit()V
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->isInited()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->init(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    const/high16 v1, 0x1400000

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;->LIFO:Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/kwad/sdk/core/imageloader/core/assist/QueueProcessingType;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->init(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method

.method public static loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_default_app_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_default_app_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_default_app_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    goto :goto_8
.end method

.method public static loadAuthorCircleIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/16 v3, 0xff

    if-nez p0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_photo_default_author_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_photo_default_author_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_photo_default_author_icon"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/display/CircleBitmapDisplayer;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/display/CircleBitmapDisplayer;-><init>(Ljava/lang/Integer;F)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    goto :goto_5
.end method

.method public static loadFeeImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    goto :goto_9
.end method

.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_NORMAL:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, p0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    goto :goto_8
.end method

.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_NORMAL:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    goto :goto_8
.end method

.method public static preloadImage(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->checkInit()V

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->IMGOPTION_NORMAL:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    goto :goto_c
.end method
