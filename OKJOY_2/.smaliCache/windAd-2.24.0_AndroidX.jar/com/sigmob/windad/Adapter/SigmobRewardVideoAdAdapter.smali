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
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindVideoAdAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    const/16 v0, 0x8b6

    iput v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->e:I

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

    iget v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->e:I

    return v0
.end method

.method public initWithWADVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " initWithWADRewardVideoAdConnector Success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 3

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/a;->a(Landroid/content/Context;)Lcom/sigmob/sdk/a;

    new-instance p1, Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-direct {p1}, Lcom/sigmob/sdk/rewardVideoAd/c;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " initializeSdk Success"

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

.method public isReady(Lcom/sigmob/sdk/common/models/ADStrategy;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 14

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_90

    instance-of v0, p1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->isEnableKeepOn()Z

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->isEnableScreenLockDisPlayAd()Z

    move-result v0

    :goto_14
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_29

    :cond_18
    instance-of v0, p1, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->isEnableKeepOn()Z

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->isEnableScreenLockDisPlayAd()Z

    move-result v0

    goto :goto_14

    :cond_28
    move v0, v1

    :goto_29
    iget-object v2, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v7

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getSig_load_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    :try_start_4c
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object p1

    const-string v3, "ad_scene"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enablescreenlockdisplayad"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enablekeepon"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_68

    goto :goto_69

    :catchall_68
    move-exception p1

    :goto_69
    :try_start_69
    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Lcom/sigmob/sdk/rewardVideoAd/d;)V

    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_74

    goto :goto_8f

    :catchall_74
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToLoadVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :goto_8f
    return-void

    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "load ,WindVideoAdConnector is Null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 2

    instance-of p1, p1, Lcom/sigmob/sdk/base/common/AdActivity;

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->c:Landroid/app/Activity;

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

    if-eqz v0, :cond_9

    if-eq p1, v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
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

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidAdClick(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdClicked() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/sdk/rewardVideoAd/b;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-virtual {p1}, Lcom/sigmob/sdk/rewardVideoAd/b;->a()Z

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidCloseVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;ZLcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdClosedWithInfo() called with: info = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], placementId = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdLoadError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p2

    invoke-interface {v1, p0, p2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToLoadVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoAdLoadError() called with: error = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], placementId = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidLoadAdSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdLoadSuccess() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPlayCompleteVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayComplete() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPlayEndVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayEnd() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p2

    invoke-interface {v1, p0, p2, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidFailToPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoAdPlayError() called with: error = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], placementId = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidStartPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPlayStart() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadFail(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object p2, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz p2, :cond_f

    invoke-interface {p2, p0, p1}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPreLoadFailVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVideoAdPreLoadFail() called with: placementId = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v1, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->b:Lcom/sigmob/windad/base/WindVideoAdConnector;

    if-eqz v1, :cond_f

    invoke-interface {v1, p0, v0}, Lcom/sigmob/windad/base/WindVideoAdConnector;->adapterDidPreLoadSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdPreLoadSuccess() called with: placementId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public presentVideoAd(Landroid/app/Activity;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 10

    new-instance v6, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdType()I

    move-result v3

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getSig_load_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;->a:Lcom/sigmob/sdk/rewardVideoAd/c;

    invoke-virtual {p2, p1, v6}, Lcom/sigmob/sdk/rewardVideoAd/c;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method
