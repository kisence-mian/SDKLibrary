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

    .line 35
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 39
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->b(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_15
    return-void
.end method

.method public final onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 60
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->f(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 61
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->g(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 63
    :cond_16
    return-void
.end method

.method public final onRewardVideoCached()V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->c(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->d(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 50
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$1;->a:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->e(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    .line 53
    return-void

    .line 51
    :catch_2c
    move-exception v0

    .line 54
    return-void
.end method
