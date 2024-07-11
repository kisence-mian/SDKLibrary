.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 124
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->n(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
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

    .line 130
    if-eqz p1, :cond_5f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 131
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 132
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget p1, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    if-lez p1, :cond_28

    .line 133
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    goto :goto_31

    .line 135
    :cond_28
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    .line 137
    :goto_31
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 138
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 140
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_74

    .line 141
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->o(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    return-void

    .line 146
    :cond_5f
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->p(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 147
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->q(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "Return Ad list is empty."

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_74
    return-void
.end method
