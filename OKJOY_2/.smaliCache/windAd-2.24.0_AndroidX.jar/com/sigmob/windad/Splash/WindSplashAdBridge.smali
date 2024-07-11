.class public Lcom/sigmob/windad/Splash/WindSplashAdBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashAdConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field private b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/sigmob/sdk/common/models/ADStrategy;


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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->c:Ljava/util/Map;

    return-void
.end method

.method public adapterDidAdClickSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public adapterDidCloseSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidCloseSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public adapterDidFailLoadScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 5

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1, p2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p2

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p2
.end method

.method public adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 5

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1, p2}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidFailToShowSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p2

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p2
.end method

.method public adapterDidReceiveSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidReceiveSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public adapterDidSkipSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidSkipSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public adapterDidSuccessPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .registers 4

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->b:Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;->adapterDidStartPlayingSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V

    :cond_c
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getStrategy()Lcom/sigmob/sdk/common/models/ADStrategy;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

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

.method public setStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdBridge;->d:Lcom/sigmob/sdk/common/models/ADStrategy;

    return-void
.end method
