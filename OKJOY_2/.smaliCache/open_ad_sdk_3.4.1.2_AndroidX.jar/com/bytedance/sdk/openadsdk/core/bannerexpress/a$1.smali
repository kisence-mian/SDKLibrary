.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;
.super Ljava/lang/Object;
.source "BannerExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 4

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz p1, :cond_f

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->f:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 64
    :cond_f
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 69
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .line 74
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(FF)V

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->f()V

    .line 80
    return-void
.end method
