.class public Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;
.super Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;
.source "TTBannerExpressVideoAdImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 22
    return-void
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView;->getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v0

    return-object v0

    .line 36
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/c;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 29
    :cond_9
    return-void
.end method
