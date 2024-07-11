.class final Lcom/anythink/network/ks/KSATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInterstitialAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATInterstitialAdapter;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 70
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->c(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_15
    return-void
.end method

.method public final onFullScreenVideoAdLoad(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsFullScreenVideoAd;",
            ">;)V"
        }
    .end annotation

    .line 76
    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 77
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    iput-object p1, v0, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b:Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 78
    iget-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->d(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 79
    iget-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->e(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    new-array v0, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 83
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    iget-object v1, v1, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b:Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3c

    .line 86
    return-void

    .line 84
    :catch_3c
    move-exception p1

    .line 87
    return-void
.end method
