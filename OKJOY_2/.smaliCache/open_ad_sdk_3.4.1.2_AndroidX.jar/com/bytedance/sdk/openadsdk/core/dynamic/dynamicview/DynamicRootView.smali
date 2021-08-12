.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;
.super Landroid/widget/FrameLayout;
.source "DynamicRootView.java"


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/d/o;

.field private b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

.field private c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

.field private d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

.field private e:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/d/o;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    .line 23
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(I)V

    .line 24
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->e:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    .line 25
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;->a(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method private c()Z
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 42
    :goto_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Z)V

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->c:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(D)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->d:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b(D)V

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 46
    return-void
.end method

.method public a(DDDD)V
    .registers 10

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->c(D)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d(D)V

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e(D)V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-virtual {p1, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/d/o;->f(D)V

    .line 53
    return-void
.end method

.method public b()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->a(Z)V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->a:Lcom/bytedance/sdk/openadsdk/core/d/o;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 58
    return-void
.end method

.method public getDynamicClickListener()Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->e:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    return-object v0
.end method

.method public getExpressVideoListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    return-object v0
.end method

.method public getRenderListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    return-object v0
.end method

.method public setDislikeView(Landroid/view/View;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->e:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;->b(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public setDynamicBaseWidget(Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->d:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    .line 38
    return-void
.end method

.method public setExpressVideoListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->c:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    .line 34
    return-void
.end method

.method public setRenderListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->e:Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)V

    .line 31
    return-void
.end method
