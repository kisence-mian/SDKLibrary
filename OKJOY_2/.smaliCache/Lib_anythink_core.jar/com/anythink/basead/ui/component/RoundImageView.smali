.class public Lcom/anythink/basead/ui/component/RoundImageView;
.super Lcom/anythink/core/common/res/image/RecycleImageView;


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/component/RoundImageView;->b:Z

    if-eqz v0, :cond_2c

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 61
    invoke-super {p0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/basead/ui/a/a;->a(Landroid/graphics/Canvas;III)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    .line 64
    return-void

    .line 69
    :cond_2c
    goto :goto_2e

    .line 67
    :catch_2d
    move-exception v0

    .line 71
    :goto_2e
    invoke-super {p0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/component/RoundImageView;->b:Z

    if-eqz v0, :cond_2c

    .line 78
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 79
    invoke-super {p0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/basead/ui/a/a;->a(Landroid/graphics/Canvas;III)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    .line 82
    return-void

    .line 87
    :cond_2c
    goto :goto_2e

    .line 85
    :catch_2d
    move-exception v0

    .line 88
    :goto_2e
    invoke-super {p0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method public setNeedRadiu(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/anythink/basead/ui/component/RoundImageView;->b:Z

    .line 50
    return-void
.end method

.method public setRadiusInDip(I)V
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundImageView;->a:I

    .line 54
    return-void
.end method
