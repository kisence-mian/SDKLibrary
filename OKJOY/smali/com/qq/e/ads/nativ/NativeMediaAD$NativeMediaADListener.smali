.class public interface abstract Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/AbstractAD$BasicADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/nativ/NativeMediaAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeMediaADListener"
.end annotation


# virtual methods
.method public abstract onADClicked(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
.end method

.method public abstract onADError(Lcom/qq/e/ads/nativ/NativeMediaADData;Lcom/qq/e/comm/util/AdError;)V
.end method

.method public abstract onADExposure(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
.end method

.method public abstract onADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/nativ/NativeMediaADData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onADStatusChanged(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
.end method

.method public abstract onADVideoLoaded(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
.end method
