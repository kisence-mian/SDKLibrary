.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;
.super Ljava/lang/Object;
.source "BannerExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
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

    .prologue
    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdClicked(Landroid/view/View;I)V

    .line 68
    :cond_13
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 73
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 78
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-static {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;FF)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->b(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;)V

    .line 84
    return-void
.end method
