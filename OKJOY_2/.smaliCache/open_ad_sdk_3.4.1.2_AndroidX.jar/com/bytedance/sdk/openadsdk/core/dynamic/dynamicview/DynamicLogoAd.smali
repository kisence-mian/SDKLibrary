.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;
.super Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicLogoAd.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 14
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->getClickArea()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->getWidgetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method


# virtual methods
.method b()Z
    .registers 3

    .line 21
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;->b()Z

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 25
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicLogoAd;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
