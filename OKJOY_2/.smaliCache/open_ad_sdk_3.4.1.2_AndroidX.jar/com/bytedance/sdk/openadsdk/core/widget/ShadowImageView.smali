.class public Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;
.super Landroid/widget/ImageView;
.source "ShadowImageView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .registers 3

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    const-string v1, "#99333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2d

    .line 50
    :cond_1d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    :cond_2d
    return-void
.end method
