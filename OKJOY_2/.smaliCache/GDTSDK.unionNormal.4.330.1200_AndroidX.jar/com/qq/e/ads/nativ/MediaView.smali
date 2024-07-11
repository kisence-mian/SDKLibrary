.class public final Lcom/qq/e/ads/nativ/MediaView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .registers 3

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
    .registers 10

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersionCode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_59

    :cond_10
    iget v0, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    if-lez v0, :cond_59

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget p2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    mul-int v2, v0, p2

    iget v3, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    mul-int v4, v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-lt v2, v4, :cond_48

    if-nez v1, :cond_2f

    goto :goto_48

    :cond_2f
    mul-int p1, v0, p2

    mul-int v2, v3, v1

    if-gt p1, v2, :cond_3d

    if-nez v0, :cond_38

    goto :goto_3d

    :cond_38
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_43

    :cond_3d
    :goto_3d
    mul-int/2addr v3, v1

    div-int/2addr v3, p2

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_43
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_59

    :cond_48
    :goto_48
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p1, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    div-int/2addr v0, p1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v6, p2

    move p2, p1

    move p1, v6

    :cond_59
    :goto_59
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setRatio(II)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/nativ/MediaView;->a:I

    iput p2, p0, Lcom/qq/e/ads/nativ/MediaView;->b:I

    return-void
.end method
