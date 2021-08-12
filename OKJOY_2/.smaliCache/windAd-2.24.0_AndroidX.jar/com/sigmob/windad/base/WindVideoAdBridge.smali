.class public Lcom/sigmob/windad/base/WindVideoAdBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindVideoAdConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;,
        Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;,
        Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

.field private b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

.field private c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->d:Ljava/util/Map;

    return-void
.end method

.method public adapterDidAdClick(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidAdClick"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidCloseVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;ZLcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidCloseRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "adapterDidCloseVideoAd"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidFailToLoadVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "adapterDidFailToLoadVideoAd"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidFailToPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidFailToPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "adapterDidFailToPlayingVideoAd"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidInitFail(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p3, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;->adapterDidInitFailVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "adapterDidInitFail"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidInitSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->a:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;->adapterDidInitSuccessVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidInitSuccess"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidLoadAdSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidLoadAdSuccessVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidPlayCompleteVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidPlayCompleteRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidPlayCompleteVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidPlayEndVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidPlayEndRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidPlayEndVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidPreLoadFailVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidRreLoadFailRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidPreLoadFailVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidPreLoadSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->b:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;->adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidPreLoadSuccessVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public adapterDidStartPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/windad/base/WindVideoAdBridge;->c:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;

    if-eqz p1, :cond_23

    invoke-interface {p1, p2}, Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;->adapterDidStartPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_23

    :catchall_8
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adapterDidStartPlayingVideoAd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
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
