.class public Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;
.super Lcom/sigmob/windad/base/WindVideoAdAdapter;

# interfaces
.implements Lcom/sigmob/sdk/rewardVideoAd/d;


# instance fields
.field private a:Lcom/sigmob/sdk/rewardVideoAd/c;

.field private b:Lcom/sigmob/windad/base/WindVideoAdConnector;

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindVideoAdAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdAdapterError;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method public initWithWADRewardVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initWithWADRewardVideoAdConnector Success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 5

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

    new-instance v0, Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/rewardVideoAd/c;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

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

.method public isInit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isReady(Lcom/sigmob/sdk/base/models/ADStrategy;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-nez v1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "load ,WindVideoAdConnector is Null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    instance-of v1, p1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    if-eqz v1, :cond_3c

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->isEnableKeepOn()Z

    move-result v1

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->isEnableScreenLockDisPlayAd()Z

    move-result v0

    move v6, v1

    move v7, v0

    :goto_21
    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v0, p0, p2}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPreLoadSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v0, p0, p2}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    instance-of v1, p1, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    if-eqz v1, :cond_ab

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->isEnableKeepOn()Z

    move-result v1

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->isEnableScreenLockDisPlayAd()Z

    move-result v0

    move v6, v1

    move v7, v0

    goto :goto_21

    :cond_51
    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_load_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    :try_start_73
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ad_scene"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enablescreenlockdisplayad"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enablekeepon"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_8e} :catch_a9

    :goto_8e
    :try_start_8e
    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {v1, p0}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Lcom/sigmob/sdk/rewardVideoAd/d;)V

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_98} :catch_99

    goto :goto_3b

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-direct {p0, v1}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToLoadRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    goto :goto_3b

    :catch_a9
    move-exception v1

    goto :goto_8e

    :cond_ab
    move v6, v0

    move v7, v0

    goto/16 :goto_21
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/base/common/AdActivity;

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

    :cond_6
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/base/common/AdActivity;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

    :cond_7
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_d
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidAdClick(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdClicked() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/sdk/rewardVideoAd/b;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-virtual {p1}, Lcom/sigmob/sdk/rewardVideoAd/b;->a()Z

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidCloseRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;ZLcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdClosedWithInfo() called with: info = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdLoadError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToLoadRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdLoadError() called with: error = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdLoadSuccess() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPlayCompleteRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayComplete() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPlayEndRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayEnd() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToPlayingRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayError() called with: error = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidStartPlayingRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayStart() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadFail(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPreLoadFailRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPreLoadFail() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPreLoadSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPreLoadSuccess() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public presentRewardVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdType()I

    move-result v3

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_load_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {v1, p1, v0}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
