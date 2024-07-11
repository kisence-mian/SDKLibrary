.class public Lokjoy/n/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

.field public final synthetic c:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V
    .registers 4

    iput-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/n/j;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onReward"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onReward(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onRewardedVideoAdClosed"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object p1, p1, Lokjoy/n/k;->b:Landroid/app/Activity;

    .line 2
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    iget-object v0, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v2, p1, Lokjoy/n/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load()V

    new-instance v2, Lokjoy/n/j;

    invoke-direct {v2, p1, v0, v1}, Lokjoy/n/j;-><init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    invoke-virtual {v1, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 4
    :cond_2b
    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 5
    iget-object v0, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_46

    .line 6
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 7
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 8
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdClosed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_46
    return-void
.end method

.method public onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 4

    const-string v0, "TopOn SDK preload ad call onRewardedVideoAdFailed"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOn SDK \u6fc0\u52b1\u5e7f\u544a\u9884\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 4

    const-string v0, "TopOn SDK preload ad call onRewardedVideoAdLoaded"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    iget-object v0, v0, Lokjoy/n/k;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lokjoy/n/j;->b:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onRewardedVideoAdPlayClicked"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onRewardedVideoAdPlayEnd"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p2, "TopOn SDK preload ad call onRewardedVideoAdPlayFailed"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TopOn SDK \u63d2\u5c4f\u5e7f\u544a\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object p2, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p2, :cond_3b

    .line 2
    new-instance p2, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u5e7f\u544a\u64ad\u653e\u5931\u8d25"

    invoke-direct {p2, v0, p1, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 4
    invoke-interface {p1, p2}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_3b
    return-void
.end method

.method public onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onRewardedVideoAdPlayStart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/j;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/j;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->j:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method
