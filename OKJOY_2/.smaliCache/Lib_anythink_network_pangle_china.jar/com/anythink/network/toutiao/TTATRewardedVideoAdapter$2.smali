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

    .line 67
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->l(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 86
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->m(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 90
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 93
    return-void

    .line 91
    :catch_23
    move-exception v0

    .line 94
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->h(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->i(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 74
    :cond_11
    return-void
.end method

.method public final onAdVideoBarClick()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->j(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->k(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 81
    :cond_11
    return-void
.end method

.method public final onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 116
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->r(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string p4, "onRewardVerify(), rewardVerify: "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iget-boolean p1, p1, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Z

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->s(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 118
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b:Z

    .line 119
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->t(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 121
    :cond_31
    return-void
.end method

.method public final onSkippedVideo()V
    .registers 1

    .line 106
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->n(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->o(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 101
    :cond_11
    return-void
.end method

.method public final onVideoError()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->p(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 110
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->q(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Callback VideoError"

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_15
    return-void
.end method
