.class Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/banner/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b$2;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, -0x5

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onError(ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .registers 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/component/banner/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 101
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/banner/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/component/banner/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V

    .line 104
    :cond_2c
    return-void
.end method
