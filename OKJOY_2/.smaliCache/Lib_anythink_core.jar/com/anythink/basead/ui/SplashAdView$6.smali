.class final Lcom/anythink/basead/ui/SplashAdView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SplashAdView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/SplashAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 292
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/SplashAdView;->a(Lcom/anythink/basead/ui/SplashAdView;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 293
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SplashAdView;->getWidth()I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/SplashAdView;->getHeight()I

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget v2, v2, Lcom/anythink/basead/ui/SplashAdView;->u:I

    iget-object v3, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    iget v3, v3, Lcom/anythink/basead/ui/SplashAdView;->v:I

    if-le v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 298
    :goto_21
    iget-object v3, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 299
    iget-object v4, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-virtual {v5}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 304
    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    if-eqz v2, :cond_64

    .line 305
    int-to-double v7, v4

    mul-double/2addr v7, v5

    double-to-int v2, v7

    .line 306
    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    goto :goto_6a

    .line 308
    :cond_64
    int-to-double v2, v3

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 309
    int-to-double v3, v4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 312
    :goto_6a
    if-ge v0, v2, :cond_74

    .line 313
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "Splash display width is less than 75% of screen width!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_74
    if-ge v1, v3, :cond_7e

    .line 315
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v1, "Splash display height is less than 75% of screen height!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 317
    :cond_7e
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/SplashAdView;->b(Lcom/anythink/basead/ui/SplashAdView;)V

    .line 319
    return-void

    .line 320
    :cond_84
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView$6;->a:Lcom/anythink/basead/ui/SplashAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/SplashAdView;->c(Lcom/anythink/basead/ui/SplashAdView;)V

    .line 322
    return-void
.end method
