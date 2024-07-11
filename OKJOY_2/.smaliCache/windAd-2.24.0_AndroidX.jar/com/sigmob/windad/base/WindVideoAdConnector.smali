.class public interface abstract Lcom/sigmob/windad/base/WindVideoAdConnector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sigmob/windad/base/WindVideoAdAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adapterDidAdClick(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidCloseVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;ZLcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailToLoadVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailToPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidInitFail(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidInitSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidLoadAdSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidPlayCompleteVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidPlayEndVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidPreLoadFailVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidPreLoadSuccessVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidStartPlayingVideoAd(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ")V"
        }
    .end annotation
.end method
