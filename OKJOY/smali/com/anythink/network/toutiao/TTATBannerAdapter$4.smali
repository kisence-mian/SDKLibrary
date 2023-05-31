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

    .prologue
    .line 154
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 158
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 160
    :cond_f
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 165
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 167
    :cond_f
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 171
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 174
    :cond_19
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 6

    .prologue
    .line 178
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iput-object p1, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_1f

    .line 193
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 195
    :cond_1f
    return-void
.end method
