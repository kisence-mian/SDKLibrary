.class public final Lcom/qq/e/ads/nativ/MediaView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/qq/e/ads/nativ/MediaView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Hardware acceleration is off"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersionCode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_12

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3a

    :cond_12
    iget v0, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    if-lez v0, :cond_3a

    iget v0, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    if-lez v0, :cond_3a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    mul-int/2addr v3, v1

    if-lt v2, v3, :cond_2c

    if-nez v1, :cond_3e

    :cond_2c
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .end local p1    # "widthMeasureSpec":I
    iget v1, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    div-int/2addr v0, v1

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .end local p2    # "heightMeasureSpec":I
    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .restart local p1    # "widthMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_3e
    iget v2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    mul-int/2addr v3, v1

    if-gt v2, v3, :cond_48

    if-nez v0, :cond_57

    :cond_48
    iget v0, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    div-int/2addr v0, v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .end local p1    # "widthMeasureSpec":I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3a

    .restart local p1    # "widthMeasureSpec":I
    :cond_57
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .end local p1    # "widthMeasureSpec":I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3a
.end method

.method public final setRatio(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    iput p2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    return-void
.end method
