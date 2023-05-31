.class public Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;
.super Landroid/widget/ImageView;
.source "ShadowImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

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

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    .line 50
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    :cond_2d
    return-void
.end method
