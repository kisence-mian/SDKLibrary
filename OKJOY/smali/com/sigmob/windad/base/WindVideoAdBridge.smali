.class public Lcom/sigmob/windad/base/WindVideoAdBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindVideoAdConnector;


# instance fields
.field private a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

.field private b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

.field private c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

.field private d:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bridge()Lcom/sigmob/windad/base/WindVideoAdBridge;
    .registers 1

    new-instance v0, Lcom/sigmob/windad/base/WindVideoAdBridge;

    invoke-direct {v0}, Lcom/sigmob/windad/base/WindVideoAdBridge;-><init>()V

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

    iput-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->d:Ljava/util/Map;

    return-void
.end method

.method public adapterDidAdClick(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidCloseRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;ZLcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidCloseRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Z)V

    :cond_9
    return-void
.end method

.method public adapterDidFailToLoadRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    invoke-interface {v0, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_9
    return-void
.end method

.method public adapterDidFailToPlayingRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidFailToPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_9
    return-void
.end method

.method public adapterDidInitFail(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    invoke-interface {v0, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;->adapterDidInitFailVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    :cond_9
    return-void
.end method

.method public adapterDidInitSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;->adapterDidInitSuccessVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidPlayCompleteRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidPlayCompleteRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidPlayEndRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidPlayEndRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidPreLoadFailRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidRreLoadFailRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidPreLoadSuccessRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public adapterDidStartPlayingRewardVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    invoke-interface {v0, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidStartPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_9
    return-void
.end method

.method public setAdBridgeInitListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    return-void
.end method

.method public setAdBridgeLoadListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    return-void
.end method

.method public setAdBridgeShowListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    return-void
.end method
