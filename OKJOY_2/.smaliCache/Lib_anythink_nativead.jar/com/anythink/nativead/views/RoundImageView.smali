.class public Lcom/anythink/nativead/views/RoundImageView;
.super Lcom/anythink/nativead/api/ATNativeImageView;


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1}, Lcom/anythink/nativead/api/ATNativeImageView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/anythink/nativead/api/ATNativeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/nativead/api/ATNativeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    if-eqz v0, :cond_53

    .line 47
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getWidth()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getHeight()I

    move-result v1

    .line 50
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 51
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    int-to-float v3, v0

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 56
    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    int-to-float v5, v1

    iget v6, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v5, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 59
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v4, v5, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 62
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 63
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 66
    :cond_53
    invoke-super {p0, p1}, Lcom/anythink/nativead/api/ATNativeImageView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    .line 69
    return-void

    .line 67
    :catch_57
    move-exception p1

    .line 70
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    if-eqz v0, :cond_53

    .line 76
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getWidth()I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundImageView;->getHeight()I

    move-result v1

    .line 79
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 80
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 82
    iget v3, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    int-to-float v3, v0

    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 85
    iget v5, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    int-to-float v5, v1

    iget v6, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v5, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 88
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v4, v5, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 91
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget v0, p0, Lcom/anythink/nativead/views/RoundImageView;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 93
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 95
    :cond_53
    invoke-super {p0, p1}, Lcom/anythink/nativead/api/ATNativeImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    .line 98
    return-void

    .line 96
    :catch_57
    move-exception p1

    .line 99
    return-void
.end method

.method public setNeedRadiu(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/anythink/nativead/views/RoundImageView;->b:Z

    .line 41
    return-void
.end method
