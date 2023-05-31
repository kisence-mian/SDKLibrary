.class public Lcom/bytedance/sdk/openadsdk/TTC4Proxy;
.super Ljava/lang/Object;
.source "TTC4Proxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 4

    .prologue
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a()Lcom/bytedance/sdk/openadsdk/component/interaction/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 16
    return-void
.end method
