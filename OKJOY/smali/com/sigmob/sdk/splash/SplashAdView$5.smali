.class Lcom/sigmob/sdk/splash/SplashAdView$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/SplashAdView;->e(Landroid/content/Context;)V
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
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView$5;->a:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->g(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    return-void
.end method
