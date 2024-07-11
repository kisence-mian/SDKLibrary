.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


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

    .line 159
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->A(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 163
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->B(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_15
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 170
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 171
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->D(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 172
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->E(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    new-array v0, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 175
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_40

    .line 178
    return-void

    .line 176
    :catch_40
    move-exception p1

    .line 179
    return-void
.end method
