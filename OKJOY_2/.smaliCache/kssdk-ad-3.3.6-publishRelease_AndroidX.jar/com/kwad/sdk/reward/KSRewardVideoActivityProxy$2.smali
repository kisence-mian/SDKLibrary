.class Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;
.super Lcom/kwad/sdk/reward/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onAdClicked()V

    :cond_9
    return-void
.end method

.method public a(II)V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onVideoPlayError(II)V

    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;

    # invokes: Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyPageDismiss(Z)V
    invoke-static {v0, p1}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->access$200(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;Z)V

    return-void
.end method

.method public c()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onVideoPlayStart()V

    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->mInteractionListener:Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;->onVideoPlayEnd()V

    :cond_9
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy$2;->a:Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;

    # invokes: Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->notifyRewardVerify()V
    invoke-static {v0}, Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;->access$100(Lcom/kwad/sdk/reward/KSRewardVideoActivityProxy;)V

    return-void
.end method
