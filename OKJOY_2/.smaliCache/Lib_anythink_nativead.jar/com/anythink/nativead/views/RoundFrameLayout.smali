.class public Lcom/anythink/nativead/views/RoundFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/anythink/nativead/views/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    .line 33
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getWidth()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/anythink/nativead/views/RoundFrameLayout;->getHeight()I

    move-result v1

    .line 42
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 43
    iget v3, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    iget v3, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    int-to-float v3, v0

    iget v5, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 48
    iget v5, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    int-to-float v5, v1

    iget v6, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v5, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 51
    iget v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v4, v5, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 54
    iget v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget v0, p0, Lcom/anythink/nativead/views/RoundFrameLayout;->a:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 60
    return-void

    .line 58
    :catch_53
    move-exception p1

    .line 61
    return-void
.end method
