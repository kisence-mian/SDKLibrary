.class public Lcom/bytedance/sdk/openadsdk/TTC4Proxy;
.super Ljava/lang/Object;
.source "TTC4Proxy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .registers 4

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a()Lcom/bytedance/sdk/openadsdk/component/interaction/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/interaction/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 17
    return-void
.end method