.class Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    iput-object p3, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_61

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdClosed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    invoke-virtual {v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->a:Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAdListener;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->c:Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    invoke-static {v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->b(Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd$7;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->destory()V

    :cond_61
    return-void
.end method
