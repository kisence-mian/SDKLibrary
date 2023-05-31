.class public Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/LifecycleListener;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;


# static fields
.field private static a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

.field private static f:Landroid/os/Handler;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/base/WindAdRequestController;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/windad/base/WindAdRequestController;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    sput-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    :try_start_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "WindRewardedVideoAd error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method static synthetic a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "platform"

    invoke-interface {v6, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "load_id"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v1, "sub_category"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "7"

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    if-eq v0, v1, :cond_24

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v1, :cond_38

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_24
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    :goto_37
    return v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    if-nez v0, :cond_59

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/windad/base/WindAdRequestController;-><init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_5c} :catch_5e

    const/4 v0, 0x1

    goto :goto_37

    :catch_5e
    move-exception v0

    move-object v8, v0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getAdType()I

    move-result v4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v9

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_37
.end method

.method static synthetic b(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;
    .registers 2

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-direct {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;-><init>()V

    sput-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public adapterDidInitFailVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidInitFailVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], error = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidInitSuccessVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getStrategies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2c

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    goto :goto_18

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidInitSuccessVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public autoLoadAd()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v3, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v2, v3, :cond_a

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->autoload()V

    goto :goto_a

    :cond_28
    return-void
.end method

.method public getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52

    :try_start_e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adapter class name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_35} :catch_37

    move-object v0, v1

    :cond_36
    :goto_36
    return-object v0

    :catch_37
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdapterClsName error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\."

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-le v5, v4, :cond_36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v1, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1ec

    :cond_8a
    :goto_8a
    packed-switch v1, :pswitch_data_21a

    :goto_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adapter class name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_36

    :sswitch_b2
    const-string v3, "sigmob"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    move v1, v2

    goto :goto_8a

    :sswitch_bc
    const-string v2, "admob"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    move v1, v3

    goto :goto_8a

    :sswitch_c6
    const-string v2, "facebookaudiencenetwork"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    move v1, v4

    goto :goto_8a

    :sswitch_d0
    const-string v2, "vungle"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x3

    goto :goto_8a

    :sswitch_da
    const-string v2, "ironsource"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x4

    goto :goto_8a

    :sswitch_e4
    const-string v2, "applovin"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x5

    goto :goto_8a

    :sswitch_ee
    const-string v2, "unityads"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x6

    goto :goto_8a

    :sswitch_f8
    const-string v2, "mintegral"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v1, 0x7

    goto :goto_8a

    :sswitch_102
    const-string v2, "mobvista"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/16 v1, 0x8

    goto/16 :goto_8a

    :sswitch_10e
    const-string v2, "toutiao"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/16 v1, 0x9

    goto/16 :goto_8a

    :sswitch_11a
    const-string v2, "gdt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/16 v1, 0xa

    goto/16 :goto_8a

    :pswitch_126
    const-class v0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_12e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Admob.GoogleAdmobRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".FacebookRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Vungle.VungleRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_16d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Ironsource.IronsourceRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AppLovin.AppLovinRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".UnityAds.UnityAdsRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_1ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Mintegral.MintegralRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_1c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".toutiao.TouTiaoRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    :pswitch_1d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gdt.GDTRewardVideoAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8d

    nop

    :sswitch_data_1ec
    .sparse-switch
        -0x439c2a43 -> :sswitch_10e
        -0x3746d91d -> :sswitch_da
        -0x35ca9371 -> :sswitch_b2
        -0x2fffd7cf -> :sswitch_d0
        -0x2760f873 -> :sswitch_102
        -0x11610ee5 -> :sswitch_ee
        0x18f37 -> :sswitch_11a
        0x58603fd -> :sswitch_bc
        0x120ca424 -> :sswitch_c6
        0x431e1919 -> :sswitch_f8
        0x4650da37 -> :sswitch_e4
    .end sparse-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_126
        :pswitch_12e
        :pswitch_143
        :pswitch_158
        :pswitch_16d
        :pswitch_182
        :pswitch_197
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1c1
        :pswitch_1d6
    .end packed-switch
.end method

.method public getLoadReadyCount()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->e:I

    return v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->isReady()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public loadAd(Lcom/sigmob/windad/WindAdRequest;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/sigmob/windad/base/WindVideoAdRequest;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 13

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_29

    :try_start_5
    const-string v0, "WindVideoAdRequest can\'t is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v8}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    :goto_28
    return v0

    :cond_29
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "PlacementId with WindAdRequest can\'t is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v8}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_28

    :cond_57
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5a} :catch_ac

    move-result-object v1

    :try_start_5b
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    if-eq v0, v2, :cond_7d

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v2, :cond_8d

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-eqz v0, :cond_8d

    :cond_7d
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_28

    :cond_8d
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_9d

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_28

    :cond_9d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v2, "load"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_a9} :catch_d6

    move-result v0

    goto/16 :goto_28

    :catch_ac
    move-exception v0

    move-object v8, v0

    move-object v9, v10

    :goto_af
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getAdType()I

    move-result v4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v10

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "load Ad error"

    invoke-static {v0, v8}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v9}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_28

    :catch_d6
    move-exception v0

    move-object v8, v0

    move-object v9, v1

    goto :goto_af
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
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->autoLoadAd()V

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

.method public onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$6;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$6;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$8;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdLoadStart(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->e:I

    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$1;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Load Success"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPlayComplete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onVideoAdPlayEnd(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$5;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$9;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$4;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$4;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Pre Load fail"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$3;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Pre Load fail"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$2;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$2;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWindRewardedVideoAdListener(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/WindAdRequest;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/base/WindVideoAdRequest;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_2f

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_37
    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_28

    :try_start_4
    const-string v0, "activity can\'t is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    :goto_27
    return v0

    :cond_28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "PlacementId with WindAdRequest can\'t is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_27

    :cond_52
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_62

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_27

    :cond_62
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/WindAds;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_7d

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    :cond_7d
    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz v0, :cond_8c

    invoke-virtual {v0, p1, p3}, Lcom/sigmob/windad/base/WindAdRequestController;->showAd(Landroid/app/Activity;Ljava/util/HashMap;)V

    :goto_8a
    move v0, v8

    goto :goto_27

    :cond_8c
    const-string v0, "can\'t find  controller object"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_96} :catch_98

    move v0, v7

    goto :goto_27

    :catch_98
    move-exception v0

    const-string v1, "show Ad "

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8a
.end method
