.class public Lcom/anythink/network/sigmob/SigmobATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/sigmob/SigmobATInitManager$a;,
        Lcom/anythink/network/sigmob/SigmobATInitManager$Holder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

.field private g:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$1;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->f:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    .line 160
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$2;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->g:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    .line 275
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 277
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 359
    monitor-exit p0

    return-void

    .line 358
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V
    .registers 4

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 363
    monitor-exit p0

    return-void

    .line 362
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;
    .registers 1

    .prologue
    .line 280
    sget-object v0, Lcom/anythink/network/sigmob/SigmobATInitManager$Holder;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V
    .registers 4

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    const-string v1, "com.sigmob.sdk.base.common.AdActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    const-string v0, "Sigmob"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    const-string v0, "com.sigmob.windad.WindAds"

    return-object v0
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .prologue
    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    const-string v1, "com.sigmob.sdk.SigmobFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V

    .line 286
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/sigmob/SigmobATInitManager$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 298
    :cond_1c
    if-eqz p3, :cond_21

    .line 299
    invoke-interface {p3}, Lcom/anythink/network/sigmob/SigmobATInitManager$a;->onFinish()V

    .line 340
    :cond_21
    :goto_21
    return-void

    .line 303
    :cond_22
    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 305
    :cond_42
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v3

    .line 307
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    .line 315
    const-string v2, "gdpr_consent"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const-string v2, "need_set_gdpr"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 317
    const-string v2, "gdpr_consent"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 319
    const-string v2, "need_set_gdpr"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 320
    if-eqz v2, :cond_7e

    .line 321
    if-eqz v4, :cond_ab

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    :goto_7b
    invoke-virtual {v3, v2}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V

    .line 325
    :cond_7e
    const/16 v2, 0x1d

    invoke-virtual {p0, v2}, Lcom/anythink/network/sigmob/SigmobATInitManager;->logGDPRSetting(I)V

    .line 328
    new-instance v2, Lcom/sigmob/windad/WindAdOptions;

    invoke-direct {v2, v0, v1}, Lcom/sigmob/windad/WindAdOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 329
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    .line 330
    iput-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    .line 334
    :cond_92
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->f:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->setWindRewardedVideoAdListener(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;)V

    .line 335
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->g:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->setWindFullScreenVideoAdListener(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;)V

    .line 337
    if-eqz p3, :cond_21

    .line 338
    invoke-interface {p3}, Lcom/anythink/network/sigmob/SigmobATInitManager$a;->onFinish()V

    goto/16 :goto_21

    .line 321
    :cond_ab
    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    goto :goto_7b
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V
    .registers 5

    .prologue
    .line 343
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V

    .line 344
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->loadAd(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z

    .line 345
    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)V
    .registers 5

    .prologue
    .line 348
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;Lcom/anythink/core/b/a/b;)V

    .line 349
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    .line 350
    return-void
.end method
