.class public Lcom/kwad/sdk/core/video/a;
.super Landroid/view/TextureView;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    iget v0, p0, Lcom/kwad/sdk/core/video/a;->b:I

    if-eq v0, p1, :cond_f

    iget v0, p0, Lcom/kwad/sdk/core/video/a;->a:I

    if-eq v0, p2, :cond_f

    iput p1, p0, Lcom/kwad/sdk/core/video/a;->b:I

    iput p2, p0, Lcom/kwad/sdk/core/video/a;->a:I

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/a;->requestLayout()V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/a;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    :cond_10
    move v5, p2

    move p2, p1

    move p1, v5

    :cond_13
    iget v0, p0, Lcom/kwad/sdk/core/video/a;->b:I

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/video/a;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/kwad/sdk/core/video/a;->a:I

    invoke-static {v1, p2}, Lcom/kwad/sdk/core/video/a;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/kwad/sdk/core/video/a;->b:I

    if-lez v2, :cond_9a

    iget v2, p0, Lcom/kwad/sdk/core/video/a;->a:I

    if-lez v2, :cond_9a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_58

    if-ne v1, v2, :cond_58

    iget v0, p0, Lcom/kwad/sdk/core/video/a;->b:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/kwad/sdk/core/video/a;->a:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_4a

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    goto :goto_56

    :cond_4a
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_55

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    :goto_53
    move v0, p1

    goto :goto_9a

    :cond_55
    move v0, p1

    :goto_56
    move v1, p2

    goto :goto_9a

    :cond_58
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_6e

    iget v0, p0, Lcom/kwad/sdk/core/video/a;->a:I

    mul-int v2, p1, v0

    iget v4, p0, Lcom/kwad/sdk/core/video/a;->b:I

    div-int/2addr v2, v4

    if-ne v1, v3, :cond_6b

    if-le v2, p2, :cond_6b

    mul-int/2addr v4, p2

    div-int v0, v4, v0

    goto :goto_56

    :cond_6b
    move v0, p1

    move v1, v2

    goto :goto_9a

    :cond_6e
    if-ne v1, v2, :cond_82

    iget v1, p0, Lcom/kwad/sdk/core/video/a;->b:I

    mul-int v2, p2, v1

    iget v4, p0, Lcom/kwad/sdk/core/video/a;->a:I

    div-int/2addr v2, v4

    if-ne v0, v3, :cond_7f

    if-le v2, p1, :cond_7f

    mul-int/2addr v4, p1

    div-int v1, v4, v1

    goto :goto_53

    :cond_7f
    move v1, p2

    move v0, v2

    goto :goto_9a

    :cond_82
    iget v2, p0, Lcom/kwad/sdk/core/video/a;->b:I

    iget v4, p0, Lcom/kwad/sdk/core/video/a;->a:I

    if-ne v1, v3, :cond_8e

    if-le v4, p2, :cond_8e

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_90

    :cond_8e
    move v1, v2

    move p2, v4

    :goto_90
    if-ne v0, v3, :cond_98

    if-le v1, p1, :cond_98

    mul-int/2addr v4, p1

    div-int v1, v4, v2

    goto :goto_53

    :cond_98
    move v0, v1

    goto :goto_56

    :cond_9a
    :goto_9a
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/video/a;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/a;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/video/a;->requestLayout()V

    :cond_e
    return-void
.end method
