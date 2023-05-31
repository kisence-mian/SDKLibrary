.class public Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;
.super Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

# interfaces
.implements Lcom/sigmob/sdk/splash/b;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

.field private b:Lcom/sigmob/sdk/splash/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;-><init>()V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;
    .registers 4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdError;->valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    :try_start_a
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/windad/WindAdError;->valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method public initWithWAdConnector(Lcom/sigmob/windad/Splash/WindSplashAdBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    return-void
.end method

.method public initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/a;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/sigmob/sdk/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initializeSdk Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidAdClickSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_9
    return-void
.end method

.method public onSplashAdFailToPresent(Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdError;)V

    :cond_d
    return-void
.end method

.method public onSplashAdSuccessPresentScreen()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidSuccessPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_9
    return-void
.end method

.method public onSplashClosed()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidCloseSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/WindAdRequest;)V
    .registers 12

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p4}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p4}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/sigmob/sdk/splash/c;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move v5, p3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/splash/c;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;ILcom/sigmob/sdk/splash/b;)V

    return-void
.end method
