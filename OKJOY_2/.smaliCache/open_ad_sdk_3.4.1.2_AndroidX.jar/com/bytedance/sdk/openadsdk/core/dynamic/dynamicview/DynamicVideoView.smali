.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;
.super Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 12
    return-void
.end method


# virtual methods
.method b()Z
    .registers 10

    .line 16
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;->b()Z

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;->m:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;->a:F

    float-to-double v1, v1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;->b:F

    float-to-double v3, v3

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;->c:F

    float-to-double v5, v5

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicVideoView;->d:F

    float-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a(DDDD)V

    .line 18
    const/4 v0, 0x1

    return v0
.end method
