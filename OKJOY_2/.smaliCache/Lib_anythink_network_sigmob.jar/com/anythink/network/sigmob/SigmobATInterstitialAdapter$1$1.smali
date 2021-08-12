.class final Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/sigmob/SigmobATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    iget-boolean v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a:Z

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_3b

    .line 69
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    new-instance v3, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    iget-object v4, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v4, v4, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v4}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v3}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    .line 70
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->b(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v3, v3, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->loadRewardedVideo(Ljava/lang/String;Lcom/sigmob/windad/rewardedVideo/WindRewardAdRequest;Lcom/anythink/core/common/b/b;)V

    return-void

    .line 72
    :cond_3b
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    new-instance v3, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    iget-object v4, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v4, v4, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v4}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v3}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    .line 73
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->c(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;

    iget-object v3, v3, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->loadInterstitial(Ljava/lang/String;Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V

    .line 76
    return-void
.end method
