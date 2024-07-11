.class final Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 46
    :cond_11
    return-void
.end method

.method public final onPageDismiss()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->c(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->d(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 55
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 58
    return-void

    .line 56
    :catch_23
    move-exception v0

    .line 60
    return-void
.end method

.method public final onRewardVerify()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->k(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 86
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->l(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 88
    :cond_11
    return-void
.end method

.method public final onVideoPlayEnd()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->g(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->h(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 74
    :cond_11
    return-void
.end method

.method public final onVideoPlayError(II)V
    .registers 4

    .line 64
    iget-object p2, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {p2}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->e(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 65
    iget-object p2, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {p2}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->f(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_17
    return-void
.end method

.method public final onVideoPlayStart()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->i(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->j(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 81
    :cond_11
    return-void
.end method
