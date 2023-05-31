.class public Lcom/bytedance/sdk/openadsdk/TTC2Proxy;
.super Ljava/lang/Object;
.source "TTC2Proxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 5
    .param p2    # Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    .line 20
    return-void
.end method
