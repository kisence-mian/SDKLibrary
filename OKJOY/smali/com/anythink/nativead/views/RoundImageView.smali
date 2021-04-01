.class public Lcom/anythink/nativead/views/RoundImageView;
.super Landroid/widget/ImageView;


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundImageView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundImageView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundImageView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 30
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 96
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    if-eqz v0, :cond_61

    .line 40
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getHeight()I

    move-result v1

    .line 43
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 44
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 46
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v0

    iget v6, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 49
    int-to-float v3, v0

    iget v4, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    int-to-float v5, v1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 52
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    const/4 v0, 0x0

    int-to-float v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 55
    const/4 v0, 0x0

    iget v1, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 59
    :cond_61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    .line 63
    :goto_64
    return-void

    :catch_65
    move-exception v0

    goto :goto_64
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    if-eqz v0, :cond_61

    .line 69
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getHeight()I

    move-result v1

    .line 72
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 73
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v0

    iget v6, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 78
    int-to-float v3, v0

    iget v4, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    int-to-float v5, v1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 81
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    const/4 v0, 0x0

    int-to-float v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 84
    const/4 v0, 0x0

    iget v1, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 86
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 88
    :cond_61
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    .line 92
    :goto_64
    return-void

    :catch_65
    move-exception v0

    goto :goto_64
.end method

.method public setNeedRadiu(Z)V
    .registers 2

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    .line 34
    return-void
.end method

.method public startLoadImage(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 101
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/nativead/views/RoundImageView$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/views/RoundImageView$1;-><init>(Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method
