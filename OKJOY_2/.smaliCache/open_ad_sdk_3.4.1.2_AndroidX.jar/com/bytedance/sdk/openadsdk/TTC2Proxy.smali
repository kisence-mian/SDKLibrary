.class public Lcom/bytedance/sdk/openadsdk/TTC2Proxy;
.super Ljava/lang/Object;
.source "TTC2Proxy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .registers 4

    .line 20
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    .line 21
    return-void
.end method
