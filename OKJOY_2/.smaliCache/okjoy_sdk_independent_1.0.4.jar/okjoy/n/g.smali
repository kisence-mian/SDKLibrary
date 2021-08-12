.class public Lokjoy/n/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lokjoy/u/a;

.field public final synthetic d:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Landroid/os/Handler;Ljava/lang/Runnable;Lokjoy/u/a;Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Landroid/app/Activity;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/g;->a:Landroid/os/Handler;

    iput-object p3, p0, Lokjoy/n/g;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lokjoy/n/g;->c:Lokjoy/u/a;

    iput-object p5, p0, Lokjoy/n/g;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iput-object p6, p0, Lokjoy/n/g;->e:Landroid/app/Activity;

    iput-object p7, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    iput-object p8, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onReward"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onReward(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onRewardedVideoAdClosed"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    .line 1
    iget-object p1, p1, Lokjoy/n/k;->b:Landroid/app/Activity;

    .line 2
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v0, p0, Lokjoy/n/g;->g:Ljava/lang/String;

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
    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_44

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdClosed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_44
    return-void
.end method

.method public onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string v0, "TopOn SDK reload ad call onRewardedVideoAdFailed"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lokjoy/n/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lokjoy/n/g;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lokjoy/n/g;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_19
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOn SDK \u6fc0\u52b1\u5e7f\u544a\u64ad\u653e\u65f6\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_4d

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_4d
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 3

    const-string v0, "TopOn SDK reload ad call onRewardedVideoAdLoaded"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lokjoy/n/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lokjoy/n/g;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lokjoy/n/g;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_19
    iget-object v0, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    .line 1
    iget-boolean v0, v0, Lokjoy/n/k;->m:Z

    if-nez v0, :cond_2e

    .line 2
    iget-object v0, p0, Lokjoy/n/g;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lokjoy/n/g;->d:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v1, p0, Lokjoy/n/g;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->show(Landroid/app/Activity;)V

    :cond_2e
    return-void
.end method

.method public onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onRewardedVideoAdPlayClicked"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onRewardedVideoAdPlayEnd"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p2, "TopOn SDK reload ad call onRewardedVideoAdPlayFailed"

    invoke-static {p2}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TopOn SDK \u6fc0\u52b1\u5e7f\u544a\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_39

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object p2, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v0, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v1, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5e7f\u544a\u64ad\u653e\u5931\u8d25"

    invoke-direct {p1, p2, v0, v1}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {p2, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_39
    return-void
.end method

.method public onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onRewardedVideoAdPlayStart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/g;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/g;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/g;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkRewardAdListener;->onRewardedAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method
