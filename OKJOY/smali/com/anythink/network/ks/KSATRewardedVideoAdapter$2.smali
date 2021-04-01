.class final Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/KsRewardVideoAd$RewardAdInteractionListener;


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

    .prologue
    .line 91
    iput-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->c(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->d(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 97
    :cond_13
    return-void
.end method

.method public final onPageDismiss()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->e(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->f(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 106
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    .line 111
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public final onRewardVerify()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->m(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->n(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 140
    :cond_13
    return-void
.end method

.method public final onVideoPlayEnd()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->i(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->j(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 126
    :cond_13
    return-void
.end method

.method public final onVideoPlayError(II)V
    .registers 8

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->g(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 116
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->h(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 117
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 119
    :cond_1f
    return-void
.end method

.method public final onVideoPlayStart()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->k(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->l(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$2;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 133
    :cond_13
    return-void
.end method
