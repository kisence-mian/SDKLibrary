.class final Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->m(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 80
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->n(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 84
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    .line 88
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public final onAdShow()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->i(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->j(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 68
    :cond_13
    return-void
.end method

.method public final onAdVideoBarClick()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->k(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 73
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->l(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 75
    :cond_13
    return-void
.end method

.method public final onRewardVerify(ZILjava/lang/String;)V
    .registers 4

    .prologue
    .line 104
    return-void
.end method

.method public final onSkippedVideo()V
    .registers 1

    .prologue
    .line 109
    return-void
.end method

.method public final onVideoComplete()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->o(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->p(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 96
    :cond_13
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->q(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 97
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->r(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 99
    :cond_26
    return-void
.end method

.method public final onVideoError()V
    .registers 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->s(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 113
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->t(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    sget-object v2, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "Callback VideoError"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 115
    :cond_1d
    return-void
.end method
