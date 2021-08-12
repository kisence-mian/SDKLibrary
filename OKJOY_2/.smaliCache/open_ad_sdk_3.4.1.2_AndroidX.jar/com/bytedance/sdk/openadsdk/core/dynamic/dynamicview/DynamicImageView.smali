.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;
.super Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 6

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->l()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_21

    .line 16
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->l()F

    move-result p3

    float-to-int p3, p3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->e:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->f:I

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;-><init>(Landroid/content/Context;III)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    goto :goto_28

    .line 18
    :cond_21
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    .line 20
    :goto_28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->getClickArea()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->getWidgetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    return-void
.end method


# virtual methods
.method b()Z
    .registers 4

    .line 26
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;->b()Z

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicImageView;->n:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
