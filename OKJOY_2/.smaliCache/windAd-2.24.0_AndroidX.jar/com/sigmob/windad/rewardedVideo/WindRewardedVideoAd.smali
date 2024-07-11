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
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
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

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2b

    goto :goto_31

    :catchall_2b
    move-exception v0

    const-string v1, "WindRewardedVideoAd error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    return-object p0
.end method

.method private a(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 10

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/base/WindAdRequestController;

    if-nez v1, :cond_23

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/windad/base/WindAdRequestController;-><init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-virtual {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    return v0

    :catchall_27
    move-exception v1

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "load"

    invoke-static {v4, v2, v3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    const-string v0, "load Ad error"

    invoke-static {v0, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;
    .registers 2

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-direct {v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;-><init>()V

    sput-object v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    return-object v0
.end method


# virtual methods
.method public adapterDidInitFailVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidInitFailVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], error = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidInitSuccessVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_f

    return-void

    :cond_f
    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->getStrategies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2c

    invoke-virtual {v1, v3}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    goto :goto_18

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidInitSuccessVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

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

.method public addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->d:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public autoLoadAd()V
    .registers 5

    const-string v0, "autoLoadAd "

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v1, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v2, v3, :cond_f

    invoke-virtual {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->autoload()V

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " adapter class name "

    const-string v4, "find "

    if-nez v2, :cond_51

    :try_start_12
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_36

    return-object v1

    :catchall_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterClsName error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x2

    if-gt v2, v5, :cond_64

    return-object v0

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v7, v1, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1ec

    goto/16 :goto_125

    :sswitch_8f
    const-string v5, "applovin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v5, 0x5

    goto/16 :goto_126

    :sswitch_9a
    const-string v5, "kuaishou"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0xd

    goto/16 :goto_126

    :sswitch_a6
    const-string v5, "mintegral"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v5, 0x7

    goto/16 :goto_126

    :sswitch_b1
    const-string v6, "facebookaudiencenetwork"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    goto/16 :goto_126

    :sswitch_bb
    const-string v5, "admob"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    move v5, v7

    goto/16 :goto_126

    :sswitch_c6
    const-string v5, "gdt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0xa

    goto :goto_126

    :sswitch_d1
    const-string v5, "unityads"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v5, 0x6

    goto :goto_126

    :sswitch_db
    const-string v5, "mobvista"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0x8

    goto :goto_126

    :sswitch_e6
    const-string v5, "vungle"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v5, 0x3

    goto :goto_126

    :sswitch_f0
    const-string v5, "tapjoy"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0xc

    goto :goto_126

    :sswitch_fb
    const-string v5, "sigmob"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    move v5, v6

    goto :goto_126

    :sswitch_105
    const-string v5, "ironsource"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/4 v5, 0x4

    goto :goto_126

    :sswitch_10f
    const-string v5, "oneway"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0xb

    goto :goto_126

    :sswitch_11a
    const-string v5, "toutiao"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    const/16 v5, 0x9

    goto :goto_126

    :cond_125
    :goto_125
    move v5, v8

    :goto_126
    packed-switch v5, :pswitch_data_226

    goto/16 :goto_1cb

    :pswitch_12b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".kuaishou.KuaiShouRewardVideoAdapter"

    goto/16 :goto_1bc

    :pswitch_138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tapjoy.TapJoyRewardVideoAdapter"

    goto/16 :goto_1bc

    :pswitch_145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".oneway.OneWayRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gdt.GDTRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".toutiao.TouTiaoRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Mintegral.MintegralRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".UnityAds.UnityAdsRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".AppLovin.AppLovinRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_18d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Ironsource.IronsourceRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Vungle.VungleRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_1a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".FacebookRewardVideoAdapter"

    goto :goto_1bc

    :pswitch_1b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Admob.GoogleAdmobRewardVideoAdapter"

    :goto_1bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1cb

    :pswitch_1c5
    const-class v0, Lcom/sigmob/windad/Adapter/SigmobRewardVideoAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_1ec
    .sparse-switch
        -0x439c2a43 -> :sswitch_11a
        -0x3c584537 -> :sswitch_10f
        -0x3746d91d -> :sswitch_105
        -0x35ca9371 -> :sswitch_fb
        -0x34826aaf -> :sswitch_f0
        -0x2fffd7cf -> :sswitch_e6
        -0x2760f873 -> :sswitch_db
        -0x11610ee5 -> :sswitch_d1
        0x18f37 -> :sswitch_c6
        0x58603fd -> :sswitch_bb
        0x120ca424 -> :sswitch_b1
        0x431e1919 -> :sswitch_a6
        0x43da690d -> :sswitch_9a
        0x4650da37 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1c5
        :pswitch_1b1
        :pswitch_1a5
        :pswitch_199
        :pswitch_18d
        :pswitch_181
        :pswitch_175
        :pswitch_169
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_145
        :pswitch_138
        :pswitch_12b
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

    move-result-object p1

    check-cast p1, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/sigmob/windad/base/WindAdRequestController;->isReady()Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public loadAd(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 4

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/WindAds;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/sigmob/windad/WindAdRequest;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/sigmob/windad/base/WindVideoAdRequest;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "load"

    const/4 v3, 0x0

    if-eqz p1, :cond_1d

    :try_start_7
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_1d

    :cond_12
    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1

    :catchall_1b
    move-exception v4

    goto :goto_3e

    :cond_1d
    :goto_1d
    sget-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    const-string v5, "WindVideoAdRequest can\'t is null"

    invoke-static {v2, v4, v5}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    const-string v4, "PlacementId with WindAdRequest can\'t is null"

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, v4, v3}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_1b

    return v0

    :goto_3e
    const-string v5, "load Ad error"

    invoke-static {v5, v4}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v5}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    if-eqz p1, :cond_61

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    :cond_61
    invoke-virtual {v2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1, v3}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return v0
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
    .registers 2

    iget p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->e:I

    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$1;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "notify VideoAd Load Success"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

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

    const-string p1, "notify VideoAd play start"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoAdPreLoadFail(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->f:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$3;-><init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "notify VideoAd Pre Load fail"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

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
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/base/WindVideoAdRequest;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getWindVideoAdRequest(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    move-result p1

    return p1
.end method

.method public show(Landroid/app/Activity;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2c

    check-cast v3, Ljava/lang/String;

    goto :goto_30

    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_30
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_34
    invoke-virtual {p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p1

    return p1
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "can\'t find  controller object"

    const-string v1, "activity can\'t is null"

    const-string v2, "WindAds not initialize"

    const-string v3, "PlacementId with WindAdRequest can\'t is null"

    const-string v4, "askad"

    const/4 v5, 0x1

    :try_start_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2f

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p1

    invoke-static {v4, p1, v3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return v7

    :cond_2f
    sget-boolean v3, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v3, :cond_53

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p1

    invoke-static {v4, p1, v2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return v7

    :cond_53
    if-nez p1, :cond_75

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p1

    invoke-static {v4, p1, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return v7

    :cond_75
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sigmob/windad/WindAds;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    if-nez v1, :cond_90

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    :cond_90
    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/base/WindAdRequestController;

    if-eqz v1, :cond_9e

    invoke-virtual {v1, p1, p3}, Lcom/sigmob/windad/base/WindAdRequestController;->showAd(Landroid/app/Activity;Ljava/util/HashMap;)V

    goto :goto_df

    :cond_9e
    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p1

    invoke-static {v4, p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_READY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_b .. :try_end_bd} :catchall_be

    return v7

    :catchall_be
    move-exception p1

    sget-object p3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p3, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object p3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    const-string p2, "show Ad "

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_df
    return v5
.end method
