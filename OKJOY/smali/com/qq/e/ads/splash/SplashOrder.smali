.class public Lcom/qq/e/ads/splash/SplashOrder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/SOI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "initSplashOrder fail with error params"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SDK is not ready!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_f .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_39

    goto :goto_e

    :catch_1f
    move-exception v0

    const-string v0, "SplashOrder created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_e

    :cond_26
    :try_start_26
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/POFactory;->getSplashOrderDelegate()Lcom/qq/e/comm/pi/SOI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;
    :try_end_38
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_26 .. :try_end_38} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_38} :catch_39

    goto :goto_e

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public clickJoinAd(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SOI;->clickJoinAd(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public exposureJoinAd(Landroid/view/View;J)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gap"    # J

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/SOI;->exposureJoinAd(Landroid/view/View;J)V

    :cond_9
    return-void
.end method

.method public getJoinAdImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SOI;->getJoinAdImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOneshotCoverImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SOI;->getOneshotCoverImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOneshotCoverImagePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SOI;->getOneshotCoverImagePath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSplashProductType()Lcom/qq/e/comm/pi/SOI$AdProductType;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SOI;->getSplashProductType()Lcom/qq/e/comm/pi/SOI$AdProductType;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/qq/e/comm/pi/SOI$AdProductType;->UNKNOWN:Lcom/qq/e/comm/pi/SOI$AdProductType;

    goto :goto_a
.end method

.method public isJoinAd()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/SOI;->isJoinAd()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public reportJoinAdCost(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashOrder;->a:Lcom/qq/e/comm/pi/SOI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/SOI;->reportJoinAdCost(I)V

    :cond_9
    return-void
.end method
