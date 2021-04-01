.class public Lcom/anythink/nativead/views/RoundFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 26
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 58
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
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getWidth()I

    move-result v0

    .line 33
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getHeight()I

    move-result v1

    .line 35
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 36
    iget v3, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    iget v3, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    int-to-float v3, v0

    const/4 v4, 0x0

    int-to-float v5, v0

    iget v6, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 41
    int-to-float v3, v0

    iget v4, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    int-to-float v5, v1

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 44
    iget v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v0, v0

    int-to-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    const/4 v0, 0x0

    int-to-float v3, v1

    const/4 v4, 0x0

    iget v5, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 47
    const/4 v0, 0x0

    iget v1, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 49
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    .line 54
    :goto_60
    return-void

    :catch_61
    move-exception v0

    goto :goto_60
.end method
