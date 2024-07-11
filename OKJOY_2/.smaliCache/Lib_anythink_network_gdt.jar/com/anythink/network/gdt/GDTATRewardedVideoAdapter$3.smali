.class final Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->c(Landroid/content/Context;)V
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

    .line 195
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->u(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->v(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 201
    :cond_11
    return-void
.end method

.method public final onClick()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->E(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 246
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->F(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 248
    :cond_11
    return-void
.end method

.method public final onClose()V
    .registers 3

    .line 259
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->I(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 260
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->J(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 264
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 267
    return-void

    .line 265
    :catch_23
    move-exception v0

    .line 269
    return-void
.end method

.method public final onError(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->K(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 274
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->L(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 276
    :cond_26
    return-void
.end method

.method public final onExpose()V
    .registers 1

    .line 227
    return-void
.end method

.method public final onReward()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->A(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 232
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->B(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 234
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

    .line 238
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->C(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 239
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->D(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 241
    :cond_11
    return-void
.end method

.method public final onShow()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->y(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 220
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->z(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 222
    :cond_11
    return-void
.end method

.method public final onVideoCached()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->d:Z

    .line 206
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->w(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 207
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->x(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 211
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 214
    return-void

    .line 212
    :catch_2f
    move-exception v0

    .line 215
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->G(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 253
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$3;->a:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->H(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 255
    :cond_11
    return-void
.end method
