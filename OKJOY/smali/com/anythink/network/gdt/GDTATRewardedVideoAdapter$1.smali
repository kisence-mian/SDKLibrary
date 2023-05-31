.class final Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClick()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->i(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->j(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 102
    :cond_13
    return-void
.end method

.method public final onADClose()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->m(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 114
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->n(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 118
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    .line 123
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public final onADExpose()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public final onADLoad()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdDataLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 61
    :cond_13
    return-void
.end method

.method public final onADShow()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->e(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 83
    :cond_13
    return-void
.end method

.method public final onError(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 127
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->o(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 128
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->p(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    const-string v2, "4001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 130
    :cond_2e
    return-void
.end method

.method public final onReward()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->h(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 95
    :cond_13
    return-void
.end method

.method public final onVideoCached()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 66
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 67
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 71
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    .line 76
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method public final onVideoComplete()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->k(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->l(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 109
    :cond_13
    return-void
.end method
