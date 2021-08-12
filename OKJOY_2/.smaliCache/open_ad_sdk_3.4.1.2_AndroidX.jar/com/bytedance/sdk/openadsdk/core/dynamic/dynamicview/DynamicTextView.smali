.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;
.super Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 15
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->getClickArea()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->getWidgetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    return-void
.end method


# virtual methods
.method b()Z
    .registers 4

    .line 22
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;->b()Z

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 26
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4a

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->o()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_63

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicTextView;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    :cond_63
    return v1
.end method
