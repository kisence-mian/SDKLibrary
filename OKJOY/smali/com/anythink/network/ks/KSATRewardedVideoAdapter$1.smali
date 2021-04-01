.class final Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/IAdRequestManager$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 69
    return-void
.end method

.method public final onRewardVideoAdLoad(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/export/i/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 75
    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/export/i/KsRewardVideoAd;

    iput-object v0, v1, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/export/i/KsRewardVideoAd;

    .line 76
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 79
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$1;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    iget-object v2, v2, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/export/i/KsRewardVideoAd;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_34

    .line 84
    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method
