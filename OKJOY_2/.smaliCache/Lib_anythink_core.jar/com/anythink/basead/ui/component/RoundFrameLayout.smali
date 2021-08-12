.class public Lcom/anythink/basead/ui/component/RoundFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundFrameLayout;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundFrameLayout;->a:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/component/RoundFrameLayout;->a:I

    .line 42
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 55
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 47
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/component/RoundFrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/anythink/basead/ui/component/RoundFrameLayout;->a:I

    invoke-static {p1, v1, v2, v3}, Lcom/anythink/basead/ui/a/a;->a(Landroid/graphics/Canvas;III)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 51
    return-void
.end method
