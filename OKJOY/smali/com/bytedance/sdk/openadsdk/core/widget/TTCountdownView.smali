.class public Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;
.super Landroid/view/View;
.source "TTCountdownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:F

.field private t:F

.field private u:Landroid/graphics/RectF;

.field private v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

.field private w:Landroid/animation/AnimatorSet;

.field private x:Landroid/animation/ValueAnimator;

.field private y:Landroid/animation/ValueAnimator;

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-string v0, "#fce8b6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a:I

    .line 47
    const-string v0, "#f0f0f0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b:I

    .line 53
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c:I

    .line 58
    const-string v0, "#7c7c7c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d:I

    .line 62
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    .line 66
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    .line 70
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    .line 74
    const/16 v0, 0x10e

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    .line 78
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->i:Z

    .line 82
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    .line 86
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    .line 90
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->l:F

    .line 95
    const-string v0, "\u8df3\u8fc7"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->m:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->n:Z

    .line 109
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    .line 110
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    .line 118
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    .line 131
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    .line 132
    const/high16 v0, 0x41900000    # 18.0f

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    .line 133
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(F)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    .line 134
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c()V

    .line 137
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d()V

    .line 138
    return-void
.end method

.method private a(F)F
    .registers 4

    .prologue
    .line 543
    const/4 v0, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 543
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;F)F
    .registers 2

    .prologue
    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 213
    const-string v0, "\u8df3\u8fc7"

    .line 214
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->n:Z

    if-eqz v0, :cond_4c

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 222
    const-string v0, "\u8df3\u8fc7"

    .line 225
    :cond_39
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 231
    return-void

    .line 218
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->m:Ljava/lang/String;

    goto :goto_31
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z
    .registers 2

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    return p1
.end method

.method private b(F)F
    .registers 4

    .prologue
    .line 548
    const/4 v0, 0x2

    .line 549
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 548
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;F)F
    .registers 2

    .prologue
    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 236
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FI)F

    move-result v3

    .line 238
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->i:Z

    if-eqz v0, :cond_30

    .line 239
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    int-to-float v0, v0

    sub-float v2, v0, v3

    .line 247
    :goto_15
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->u:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 257
    return-void

    .line 242
    :cond_30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    int-to-float v2, v0

    .line 243
    goto :goto_15
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    .line 167
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    neg-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    neg-float v2, v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->u:Landroid/graphics/RectF;

    .line 168
    return-void
.end method

.method private e()I
    .registers 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 194
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    .line 195
    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getArcAnim()Landroid/animation/ValueAnimator;
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    .line 322
    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    .line 323
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getNumAnim()Landroid/animation/ValueAnimator;
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    .line 303
    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public a(FF)F
    .registers 4

    .prologue
    .line 509
    mul-float v0, p1, p2

    return v0
.end method

.method public a(FI)F
    .registers 4

    .prologue
    .line 531
    int-to-float v0, p2

    mul-float/2addr v0, p1

    return v0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 265
    :cond_14
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getNumAnim()Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getArcAnim()Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 343
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 345
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->z:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 347
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->z:Landroid/animation/ValueAnimator;

    .line 349
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_24

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 351
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    .line 353
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2f

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    .line 357
    :cond_2f
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    .line 358
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    .line 359
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->invalidate()V

    .line 360
    return-void
.end method

.method public getCountdownListener()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b()V

    .line 496
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 498
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 200
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Landroid/graphics/Canvas;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Landroid/graphics/Canvas;)V

    .line 207
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 172
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 174
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 175
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 179
    if-eq v2, v4, :cond_1b

    .line 180
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e()I

    move-result v1

    .line 182
    :cond_1b
    if-eq v3, v4, :cond_21

    .line 183
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e()I

    move-result v0

    .line 185
    :cond_21
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setMeasuredDimension(II)V

    .line 186
    return-void
.end method

.method public setCountDownTime(I)V
    .registers 3

    .prologue
    .line 538
    int-to-float v0, p1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    .line 539
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b()V

    .line 540
    return-void
.end method

.method public setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;)V
    .registers 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    .line 558
    return-void
.end method
