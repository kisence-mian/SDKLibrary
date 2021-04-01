.class final Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/RewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose(ZLjava/lang/String;F)V
    .registers 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->i(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 82
    if-eqz p1, :cond_15

    .line 83
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->j(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 85
    :cond_15
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->k(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 89
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_32

    .line 93
    :goto_31
    return-void

    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method public final onAdShow()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->g(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->h(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 76
    :cond_13
    return-void
.end method

.method public final onEndcardShow(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 120
    return-void
.end method

.method public final onLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->c(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->d(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdDataLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 62
    :cond_13
    return-void
.end method

.method public final onShowFail(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->l(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->m(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    const-string v2, "4001"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 101
    :cond_1b
    return-void
.end method

.method public final onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->n(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 106
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->o(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 108
    :cond_13
    return-void
.end method

.method public final onVideoComplete(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->p(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->q(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 115
    :cond_13
    return-void
.end method

.method public final onVideoLoadFail(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->e(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->f(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    const-string v2, "4001"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 69
    :cond_1b
    return-void
.end method

.method public final onVideoLoadSuccess(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    if-eqz v0, :cond_1b

    .line 42
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a:Lcom/mintegral/msdk/out/MTGRewardVideoHandler;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_1b
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    if-eqz v0, :cond_36

    .line 46
    invoke-static {}, Lcom/anythink/network/mintegral/MintegralATInitManager;->getInstance()Lcom/anythink/network/mintegral/MintegralATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b:Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/mintegral/MintegralATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_4a

    .line 52
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 53
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->b(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 55
    :cond_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_36
.end method
