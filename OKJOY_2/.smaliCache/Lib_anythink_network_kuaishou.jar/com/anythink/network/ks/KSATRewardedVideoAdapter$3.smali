.class final Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->a()V
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

    .line 155
    iput-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->n(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final onRewardVideoAdLoad(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    .line 163
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 164
    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/KsRewardVideoAd;

    iput-object p1, v0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 165
    iget-object p1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->o(Lcom/anythink/network/ks/KSATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    new-array v0, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 168
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATRewardedVideoAdapter$3;->a:Lcom/anythink/network/ks/KSATRewardedVideoAdapter;

    iget-object v1, v1, Lcom/anythink/network/ks/KSATRewardedVideoAdapter;->b:Lcom/kwad/sdk/api/KsRewardVideoAd;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_34

    .line 171
    return-void

    .line 169
    :catch_34
    move-exception p1

    .line 172
    return-void
.end method
