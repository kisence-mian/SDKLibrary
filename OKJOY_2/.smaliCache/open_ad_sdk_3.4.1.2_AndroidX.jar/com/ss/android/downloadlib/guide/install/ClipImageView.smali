.class public Lcom/ss/android/downloadlib/guide/install/ClipImageView;
.super Landroid/widget/ImageView;
.source "ClipImageView.java"


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 2

    .line 42
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    .line 44
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 62
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    if-eqz v0, :cond_3e

    .line 63
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 64
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->e:[F

    if-eqz v0, :cond_26

    .line 66
    iget-object v1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->c:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 68
    :cond_26
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 69
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 70
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_3e

    .line 71
    iget-object v1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->b:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    :cond_3e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    .line 56
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    return-void
.end method

.method public setClip(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->a:Z

    .line 86
    return-void
.end method

.method public setRadius([F)V
    .registers 4

    .line 47
    if-eqz p1, :cond_b

    array-length v0, p1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    goto :goto_b

    .line 50
    :cond_8
    iput-object p1, p0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->e:[F

    .line 51
    return-void

    .line 48
    :cond_b
    :goto_b
    return-void
.end method

.method public setRoundRadius(I)V
    .registers 4

    .line 78
    if-lez p1, :cond_22

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 80
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setRadius([F)V

    .line 82
    :cond_22
    return-void
.end method
