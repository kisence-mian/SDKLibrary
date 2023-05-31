.class public final Lcom/sigmob/windad/Splash/WindSplashAD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field private b:Lcom/sigmob/windad/Splash/WindSplashADListener;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/Splash/WindSplashAdAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_13

    const-string v0, "WindAdRequest is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    if-nez p1, :cond_26

    const-string v0, "activity is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_12

    :cond_26
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_3b

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_12

    :cond_3b
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    if-eq v0, v1, :cond_5d

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v1, :cond_72

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_5d
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_12

    :cond_72
    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_7f

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    :cond_7f
    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "placementId with WindAdRequest is empty"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_12

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_9b
    iput-object p4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Ljava/util/Map;

    iput-object p3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V

    goto/16 :goto_12
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    return-object v0
.end method

.method private a(Lcom/sigmob/sdk/base/models/ADStrategy;Ljava/lang/String;)Lcom/sigmob/windad/Splash/WindSplashAdAdapter;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    if-eqz v0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find already initialize Adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :goto_25
    return-object v0

    :cond_26
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    if-ne v1, v2, :cond_c5

    invoke-static {}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->Bridge()Lcom/sigmob/windad/Splash/WindSplashAdBridge;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setRequest(Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    invoke-virtual {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setAdBridgeListener(Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->a(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->initWithWAdConnector(Lcom/sigmob/windad/Splash/WindSplashAdBridge;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_f5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_70
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v4, "appkey"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v3, "appkey"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    :cond_89
    :goto_89
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeChannelAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeChannelAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_25

    :cond_f2
    move-object v2, v3

    goto/16 :goto_70

    :cond_f5
    move-object v2, v3

    goto :goto_89
.end method

.method private a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_22

    :cond_c
    :goto_c
    packed-switch v0, :pswitch_data_28

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :pswitch_11
    const-string v2, "sigmob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    :pswitch_1b
    const-class v0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :pswitch_data_22
    .packed-switch -0x35ca9371
        :pswitch_11
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/Splash/WindSplashAdRequest;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/sigmob/windad/Splash/WindSplashAdRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-direct {p0, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    :try_start_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t get class String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_6a} :catch_d7

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$1;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$1;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7c
    return-void

    :cond_7d
    :try_start_7d
    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/sdk/base/models/ADStrategy;Ljava/lang/String;)Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_91

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4, v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setOptions(Ljava/util/Map;)V

    :cond_91
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, "APP_TITLE"

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c0

    const-string v2, "APP_DESC"

    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c0
    invoke-virtual {p4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->isDisableAutoHideAd()Z

    move-result v2

    if-eqz v2, :cond_d0

    const-string v2, "SPLASH_DISABLE_AD_HIDE"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d0
    invoke-virtual {p4, v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setOptions(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/WindAdRequest;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_d6} :catch_d7

    goto :goto_6a

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V
    .registers 12

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "2"

    const/4 v3, 0x2

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/windad/Splash/WindSplashAD$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/sigmob/windad/Splash/WindSplashAD$2;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    invoke-static {v0, p4, v1, v2, v3}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/n;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/Splash/WindSplashAdRequest;Ljava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/Splash/WindSplashAdRequest;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplashError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :placementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD$3;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "platform"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "load_id"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string v1, "sub_category"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "7"

    const/4 v3, 0x2

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "6"

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClicked()V

    return-void
.end method

.method public adapterDidCloseSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "6"

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->z:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashClosed()V

    return-void
.end method

.method public adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdError;)V
    .registers 9

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    const-string v1, "{error_code: %s, message: %s}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidFailToLoadSplashAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidFailToSetupSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdError;)V
    .registers 3

    return-void
.end method

.method public adapterDidReceiveSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 2

    return-void
.end method

.method public adapterDidSetupSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 2

    return-void
.end method

.method public adapterDidStartPlayingSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "6"

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdSuccessPresentScreen()V

    return-void
.end method
