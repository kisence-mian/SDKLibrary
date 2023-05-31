.class public Lcom/kwad/sdk/c/h/c;
.super Landroid/view/TextureView;
.source ""


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

    iget v0, p0, Lcom/kwad/sdk/c/h/c;->b:I

    if-eq v0, p1, :cond_f

    iget v0, p0, Lcom/kwad/sdk/c/h/c;->a:I

    if-eq v0, p2, :cond_f

    iput p1, p0, Lcom/kwad/sdk/c/h/c;->b:I

    iput p2, p0, Lcom/kwad/sdk/c/h/c;->a:I

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    :cond_14
    :goto_14
    iget v0, p0, Lcom/kwad/sdk/c/h/c;->b:I

    invoke-static {v0, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/kwad/sdk/c/h/c;->a:I

    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/kwad/sdk/c/h/c;->b:I

    if-lez v2, :cond_48

    iget v2, p0, Lcom/kwad/sdk/c/h/c;->a:I

    if-lez v2, :cond_48

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_5d

    if-ne v5, v3, :cond_5d

    iget v1, p0, Lcom/kwad/sdk/c/h/c;->b:I

    mul-int v3, v1, v0

    iget v4, p0, Lcom/kwad/sdk/c/h/c;->a:I

    mul-int v5, v2, v4

    if-ge v3, v5, :cond_50

    mul-int/2addr v1, v0

    div-int/2addr v1, v4

    :cond_48
    :goto_48
    invoke-virtual {p0, v1, v0}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void

    :cond_4c
    move v7, p1

    move p1, p2

    move p2, v7

    goto :goto_14

    :cond_50
    mul-int v3, v1, v0

    mul-int v5, v2, v4

    if-le v3, v5, :cond_5b

    mul-int v0, v2, v4

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_48

    :cond_5b
    move v1, v2

    goto :goto_48

    :cond_5d
    if-ne v4, v3, :cond_71

    iget v3, p0, Lcom/kwad/sdk/c/h/c;->a:I

    mul-int v1, v2, v3

    iget v4, p0, Lcom/kwad/sdk/c/h/c;->b:I

    div-int/2addr v1, v4

    if-ne v5, v6, :cond_6e

    if-le v1, v0, :cond_6e

    mul-int v1, v0, v4

    div-int/2addr v1, v3

    goto :goto_48

    :cond_6e
    move v0, v1

    move v1, v2

    goto :goto_48

    :cond_71
    if-ne v5, v3, :cond_83

    iget v3, p0, Lcom/kwad/sdk/c/h/c;->b:I

    mul-int v1, v0, v3

    iget v5, p0, Lcom/kwad/sdk/c/h/c;->a:I

    div-int/2addr v1, v5

    if-ne v4, v6, :cond_48

    if-le v1, v2, :cond_48

    mul-int v0, v2, v5

    div-int/2addr v0, v3

    move v1, v2

    goto :goto_48

    :cond_83
    iget v3, p0, Lcom/kwad/sdk/c/h/c;->b:I

    iget v1, p0, Lcom/kwad/sdk/c/h/c;->a:I

    if-ne v5, v6, :cond_9a

    if-le v1, v0, :cond_9a

    mul-int/2addr v3, v0

    div-int v1, v3, v1

    :goto_8e
    if-ne v4, v6, :cond_48

    if-le v1, v2, :cond_48

    iget v0, p0, Lcom/kwad/sdk/c/h/c;->a:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/kwad/sdk/c/h/c;->b:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_48

    :cond_9a
    move v0, v1

    move v1, v3

    goto :goto_8e
.end method

.method public setRotation(F)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/TextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_e
    return-void
.end method
