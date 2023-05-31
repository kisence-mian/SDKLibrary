.class final Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/sigmob/SigmobATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    new-instance v1, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v3}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->b(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    .line 61
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->a(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->c(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->loadRewardedVideo(Ljava/lang/String;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)V

    .line 62
    return-void
.end method
