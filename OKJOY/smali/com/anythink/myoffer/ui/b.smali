.class public final Lcom/anythink/myoffer/ui/b;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/RectF;

.field private m:F

.field private n:Ljava/lang/String;

.field private o:Landroid/graphics/Rect;

.field private p:I

.field private q:F

.field private r:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/myoffer/ui/b;-><init>(Landroid/content/Context;B)V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1050
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->d:F

    .line 1051
    const/4 v0, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->e:F

    .line 1054
    const-string v0, "#cc505050"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->f:I

    .line 1055
    const-string v0, "#505050"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->g:I

    .line 1056
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->h:I

    .line 1057
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    .line 1058
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1059
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1060
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1061
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1063
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    .line 1064
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1065
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1067
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    .line 1068
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1069
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1070
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    .line 1073
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->o:Landroid/graphics/Rect;

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 50
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->d:F

    .line 51
    const/4 v0, 0x2

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->e:F

    .line 54
    const-string v0, "#cc505050"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->f:I

    .line 55
    const-string v0, "#505050"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->g:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->h:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->o:Landroid/graphics/Rect;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 90
    iput p1, p0, Lcom/anythink/myoffer/ui/b;->p:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final b(I)V
    .registers 8

    .prologue
    .line 95
    const/high16 v0, 0x43b40000    # 360.0f

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/anythink/myoffer/ui/b;->p:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->m:F

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->p:I

    sub-int/2addr v1, p1

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/b;->invalidate()V

    .line 98
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/anythink/myoffer/ui/b;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anythink/myoffer/ui/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/anythink/myoffer/ui/b;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/anythink/myoffer/ui/b;->m:F

    iget-object v5, p0, Lcom/anythink/myoffer/ui/b;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 113
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/myoffer/ui/b;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->q:F

    .line 115
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/b;->r:Landroid/graphics/Paint$FontMetrics;

    .line 116
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lcom/anythink/myoffer/ui/b;->q:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    .line 117
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/anythink/myoffer/ui/b;->r:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v4, p0, Lcom/anythink/myoffer/ui/b;->r:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/anythink/myoffer/ui/b;->r:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/anythink/myoffer/ui/b;->c:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_8f
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 80
    iput p1, p0, Lcom/anythink/myoffer/ui/b;->i:I

    .line 81
    iput p2, p0, Lcom/anythink/myoffer/ui/b;->j:I

    .line 83
    iget v0, p0, Lcom/anythink/myoffer/ui/b;->d:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    add-float v2, v3, v0

    add-float/2addr v3, v0

    iget v4, p0, Lcom/anythink/myoffer/ui/b;->i:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/anythink/myoffer/ui/b;->j:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/anythink/myoffer/ui/b;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/myoffer/ui/b;->k:I

    .line 87
    return-void
.end method
