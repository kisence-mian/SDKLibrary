.class Lcom/kwad/sdk/splashscreen/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowStart()V

    :cond_11
    iget-object p1, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5a

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p2}, Lcom/kwad/sdk/splashscreen/a/c;->b(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_5a

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p2}, Lcom/kwad/sdk/splashscreen/a/c;->c(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p2}, Lcom/kwad/sdk/splashscreen/a/c;->d(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x14

    invoke-static {p2, p1, p3}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p2}, Lcom/kwad/sdk/splashscreen/a/c;->c(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/c;->e(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5a
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/c;->a(Lcom/kwad/sdk/splashscreen/a/c;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$2;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    const/4 p2, 0x0

    const-string p3, "load image error"

    invoke-interface {p1, p2, p3}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowError(ILjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method
