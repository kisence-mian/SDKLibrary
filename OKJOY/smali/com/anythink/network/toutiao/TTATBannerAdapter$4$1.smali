.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->onRenderSuccess(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter$4;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter$4;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 183
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$4;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 188
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$4;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$4;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 190
    :cond_15
    return-void
.end method
