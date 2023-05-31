.class final Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


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
    .line 28
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onError: code :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 33
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 35
    :cond_41
    return-void
.end method

.method public final onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 54
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->g(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 55
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->h(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdDataLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 57
    :cond_18
    return-void
.end method

.method public final onRewardVideoCached()V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 41
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 44
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2b

    .line 48
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method
