.class final Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/e/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 126
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 128
    :cond_13
    return-void
.end method

.method public final onAdClosed()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 121
    :cond_13
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 7

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 107
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    const-string v2, "4001"

    .line 108
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 110
    :cond_21
    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 102
    :cond_13
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method public final onRewarded()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 95
    :cond_13
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 80
    :cond_13
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 71
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 73
    :cond_13
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 7

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 85
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    sget-object v2, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 88
    :cond_21
    return-void
.end method
