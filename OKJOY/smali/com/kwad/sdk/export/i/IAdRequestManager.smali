.class public interface abstract Lcom/kwad/sdk/export/i/IAdRequestManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;,
        Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;,
        Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;,
        Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;,
        Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;
    }
.end annotation


# virtual methods
.method public abstract loadContentAllianceAd(Lcom/kwad/sdk/protocol/model/AdScene;)Lcom/kwad/sdk/export/i/KsContentAllianceAd;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract loadDrawAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;)V
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract loadFeedAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;)V
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$FeedAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract loadFullScreenVideoAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;)V
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract loadNativeAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;)V
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract loadRewardVideoAd(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;)V
    .param p2    # Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
