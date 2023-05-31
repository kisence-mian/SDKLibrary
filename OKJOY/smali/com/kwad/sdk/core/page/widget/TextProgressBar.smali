.class public Lcom/kwad/sdk/core/page/widget/TextProgressBar;
.super Landroid/widget/ProgressBar;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/LinearGradient;

.field private d:Landroid/graphics/Matrix;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Landroid/graphics/Rect;

.field private l:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->isDebugLogEnable()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->f:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->f:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->f:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->j:I

    return-void
.end method

.method private setProgressText(I)V
    .registers 4

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    const/high16 v11, 0x3f800000    # 1.0f

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    if-eqz v0, :cond_ef

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1f
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_35
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v9, v0, v1

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->j:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->j:I

    add-int/2addr v0, v1

    move v8, v0

    :goto_7f
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->l:[I

    if-eqz v0, :cond_e4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v10, v0, v1

    int-to-float v1, v8

    cmpl-float v0, v10, v1

    if-ltz v0, :cond_107

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->c:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_c3

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v8

    int-to-float v3, v2

    iget-object v5, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->l:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->c:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->d:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->c:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_c3
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->c:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-float v0, v10, v1

    mul-float/2addr v0, v11

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->d:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->c:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    int-to-float v1, v8

    int-to-float v2, v9

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_ed
    .catchall {:try_start_3 .. :try_end_ed} :catchall_f4

    monitor-exit p0

    return-void

    :cond_ef
    :try_start_ef
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f4

    goto/16 :goto_1f

    :catchall_f4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f7
    :try_start_f7
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    move v8, v0

    goto/16 :goto_7f

    :cond_107
    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_10d
    .catchall {:try_start_f7 .. :try_end_10d} :catchall_f4

    goto :goto_e4
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10

    const/4 v6, -0x2

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v6, :cond_39

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->g:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->h:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_39
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v6, :cond_4b

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_4b
    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    if-eqz v0, :cond_5f

    invoke-super {p0, p2, p1}, Landroid/widget/ProgressBar;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_63

    :goto_5d
    monitor-exit p0

    return-void

    :cond_5f
    :try_start_5f
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_5d

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    goto :goto_7
.end method

.method public setDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawablePadding(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->j:I

    return-void
.end method

.method public setHasProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->f:Z

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    iput p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->g:I

    iput p3, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->h:I

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->f:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_7
.end method

.method public setTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextDimen(F)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTextDimenSp(I)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/page/widget/TextProgressBar;->e:Z

    return-void
.end method
