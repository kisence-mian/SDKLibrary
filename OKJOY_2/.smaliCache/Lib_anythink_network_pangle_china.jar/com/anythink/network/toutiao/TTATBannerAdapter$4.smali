.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


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

    .line 154
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 157
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->r(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 158
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->s(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 160
    :cond_11
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 164
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->t(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 165
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->u(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 167
    :cond_11
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .line 171
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->v(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 172
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->w(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_15
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 4

    .line 178
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iput-object p1, p2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Landroid/view/View;

    .line 179
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 180
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->y(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 182
    :cond_18
    return-void
.end method
