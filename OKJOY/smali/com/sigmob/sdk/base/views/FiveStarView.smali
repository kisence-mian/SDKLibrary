.class public Lcom/sigmob/sdk/base/views/FiveStarView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field private final b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    iput p2, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    return-void
.end method

.method private a(FF)Landroid/graphics/Path;
    .registers 11

    const/16 v7, 0xfc

    const/16 v6, 0xd8

    const/16 v5, 0xb4

    const/16 v4, 0x90

    const/16 v3, 0x6c

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x120

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    const/16 v2, 0x120

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v7}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v7}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private b(FF)Landroid/graphics/Path;
    .registers 10

    const/16 v6, 0x90

    const/16 v5, 0x6c

    const/16 v4, 0x48

    const/16 v3, 0x24

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v4}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0, v6}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xb4

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    const/16 v2, 0xb4

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    const/16 v2, 0xd8

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0xfc

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    const/16 v2, 0xfc

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x120

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p1

    const/16 v2, 0x120

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/16 v1, 0x144

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(I)F

    move-result v1

    mul-float/2addr v1, p2

    const/16 v2, 0x144

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

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

    double-to-float v0, v0

    return v0
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

    double-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    const/4 v0, 0x1

    const/high16 v12, 0x41900000    # 18.0f

    const v11, 0x400ccccd    # 2.2f

    const/4 v10, 0x0

    const/high16 v9, -0x3e700000    # -18.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/FiveStarView;->getHeight()I

    move-result v3

    iget v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    float-to-int v2, v1

    int-to-float v1, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v1, v4

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v1

    mul-float/2addr v1, v4

    const/16 v5, 0x7e

    invoke-virtual {p0, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(I)F

    move-result v5

    div-float v5, v1, v5

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v6, "#FFA500"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v2

    :goto_38
    if-lez v1, :cond_71

    if-nez v0, :cond_66

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v6, v4, v11

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_44
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v6

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_66
    const/4 v0, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v6, v4

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_44

    :cond_71
    iget v0, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b7

    iget v0, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    int-to-float v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_e8

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v0, v4, v11

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v2, "#FFA500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b7
    :goto_b7
    const/high16 v0, 0x40a00000    # 5.0f

    iget v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->b:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_bd
    if-lez v0, :cond_158

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v1, v4, v11

    invoke-virtual {p1, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v3, "#FFA500"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_bd

    :cond_e8
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_130

    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v0, v4, v11

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v2, "#FFA500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->a(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v2, "#FFA500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b7

    :cond_130
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    mul-float v0, v4, v11

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-direct {p0, v4, v5}, Lcom/sigmob/sdk/base/views/FiveStarView;->b(FF)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    const-string v2, "#FFA500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/FiveStarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_b7

    :cond_158
    return-void
.end method
