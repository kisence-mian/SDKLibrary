.class Lcom/sigmob/sdk/splash/SplashAdView$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/SplashAdView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/SplashAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView$5;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/k$c;Z)V
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/sigmob/sdk/splash/SplashAdView$5;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->g(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 2

    return-void
.end method
