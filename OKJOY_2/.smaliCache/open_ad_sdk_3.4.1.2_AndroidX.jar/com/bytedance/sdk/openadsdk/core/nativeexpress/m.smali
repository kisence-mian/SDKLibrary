.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;
.source "TTNativeExpressDrawVideoAdImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .line 22
    const-string v0, "draw_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->d:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 25
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 32
    :cond_b
    return-void
.end method
