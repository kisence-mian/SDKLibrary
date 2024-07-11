.class public Lcom/sigmob/sdk/base/views/FiveStarView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    iput p2, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    return-void
.end method

.method private a(FF)Landroid/graphics/Path;
    .registers 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x120

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xb4

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 p1, 0xfc

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private b(FF)Landroid/graphics/Path;
    .registers 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x48

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xb4

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xfc

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x120

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 p1, 0x144

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method


# virtual methods
.method a(I)F
    .registers 6

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method b(I)F
    .registers 6

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/FiveStarView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    float-to-int v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v3

    mul-float/2addr v3, v2

    const/16 v4, 0x7e

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v6, "#FFA500"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    move v4, v1

    :goto_2e
    const/high16 v7, -0x3e700000    # -18.0f

    const/4 v8, 0x0

    const v9, 0x400ccccd    # 2.2f

    const/high16 v10, 0x41900000    # 18.0f

    if-lez v4, :cond_6e

    if-nez v5, :cond_42

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float/2addr v9, v2

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4c

    :cond_42
    const/4 v5, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v8, v2

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_4c
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v7

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    :cond_6e
    iget v0, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    int-to-float v1, v1

    cmpl-float v4, v0, v1

    if-lez v4, :cond_105

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_b0

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v0, v2, v9

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_a3
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_aa
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_105

    :cond_b0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    if-ltz v0, :cond_e8

    mul-float v0, v2, v9

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a3

    :cond_e8
    mul-float v0, v2, v9

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_aa

    :cond_105
    :goto_105
    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_10b
    if-lez v0, :cond_134

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v1, v2, v9

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v2, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10b

    :cond_134
    return-void
.end method
