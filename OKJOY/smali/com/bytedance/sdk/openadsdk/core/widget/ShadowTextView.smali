.class public Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;
.super Landroid/widget/TextView;
.source "ShadowTextView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->c:I

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 36
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->setTextColor(I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    const-string v1, "#99333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v4

    div-float/2addr v0, v4

    sub-float v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->getMeasuredWidth()I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->getMeasuredHeight()I

    move-result v1

    .line 53
    if-lez v0, :cond_33

    if-lez v1, :cond_33

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->c:I

    .line 55
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->c:I

    if-ge v0, v2, :cond_23

    .line 56
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->c:I

    .line 59
    :cond_23
    div-int/lit8 v2, v1, 0x2

    .line 60
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->setMeasuredDimension(II)V

    .line 63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    :goto_32
    return-void

    .line 65
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/ShadowTextView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_32
.end method
