.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 44
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_15
    return-void
.end method

.method public final onInteractionAdLoad(Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    .line 51
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 52
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 54
    :cond_19
    return-void
.end method
