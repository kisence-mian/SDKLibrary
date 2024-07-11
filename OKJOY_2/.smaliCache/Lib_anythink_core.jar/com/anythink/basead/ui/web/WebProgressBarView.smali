.class public Lcom/anythink/basead/ui/web/WebProgressBarView;
.super Landroid/view/View;


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .registers 3

    .line 39
    const v0, -0xde690d

    iput v0, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->b:I

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->c:Landroid/graphics/Paint;

    .line 41
    iget v1, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->a:I

    .line 47
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->setBackgroundColor(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->a:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->c:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/anythink/basead/ui/web/WebProgressBarView;->a:I

    .line 52
    invoke-virtual {p0}, Lcom/anythink/basead/ui/web/WebProgressBarView;->postInvalidate()V

    .line 53
    return-void
.end method
