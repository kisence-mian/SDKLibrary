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
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
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

    .line 35
    const-class v0, Lcom/anythink/network/sigmob/SigmobATInitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/sigmob/SigmobATInitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 355
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATInitManager$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$1;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->f:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    .line 241
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATInitManager$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATInitManager$2;-><init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->g:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    .line 356
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 357
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 358
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/anythink/network/sigmob/SigmobATInitManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInitManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/network/sigmob/SigmobATInitManager;Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 422
    monitor-exit p0

    return-void

    .line 420
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V
    .registers 4

    monitor-enter p0

    .line 425
    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 426
    monitor-exit p0

    return-void

    .line 424
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 430
    monitor-exit p0

    return-void

    .line 428
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;
    .registers 2

    const-class v0, Lcom/anythink/network/sigmob/SigmobATInitManager;

    monitor-enter v0

    .line 361
    :try_start_3
    sget-object v1, Lcom/anythink/network/sigmob/SigmobATInitManager$Holder;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 361
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V
    .registers 4

    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 418
    monitor-exit p0

    return-void

    .line 416
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public getActivityStatus()Ljava/util/List;
    .registers 3

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    const-string v1, "com.sigmob.sdk.base.common.AdActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 447
    const-string v0, "Sigmob"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .registers 2

    .line 473
    const-string v0, "com.sigmob.windad.WindAds"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .registers 2

    .line 452
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginClassStatus()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "implementation \'com.android.support:localbroadcastmanager:+\'"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :try_start_c
    const-class v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 464
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    .line 467
    goto :goto_18

    .line 466
    :catchall_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 469
    :goto_18
    return-object v0
.end method

.method public getProviderStatus()Ljava/util/List;
    .registers 3

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    const-string v1, "com.sigmob.sdk.SigmobFileProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-object v0
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 366
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 367
    monitor-exit p0

    return-void

    .line 365
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/network/sigmob/SigmobATInitManager$a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    const-string v1, "app_key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_6e

    .line 384
    :cond_1e
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 386
    :cond_3e
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/sigmob/windad/WindAdOptions;

    invoke-direct {v2, v0, p2}, Lcom/sigmob/windad/WindAdOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 392
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->a:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->b:Ljava/lang/String;

    .line 397
    :cond_55
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->f:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->setWindRewardedVideoAdListener(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;)V

    .line 398
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInitManager;->g:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->setWindFullScreenVideoAdListener(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;)V

    .line 400
    if-eqz p3, :cond_6c

    .line 401
    invoke-interface {p3}, Lcom/anythink/network/sigmob/SigmobATInitManager$a;->onFinish()V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_75

    .line 403
    :cond_6c
    monitor-exit p0

    return-void

    .line 379
    :cond_6e
    :goto_6e
    if-eqz p3, :cond_73

    .line 380
    :try_start_70
    invoke-interface {p3}, Lcom/anythink/network/sigmob/SigmobATInitManager$a;->onFinish()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_75

    .line 382
    :cond_73
    monitor-exit p0

    return-void

    .line 374
    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadInterstitial(Ljava/lang/String;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V
    .registers 4

    .line 406
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V

    .line 407
    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->loadAd(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Z

    .line 408
    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;Lcom/anythink/core/common/b/b;)V
    .registers 4

    .line 411
    invoke-direct {p0, p1, p3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->b(Ljava/lang/String;Lcom/anythink/core/common/b/b;)V

    .line 412
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->loadAd(Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Z

    .line 413
    return-void
.end method
