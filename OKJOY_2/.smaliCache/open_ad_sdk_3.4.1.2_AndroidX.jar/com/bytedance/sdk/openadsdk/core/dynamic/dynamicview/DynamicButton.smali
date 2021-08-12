.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;
.super Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;
.source "DynamicButton.java"


# instance fields
.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 19
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->getClickArea()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->getWidgetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    return-void
.end method

.method private f()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->e()F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a()I

    move-result v1

    .line 47
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->f:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->p:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->q:I

    .line 49
    return-void
.end method


# virtual methods
.method b()Z
    .registers 6

    .line 26
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidgetImp;->b()Z

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 30
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->e()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4a

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->f()V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c()I

    move-result v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->p:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    .line 40
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->d()I

    move-result v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicButton;->q:I

    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
