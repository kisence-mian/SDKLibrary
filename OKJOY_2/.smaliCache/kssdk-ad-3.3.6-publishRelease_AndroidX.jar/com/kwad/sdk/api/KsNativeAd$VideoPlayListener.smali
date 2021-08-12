.class public interface abstract Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/KsNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoPlayListener"
.end annotation


# virtual methods
.method public abstract onVideoPlayComplete()V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract onVideoPlayError(II)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract onVideoPlayStart()V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method
