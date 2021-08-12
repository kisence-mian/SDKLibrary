.class public interface abstract Lcom/kwad/sdk/api/KsLoadManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;,
        Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;,
        Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;,
        Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;,
        Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;,
        Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;
    }
.end annotation


# virtual methods
.method public abstract loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadFullScreenVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method

.method public abstract loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation
.end method
