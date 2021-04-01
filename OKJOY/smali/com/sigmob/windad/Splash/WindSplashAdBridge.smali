.class public Lcom/sigmob/windad/Splash/WindSplashAdBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashAdConnector;


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field private b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sigmob/sdk/base/models/ADStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bridge()Lcom/sigmob/windad/Splash/WindSplashAdBridge;
    .registers 1

    new-instance v0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;

    invoke-direct {v0}, Lcom/sigmob/windad/Splash/WindSplashAdBridge;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->c:Ljava/util/Map;

    return-void
.end method

.method public adapterDidAdClickSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public adapterDidCloseSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidCloseSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdError;)V
    .registers 6

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2, p2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdError;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public adapterDidFailToSetupSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdError;)V
    .registers 6

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2, p2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidFailToSetupSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdError;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public adapterDidReceiveSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 2

    return-void
.end method

.method public adapterDidSetupSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidSetupSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public adapterDidSuccessPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 5

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-interface {v0, v2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidStartPlayingSplashAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getStrategy()Lcom/sigmob/sdk/base/models/ADStrategy;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    return-object v0
.end method

.method public setAdBridgeListener(Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    return-void
.end method

.method public setRequest(Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    return-void
.end method

.method public setStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/base/models/ADStrategy;

    return-void
.end method
