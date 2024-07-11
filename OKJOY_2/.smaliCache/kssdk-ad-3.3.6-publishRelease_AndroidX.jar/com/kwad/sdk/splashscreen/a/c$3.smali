.class Lcom/kwad/sdk/splashscreen/a/c$3;
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

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

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
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowStart()V

    :cond_11
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/c;->a(Lcom/kwad/sdk/splashscreen/a/c;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/c$3;->a:Lcom/kwad/sdk/splashscreen/a/c;

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
