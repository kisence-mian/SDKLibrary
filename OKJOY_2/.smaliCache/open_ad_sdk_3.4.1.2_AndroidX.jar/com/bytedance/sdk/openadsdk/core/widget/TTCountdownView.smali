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

.field private B:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const-string p1, "#fce8b6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a:I

    .line 49
    const-string p1, "#f0f0f0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b:I

    .line 55
    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c:I

    .line 60
    const-string p1, "#7c7c7c"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d:I

    .line 64
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    .line 68
    const/high16 p2, 0x41400000    # 12.0f

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    .line 72
    const/high16 p3, 0x41900000    # 18.0f

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    .line 76
    const/16 v0, 0x10e

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->i:Z

    .line 84
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    .line 88
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    .line 92
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->l:F

    .line 97
    const-string v1, "\u8df3\u8fc7"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->m:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->n:Z

    .line 111
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    .line 112
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    .line 120
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    .line 135
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    .line 136
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    .line 137
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    .line 139
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e()V

    .line 140
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f()V

    .line 141
    return-void
.end method

.method private a(F)F
    .registers 4

    .line 546
    nop

    .line 547
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 546
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;F)F
    .registers 2

    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 216
    nop

    .line 217
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->n:Z

    if-eqz v1, :cond_30

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 221
    :cond_30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->m:Ljava/lang/String;

    .line 224
    :goto_32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 225
    const-string v1, "\u8df3\u8fc7"

    .line 228
    :cond_3a
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    const/4 v0, 0x0

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->A:Z

    return p1
.end method

.method private b(F)F
    .registers 4

    .line 551
    nop

    .line 552
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 551
    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;F)F
    .registers 2

    .line 23
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 10

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FI)F

    move-result v5

    .line 241
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->i:Z

    if-eqz v0, :cond_15

    .line 242
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    .line 243
    move v4, v0

    goto :goto_19

    .line 245
    :cond_15
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->h:I

    int-to-float v0, v0

    .line 246
    move v4, v0

    .line 250
    :goto_19
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 252
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->u:Landroid/graphics/RectF;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    return-void
.end method

.method private e()V
    .registers 5

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    .line 145
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->o:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    .line 151
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    .line 157
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    .line 163
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    return-void
.end method

.method private f()V
    .registers 5

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->u:Landroid/graphics/RectF;

    .line 171
    return-void
.end method

.method private g()I
    .registers 4

    .line 197
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->e:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 198
    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getArcAnim()Landroid/animation/ValueAnimator;
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 322
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    .line 325
    :cond_a
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

    .line 326
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getNumAnim()Landroid/animation/ValueAnimator;
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 303
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    .line 306
    :cond_a
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

    .line 307
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(FF)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public a(FF)F
    .registers 3

    .line 512
    mul-float/2addr p1, p2

    return p1
.end method

.method public a(FI)F
    .registers 3

    .line 534
    int-to-float p2, p2

    mul-float/2addr p2, p1

    return p2
.end method

.method public a()V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 268
    :cond_12
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 269
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

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_51

    .line 297
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c()V

    .line 299
    :cond_51
    return-void
.end method

.method public b()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 345
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 346
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->z:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    .line 349
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 350
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->z:Landroid/animation/ValueAnimator;

    .line 352
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1c

    .line 353
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 354
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->x:Landroid/animation/ValueAnimator;

    .line 356
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_25

    .line 357
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 358
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->y:Landroid/animation/ValueAnimator;

    .line 360
    :cond_25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->s:F

    .line 361
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->t:F

    .line 362
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->invalidate()V

    .line 363
    return-void
.end method

.method public c()V
    .registers 3

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 594
    :cond_f
    goto :goto_11

    .line 592
    :catchall_10
    move-exception v0

    .line 595
    :goto_11
    return-void
.end method

.method public d()V
    .registers 3

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    .line 600
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 606
    :cond_f
    goto :goto_11

    .line 604
    :catchall_10
    move-exception v0

    .line 607
    :goto_11
    return-void
.end method

.method public getCountdownListener()Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;
    .registers 2

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 498
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b()V

    .line 499
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 501
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 207
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Landroid/graphics/Canvas;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Landroid/graphics/Canvas;)V

    .line 210
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 178
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 179
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 182
    const/high16 v2, 0x40000000    # 2.0f

    if-eq p1, v2, :cond_1b

    .line 183
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g()I

    move-result v0

    .line 185
    :cond_1b
    if-eq p2, v2, :cond_21

    .line 186
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->g()I

    move-result v1

    .line 188
    :cond_21
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->setMeasuredDimension(II)V

    .line 189
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 570
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 572
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 573
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->c()V

    .line 574
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    if-eqz p1, :cond_25

    .line 575
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->c()V

    goto :goto_25

    .line 578
    :cond_1b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->d()V

    .line 579
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    if-eqz p1, :cond_25

    .line 580
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->a()V

    .line 583
    :cond_25
    :goto_25
    return-void
.end method

.method public setCountDownTime(I)V
    .registers 2

    .line 541
    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->k:F

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->j:F

    .line 542
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b()V

    .line 543
    return-void
.end method

.method public setCountdownListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;)V
    .registers 3

    .line 560
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->v:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 562
    if-eqz p1, :cond_f

    .line 563
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->c()V

    .line 566
    :cond_f
    return-void
.end method
