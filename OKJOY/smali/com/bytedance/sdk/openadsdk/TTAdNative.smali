.class public interface abstract Lcom/bytedance/sdk/openadsdk/TTAdNative;
.super Ljava/lang/Object;
.source "TTAdNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;,
        Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;
    }
.end annotation


# virtual methods
.method public abstract loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
