.class public Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:F

.field private c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->a:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->c:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget v0, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_16

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_16
    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    int-to-float v0, v0

    cmpl-float v4, v0, v5

    if-ltz v4, :cond_44

    int-to-float v2, v2

    cmpl-float v3, v2, v3

    if-lez v3, :cond_44

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->b:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/page/widget/RoundAngleImageView;->b:F

    return-void
.end method
