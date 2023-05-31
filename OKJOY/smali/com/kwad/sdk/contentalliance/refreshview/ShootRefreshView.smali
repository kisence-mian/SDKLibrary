.class public Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/refreshview/d;


# static fields
.field public static final t:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:F

.field private static final w:F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/RectF;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/graphics/Shader;

.field private n:Z

.field private o:Landroid/animation/ValueAnimator;

.field private p:F

.field private q:F

.field private r:Z

.field private s:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$a;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->t:Landroid/util/Property;

    new-instance v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$b;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->u:Landroid/util/Property;

    const-wide v0, 0x3fe0c15240000000L    # 0.5235987901687622

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->v:F

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->w:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->r:Z

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->h()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->g()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)F
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    return v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;F)F
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v0, -0xff001

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->f:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->g:I

    const v0, 0xdffff00

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->i:I

    new-instance v0, Landroid/graphics/SweepGradient;

    new-array v1, v3, [I

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->g:I

    aput v2, v1, v5

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->h:I

    aput v2, v1, v6

    new-array v2, v3, [F

    const v3, 0x3e99999a    # 0.3f

    aput v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v6

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->m:Landroid/graphics/Shader;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->j:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->m:Landroid/graphics/Shader;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2f
    :goto_2f
    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->q:F

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_6f

    iput v8, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->p:F

    :goto_3c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    int-to-float v5, v0

    sub-float v5, v8, v5

    int-to-float v6, v0

    sub-float v6, v8, v6

    int-to-float v7, v0

    add-float/2addr v7, v8

    int-to-float v0, v0

    add-float/2addr v0, v8

    invoke-direct {v1, v5, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->r:Z

    if-eqz v0, :cond_7c

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_68
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2f

    :cond_6f
    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-float/2addr v0, v3

    int-to-float v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v1, v5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->p:F

    goto :goto_3c

    :cond_7c
    iget v3, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->p:F

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_64
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)F
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->l:F

    return v0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;F)F
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->l:F

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->l:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 v0, 0x0

    move v6, v0

    :goto_1a
    const/4 v0, 0x6

    if-ge v6, v0, :cond_ac

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v0, v6, -0x3c

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    const v1, 0x3f060a92

    cmpl-float v1, v0, v1

    if-lez v1, :cond_70

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    const v3, 0x3f860a92

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    sget v2, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->w:F

    float-to-double v8, v2

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    sub-double v10, v0, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    double-to-float v3, v8

    iget v7, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    int-to-float v8, v7

    mul-float/2addr v3, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v4

    sub-double/2addr v8, v0

    float-to-double v12, v2

    mul-double/2addr v0, v12

    mul-double/2addr v0, v4

    sub-double v0, v8, v0

    div-double/2addr v0, v10

    double-to-float v0, v0

    int-to-float v1, v7

    mul-float v4, v0, v1

    neg-int v0, v7

    int-to-float v2, v0

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1a

    :cond_70
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v0

    iget v4, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    div-double/2addr v2, v4

    double-to-float v3, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    iget v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    int-to-double v8, v2

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v8

    div-double v0, v4, v0

    double-to-float v4, v0

    iget v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    neg-int v0, v0

    int-to-float v2, v0

    iget-object v5, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_69

    :cond_ac
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;F)F
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->j:F

    return p1
.end method

.method private g()V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->i()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$c;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private i()V
    .registers 11

    const/high16 v9, 0x40000000    # 2.0f

    const v4, 0x3f060a92

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v8, [F

    const/4 v1, 0x0

    aput v1, v0, v6

    aput v4, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$d;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView$d;-><init>(Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v1, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->t:Landroid/util/Property;

    new-array v2, v8, [F

    aput v4, v2, v6

    const v3, 0x3fa0d97c

    aput v3, v2, v7

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->u:Landroid/util/Property;

    new-array v3, v8, [F

    sget v4, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->v:F

    div-float v5, v4, v9

    neg-float v5, v5

    aput v5, v3, v6

    div-float/2addr v4, v9

    neg-float v4, v4

    const/high16 v5, 0x42f00000    # 120.0f

    sub-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->s:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public a(FF)V
    .registers 3

    iput p1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->q:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    const v0, 0x3fa0d97c

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    sget v0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->v:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->l:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->j:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->r:Z

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->n:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->j:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->l:F

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->k:F

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :goto_15
    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->n:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->r:Z

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_15
.end method

.method public f()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_9

    const/16 v0, 0x1f4

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x320

    goto :goto_8
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->n:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b(Landroid/graphics/Canvas;)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->i:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->c:I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->d:I

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kwad/sdk/contentalliance/refreshview/ShootRefreshView;->e:I

    return-void
.end method
