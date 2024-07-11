.class public Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;
.super Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

# interfaces
.implements Lcom/sigmob/sdk/splash/b;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

.field private b:Lcom/sigmob/sdk/splash/c;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;-><init>()V

    const/16 v0, 0x8b6

    iput v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->c:I

    return-void
.end method

.method private a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;
    .registers 4

    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdapterVersion()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->c:I

    return v0
.end method

.method public initWithWAdConnector(Lcom/sigmob/windad/Splash/WindSplashAdBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    return-void
.end method

.method public initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/a;->b()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/a;->a(Landroid/content/Context;)Lcom/sigmob/sdk/a;

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "initializeSdk Success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public isInit()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/a;->b()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 11

    if-eqz p1, :cond_4f

    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/sigmob/sdk/base/common/c;->a(Landroid/content/Context;)Lcom/sigmob/sdk/common/models/SigmobError;

    move-result-object p4

    if-eqz p4, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check loadAd error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const-string v0, "load"

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmobError;->commit()V

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_4a

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, v1, p4}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p4

    invoke-interface {v0, p0, p4}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailLoadScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    :cond_4a
    return-void

    :catch_4b
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "loadAd: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p4, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    new-instance p3, Lcom/sigmob/sdk/splash/c;

    invoke-direct {p3, p1, p2, p4, p0}, Lcom/sigmob/sdk/splash/c;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/splash/b;)V

    iput-object p3, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->b:Lcom/sigmob/sdk/splash/c;

    invoke-virtual {p3}, Lcom/sigmob/sdk/splash/c;->a()Z

    move-result p1

    if-nez p1, :cond_aa

    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz p1, :cond_aa

    const/4 p2, 0x0

    const-string p3, "sigmob load adManager is null"

    invoke-direct {p0, p2, p3}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailLoadScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_aa
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->b:Lcom/sigmob/sdk/splash/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/c;->a(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->b:Lcom/sigmob/sdk/splash/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/c;->b(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public onSplashAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidAdClickSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_7
    return-void
.end method

.method public onSplashAdFailToPresent(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_b
    return-void
.end method

.method public onSplashAdLoadFail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailLoadScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_b
    return-void
.end method

.method public onSplashAdLoadSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidReceiveSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_7
    return-void
.end method

.method public onSplashAdSuccessPresentScreen()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidSuccessPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_7
    return-void
.end method

.method public onSplashClosed()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidCloseSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V

    :cond_7
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " show"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->b:Lcom/sigmob/sdk/splash/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/c;->b()Z

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz p1, :cond_3d

    const-string v1, "sigmob show adManager is null"

    goto :goto_36

    :cond_30
    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a:Lcom/sigmob/windad/Splash/WindSplashAdConnector;

    if-eqz p1, :cond_3d

    const-string v1, "mSplashAd is null"

    :goto_36
    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sigmob/windad/Splash/WindSplashAdConnector;->adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_3d
    return-void
.end method
