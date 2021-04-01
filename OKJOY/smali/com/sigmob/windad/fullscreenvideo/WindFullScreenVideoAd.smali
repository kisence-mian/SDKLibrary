.class public Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/LifecycleListener;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;
.implements Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;


# static fields
.field private static a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

.field private static h:Landroid/os/Handler;


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

.field private c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
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

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    sput-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->f:Z

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

    :try_start_1c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    const-string v1, "WindFullScreenVideoAd error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method static synthetic a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

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

.method private a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
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

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    :goto_37
    return v0

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getAdType()I

    move-result v4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, v9

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_37
.end method

.method static synthetic b(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;
    .registers 2

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-direct {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;-><init>()V

    sput-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

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

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

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

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

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

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public autoLoadAd()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

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

    iget-object v2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

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
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    :try_start_a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_34

    :cond_1e
    :goto_1e
    packed-switch v0, :pswitch_data_3a

    const/4 v0, 0x0

    goto :goto_d

    :pswitch_23
    const-string v2, "sigmob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :pswitch_2d
    const-class v0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_data_34
    .packed-switch -0x35ca9371
        :pswitch_23
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2d
    .end packed-switch
.end method

.method public getLoadReadyCount()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->g:I

    return v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->isReady()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const-string v1, "isReady error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public loadAd(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_11

    :try_start_5
    const-string v1, "WindFullScreenAdRequest can\'t is null"

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "PlacementId with WindAdRequest can\'t is null"

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_10

    :cond_27
    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2a} :catch_7b

    move-result-object v1

    :try_start_2b
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    if-eq v0, v2, :cond_4d

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v2, :cond_5d

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_4d
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_10

    :cond_5d
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_6d

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto :goto_10

    :cond_6d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v2, "load"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_79} :catch_a4

    move-result v0

    goto :goto_10

    :catch_7b
    move-exception v0

    move-object v8, v0

    move-object v9, v3

    :goto_7e
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getAdType()I

    move-result v4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "load Ad error"

    invoke-static {v0, v8}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_INVALID_ADSLOT_ID:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, v9}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_10

    :catch_a4
    move-exception v0

    move-object v8, v0

    move-object v9, v1

    goto :goto_7e
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->autoLoadAd()V

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

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$6;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$6;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->f:Z

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;

    invoke-direct {v1, p0, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->f:Z

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$9;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdLoadStart(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->f:Z

    iget v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->g:I

    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->f:Z

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$1;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

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

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$5;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$8;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoAdPlayStart(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$4;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$4;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Pre Load fail"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$3;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Pre Load fail"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadSuccess(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->h:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$2;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$2;-><init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWindFullScreenVideoAdListener(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z
    .registers 8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getOptions()Ljava/util/Map;

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

    invoke-virtual {p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getOptions()Ljava/util/Map;

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
    invoke-virtual {p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 6
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

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "PlacementId with WindFullScreenAdRequest can\'t is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v1

    :goto_12
    return v0

    :cond_13
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_23

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    move v0, v1

    goto :goto_12

    :cond_23
    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_37

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    :cond_37
    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz v0, :cond_46

    invoke-virtual {v0, p1, p3}, Lcom/sigmob/windad/base/WindAdRequestController;->showAd(Landroid/app/Activity;Ljava/util/HashMap;)V

    :goto_44
    const/4 v0, 0x1

    goto :goto_12

    :cond_46
    const-string v0, "can\'t find  controller object"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_50} :catch_52

    move v0, v1

    goto :goto_12

    :catch_52
    move-exception v0

    const-string v1, "show Ad error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44
.end method
