.class public interface abstract Lcom/sigmob/windad/Splash/WindSplashAdConnector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sigmob/windad/Splash/WindSplashAdAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adapterDidAdClickSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidCloseSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailLoadScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidReceiveSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidSkipSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidSuccessPresentScreenSplashAd(Lcom/sigmob/windad/Splash/WindSplashAdAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
