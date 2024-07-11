.class public interface abstract Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/AbstractAD$BasicADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeExpressAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeExpressADListener"
.end annotation


# virtual methods
.method public abstract onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onADCloseOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onADOpenOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method

.method public abstract onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end method
