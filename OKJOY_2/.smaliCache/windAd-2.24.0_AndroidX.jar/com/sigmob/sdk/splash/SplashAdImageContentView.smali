.class public Lcom/sigmob/sdk/splash/SplashAdImageContentView;
.super Lcom/sigmob/sdk/splash/e;


# instance fields
.field c:Lcom/sigmob/sdk/base/views/GifImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/e;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-direct {v2, p1}, Lcom/sigmob/sdk/base/views/GifImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->a()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 9

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "git"

    const-string v1, "jpeg"

    const-string v2, "jpg"

    const-string v3, "png"

    const-string v4, "bmp"

    const-string v5, "webp"

    const-string v6, "tif"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    return v3

    :cond_26
    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "com.sigmob.action.interstitial.show"

    if-eqz v2, :cond_4f

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/e;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/e;->e(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-static {v0, v3, p1}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object p1

    if-eqz p1, :cond_6a

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->setMovie(Landroid/graphics/Movie;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->b:J

    invoke-static {p1, v0, v1, v5}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    return v4

    :cond_4f
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->b:J

    invoke-static {v0, v1, v2, v5}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdImageContentView;->c:Lcom/sigmob/sdk/base/views/GifImageView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return v4

    :cond_6a
    return v3
.end method

.method public bridge synthetic b()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->c()V

    return-void
.end method

.method public bridge synthetic getDuration()I
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/splash/e;->getDuration()I

    move-result v0

    return v0
.end method
