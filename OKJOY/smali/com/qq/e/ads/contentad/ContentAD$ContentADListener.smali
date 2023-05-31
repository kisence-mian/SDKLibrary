.class public interface abstract Lcom/qq/e/ads/contentad/ContentAD$ContentADListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/contentad/ContentAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentADListener"
.end annotation


# virtual methods
.method public abstract onADVideoLoaded(Lcom/qq/e/ads/contentad/ContentAdData;)V
.end method

.method public abstract onContentADError(Lcom/qq/e/ads/contentad/ContentAdData;I)V
.end method

.method public abstract onContentADLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/contentad/ContentAdData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContentADStatusChanged(Lcom/qq/e/ads/contentad/ContentAdData;)V
.end method

.method public abstract onNoContentAD(I)V
.end method
