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

    .prologue
    .line 120
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 124
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 126
    :cond_19
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 131
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v1, v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 132
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    if-lez v0, :cond_57

    .line 133
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    .line 137
    :goto_27
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 138
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 140
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_56

    .line 141
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 150
    :cond_56
    :goto_56
    return-void

    .line 135
    :cond_57
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    goto :goto_27

    .line 146
    :cond_61
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_56

    .line 147
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$3;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "Return Ad list is empty."

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_56
.end method
