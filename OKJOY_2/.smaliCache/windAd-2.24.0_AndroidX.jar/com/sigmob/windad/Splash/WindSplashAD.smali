.class public final Lcom/sigmob/windad/Splash/WindSplashAD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field public adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

.field private b:Lcom/sigmob/windad/Splash/WindSplashADListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/Splash/WindSplashAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:I

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sigmob/windad/Splash/WindSplashAD$1;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Landroid/os/Handler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->h:Ljava/util/Map;

    const/4 v1, 0x5

    iput v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->l:I

    const-string v1, ""

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->s:Z

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->t:Z

    if-nez p3, :cond_3b

    const-string p1, "WindAdRequest is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_ec

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    const/4 p2, 0x0

    :goto_36
    invoke-interface {p4, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_3b
    if-nez p1, :cond_4b

    const-string p1, "activity is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_ec

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    :goto_46
    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_4b
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_59

    const-string p1, "WindAds not initialize"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_ec

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    goto :goto_46

    :cond_59
    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_6d

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_ec

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    goto :goto_46

    :cond_6d
    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_7a

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    :cond_7a
    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string p1, "placementId with WindAdRequest is empty"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_ec

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMNT_ID_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    goto :goto_46

    :cond_8e
    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->i:Ljava/util/Map;

    iput-object p3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getFetchDelay()I

    move-result p1

    iput p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->l:I

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->isDisableAutoHideAd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->s:Z

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->h:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_da

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    if-nez p1, :cond_dd

    :cond_da
    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->d()V

    :cond_dd
    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Landroid/os/Handler;

    const/4 p2, 0x1

    iget p4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->l:I

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long v0, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x2

    invoke-direct {p0, p3, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V

    :cond_ec
    :goto_ec
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    return p1
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private a(Lcom/sigmob/sdk/common/models/ADStrategy;Ljava/lang/String;)Lcom/sigmob/windad/Splash/WindSplashAdAdapter;
    .registers 8

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init"

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWind;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlatform(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setVlist(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->commit()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->i:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    if-eqz v0, :cond_3e

    return-object v0

    :cond_3e
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    const-string v3, " cls: "

    const-string v4, "initializeChannelAdapter: "

    if-ne v1, v2, :cond_aa

    invoke-static {}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->Bridge()Lcom/sigmob/windad/Splash/WindSplashAdBridge;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setRequest(Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    invoke-virtual {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->setAdBridgeListener(Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->a(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->initWithWAdConnector(Lcom/sigmob/windad/Splash/WindSplashAdBridge;)V

    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->isInit()Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_7e
    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->i:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-object v0

    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    return-object p0
.end method

.method private a(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;
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

    sparse-switch v9, :sswitch_data_10e

    goto :goto_b5

    :sswitch_8e
    const-string v5, "kuaishou"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    const/4 v5, 0x3

    goto :goto_b6

    :sswitch_98
    const-string v5, "gdt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    move v5, v7

    goto :goto_b6

    :sswitch_a2
    const-string v5, "sigmob"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    move v5, v6

    goto :goto_b6

    :sswitch_ac
    const-string v6, "toutiao"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v5, v8

    :goto_b6
    packed-switch v5, :pswitch_data_120

    goto :goto_ec

    :pswitch_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".kuaishou.KuaiShouSplashAdAdapter"

    goto :goto_dd

    :pswitch_c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".toutiao.TouTiaoSplashAdAdapter"

    goto :goto_dd

    :pswitch_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".gdt.GDTSplashAdAdapter"

    :goto_dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ec

    :pswitch_e6
    const-class v0, Lcom/sigmob/windad/Adapter/SigmobSplashAdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_ec
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

    nop

    :sswitch_data_10e
    .sparse-switch
        -0x439c2a43 -> :sswitch_ac
        -0x35ca9371 -> :sswitch_a2
        0x18f37 -> :sswitch_98
        0x43da690d -> :sswitch_8e
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
    .end packed-switch
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .registers 6

    const-string v0, "]"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    if-eqz v2, :cond_1d

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1f

    :cond_1d
    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    :goto_1f
    const-string v3, "[["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ADStrategy;

    const-string v4, ",["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8f} :catch_90

    goto :goto_95

    :catch_90
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Ljava/lang/String;

    :goto_95
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initViewGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iput v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->r:I

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x0

    iput v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->r:I

    goto :goto_a6

    :cond_8c
    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a6

    :cond_a4
    iput v5, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->r:I

    :cond_a6
    :goto_a6
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->r:I

    invoke-direct {p0, v3, v6}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/widget/RelativeLayout;I)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v7}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v7}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Landroid/widget/RelativeLayout;Ljava/lang/String;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v9, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->r:I

    const/high16 v10, 0x41200000    # 10.0f

    if-eq v9, v4, :cond_e9

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v10, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p1

    iput p1, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 p1, 0x3

    iget-object v5, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v7, p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_103

    :cond_e9
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x425c0000    # 55.0f

    invoke-static {v9, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v10, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p1

    iput p1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v7, v5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_103
    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42c80000    # 100.0f

    iget-object v6, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-static {v5, v6}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {p1, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;I)V
    .registers 7

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    const/high16 v0, 0x42700000    # 60.0f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2b

    const/high16 v0, 0x42a00000    # 80.0f

    :cond_2b
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    packed-switch p2, :pswitch_data_5a

    const/16 p2, 0xf

    goto :goto_51

    :pswitch_42
    const/high16 p2, 0x41200000    # 10.0f

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

    move-result p2

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 p2, 0xe

    goto :goto_51

    :pswitch_4f
    const/16 p2, 0xd

    :goto_51
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_42
    .end packed-switch
.end method

.method private a(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    const-string v0, "#535353"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V
    .registers 7

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_17
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, " initializeADStrategyList  length %d, size %d, mMaxConcurrent %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    :goto_46
    if-ge v3, v0, :cond_56

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-direct {p0, p1, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_56
    return-void
.end method

.method private a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$3;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$3;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "request"

    invoke-static {v2, v0, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sigmob/windad/Splash/WindSplashAD$4;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD$4;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V

    invoke-static {v0, p2, v1, v2, v3}, Lcom/sigmob/sdk/common/e/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/o$a;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 13

    const-string v0, " can\'t get class String"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapterInitAndLoad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v4, "load"

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    new-instance p1, Lcom/sigmob/windad/WindAdAdapterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    return-void

    :cond_68
    invoke-direct {p0, p2, v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/sdk/common/models/ADStrategy;Ljava/lang/String;)Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_13d

    invoke-virtual {v0}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->getAdapterVersion()I

    move-result v2

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/common/SDKConfig;->getRequireAdapterVersion(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_d4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cls: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "adapter version is error!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    return-void

    :cond_d4
    const-string v2, "load"

    new-instance v3, Lcom/sigmob/windad/Splash/WindSplashAD$2;

    invoke-direct {v3, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$2;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    invoke-static {v2, p1, p2, v3}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_ec

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setOptions(Ljava/util/Map;)V

    :cond_ec
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "APP_TITLE"

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_108
    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11b

    const-string v3, "APP_DESC"

    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getAppDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11b
    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->isDisableAutoHideAd()Z

    move-result v3

    if-eqz v3, :cond_12b

    const-string v3, "SPLASH_DISABLE_AD_HIDE"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12b
    invoke-virtual {p1, v2}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->setOptions(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->load(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    goto :goto_18c

    :cond_13d
    new-instance p1, Lcom/sigmob/windad/WindAdAdapterError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " adAdapter is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_15c
    .catchall {:try_start_3 .. :try_end_15c} :catchall_15d

    goto :goto_18c

    :catchall_15d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " catch throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :goto_18c
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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->t:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/windad/Splash/WindSplashAD$12;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->e()V

    :cond_37
    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Splash/WindSplashAD;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->t:Z

    return p1
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a()V

    :cond_15
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->h:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    const-string v0, "#aaaaaa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->o:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    invoke-static {v0}, Lcom/sigmob/sdk/common/d/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x802

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1c
    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/Splash/WindSplashAD;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->a()V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->k:Landroid/app/Activity;

    return-object p0
.end method

.method private e()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->s:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic f(Lcom/sigmob/windad/Splash/WindSplashAD;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic g(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashADListener;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    return-object p0
.end method


# virtual methods
.method public adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClicked()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$5;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$5;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "click"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    return-void
.end method

.method public adapterDidCloseSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashClosed()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$10;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$10;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "close"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->e()V

    return-void
.end method

.method public adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidFailToLoadSplashAdWithStrategy: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

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

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result v4

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sigmob/windad/Splash/WindSplashAD$8;

    invoke-direct {v6, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$8;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v1, "load"

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_ee

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_4d

    goto/16 :goto_ee

    :cond_4d
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadErrorADStrategy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " backupIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_c7

    iget p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_ed

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    iget p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    iget-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-direct {p0, p2, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    goto :goto_ed

    :cond_c7
    sget-object p2, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-direct {p0}, Lcom/sigmob/windad/Splash/WindSplashAD;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterDidFailToLoadSplashAdWithStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_ed
    :goto_ed
    return-void

    :cond_ee
    :goto_ee
    const-string p1, "splash ad has ready or closed"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidFailToShowSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 7

    sget-object v0, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "{error_code: %s, message: %s}"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterDidFailToShowSplashAdWithStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidReceiveSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidReceiveSplashAdWithStrategy: adAdapter is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$6;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$6;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "ready"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_33

    goto :goto_99

    :cond_33
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_3f

    const-string p1, "not do videoAd load ad"

    :goto_3b
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void

    :cond_3f
    invoke-direct {p0, p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->n:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_55

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_55
    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdAdapter;->show(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->f:I

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$7;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$7;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "sdkopen"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    goto :goto_98

    :cond_79
    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loaded adAdapter is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/windad/Splash/WindSplashAD;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :goto_98
    return-void

    :cond_99
    :goto_99
    const-string p1, "has send notify videoAd load success, don\'t do again"

    goto :goto_3b
.end method

.method public adapterDidSkipSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$11;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$11;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "skip"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    return-void
.end method

.method public adapterDidStartPlayingSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->b:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdSuccessPresentScreen()V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    new-instance v1, Lcom/sigmob/windad/Splash/WindSplashAD$9;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/Splash/WindSplashAD$9;-><init>(Lcom/sigmob/windad/Splash/WindSplashAD;)V

    const-string v2, "start"

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    return-void
.end method
