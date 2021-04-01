.class public Lcom/sigmob/sdk/splash/SplashAdImageContentView;
.super Lcom/sigmob/sdk/splash/e;


# instance fields
.field c:Lcom/sigmob/sdk/base/views/GifImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/e;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->a()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "git"

    aput-object v4, v3, v0

    const-string v4, "jpeg"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "jpg"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "png"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "bmp"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "webp"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "tif"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_38
    :goto_38
    return v0

    :cond_39
    const-string v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/e;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/e;->e(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v3, v0, v2}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/GifImageView;->setMovie(Landroid/graphics/Movie;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->b:J

    const-string v4, "com.sigmob.action.interstitial.show"

    invoke-static {v0, v2, v3, v4}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    move v0, v1

    goto :goto_38

    :cond_62
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v4, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->b:J

    const-string v3, "com.sigmob.action.interstitial.show"

    invoke-static {v0, v4, v5, v3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v0, v1

    goto :goto_38
.end method

.method public bridge synthetic getDuration()I
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->getDuration()I

    move-result v0

    return v0
.end method
