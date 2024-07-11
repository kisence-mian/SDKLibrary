.class final Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b(Landroid/content/Context;)V
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

    .line 98
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClick()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->m(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->n(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 152
    :cond_11
    return-void
.end method

.method public final onADClose()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->q(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 164
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->r(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 168
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 171
    return-void

    .line 169
    :catch_23
    move-exception v0

    .line 173
    return-void
.end method

.method public final onADExpose()V
    .registers 1

    .line 131
    return-void
.end method

.method public final onADLoad()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 104
    :cond_11
    return-void
.end method

.method public final onADShow()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->g(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->h(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 126
    :cond_11
    return-void
.end method

.method public final onError(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->s(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 178
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->t(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_26
    return-void
.end method

.method public final onReward()V
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->k(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->l(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 145
    :cond_11
    return-void
.end method

.method public final onReward(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->i(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 136
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->j(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 138
    :cond_11
    return-void
.end method

.method public final onVideoCached()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 109
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->e(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 110
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->f(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 114
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 117
    return-void

    .line 115
    :catch_2f
    move-exception v0

    .line 119
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->o(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 157
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$2;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->p(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 159
    :cond_11
    return-void
.end method
