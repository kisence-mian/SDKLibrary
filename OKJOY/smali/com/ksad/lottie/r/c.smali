.class public Lcom/ksad/lottie/r/c;
.super Lcom/ksad/lottie/r/a;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private c:F

.field private d:Z

.field private e:J

.field private f:F

.field private g:I

.field private h:F

.field private i:F

.field private j:Lcom/ksad/lottie/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected k:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ksad/lottie/r/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ksad/lottie/r/c;->c:F

    iput-boolean v2, p0, Lcom/ksad/lottie/r/c;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksad/lottie/r/c;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksad/lottie/r/c;->f:F

    iput v2, p0, Lcom/ksad/lottie/r/c;->g:I

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/ksad/lottie/r/c;->h:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/ksad/lottie/r/c;->i:F

    iput-boolean v2, p0, Lcom/ksad/lottie/r/c;->k:Z

    return-void
.end method

.method private o()F
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_8

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->g()F

    move-result v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v0

    iget v1, p0, Lcom/ksad/lottie/r/c;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_7
.end method

.method private p()Z
    .registers 3

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private q()V
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    iget v1, p0, Lcom/ksad/lottie/r/c;->h:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_13

    iget v1, p0, Lcom/ksad/lottie/r/c;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/ksad/lottie/r/c;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ksad/lottie/r/c;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/ksad/lottie/r/c;->c:F

    return-void
.end method

.method public a(I)V
    .registers 5

    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v0

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksad/lottie/r/c;->e:J

    invoke-virtual {p0}, Lcom/ksad/lottie/r/a;->c()V

    goto :goto_7
.end method

.method public a(II)V
    .registers 7

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_27

    const v0, -0x800001

    :goto_7
    iget-object v1, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v1, :cond_2c

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_e
    int-to-float v2, p1

    invoke-static {v2, v0, v1}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v3

    iput v3, p0, Lcom/ksad/lottie/r/c;->h:F

    int-to-float v3, p2

    invoke-static {v3, v0, v1}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/ksad/lottie/r/c;->i:F

    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-static {v0, v2, v3}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->a(I)V

    return-void

    :cond_27
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    goto :goto_7

    :cond_2c
    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    goto :goto_e
.end method

.method public a(Lcom/ksad/lottie/d;)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_5
    iput-object p1, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/ksad/lottie/r/c;->h:F

    invoke-virtual {p1}, Lcom/ksad/lottie/d;->k()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/ksad/lottie/r/c;->i:F

    invoke-virtual {p1}, Lcom/ksad/lottie/d;->e()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ksad/lottie/r/c;->a(II)V

    :goto_22
    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->a(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksad/lottie/r/c;->e:J

    return-void

    :cond_2f
    const/4 v0, 0x0

    goto :goto_5

    :cond_31
    invoke-virtual {p1}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/ksad/lottie/r/c;->a(II)V

    goto :goto_22
.end method

.method public b(I)V
    .registers 3

    iget v0, p0, Lcom/ksad/lottie/r/c;->h:F

    float-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/ksad/lottie/r/c;->a(II)V

    return-void
.end method

.method public c(I)V
    .registers 3

    iget v0, p0, Lcom/ksad/lottie/r/c;->i:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/ksad/lottie/r/c;->a(II)V

    return-void
.end method

.method protected c(Z)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/r/c;->k:Z

    :cond_c
    return-void
.end method

.method public cancel()V
    .registers 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/ksad/lottie/r/a;->a()V

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->m()V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/ksad/lottie/r/c;->h:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/ksad/lottie/r/c;->i:F

    return-void
.end method

.method public doFrame(J)V
    .registers 9

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->l()V

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/ksad/lottie/r/c;->e:J

    sub-long v0, v2, v0

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->o()F

    move-result v4

    long-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v4

    if-eqz v4, :cond_25

    neg-float v0, v0

    :cond_25
    add-float/2addr v0, v1

    iput v0, p0, Lcom/ksad/lottie/r/c;->f:F

    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v1

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/ksad/lottie/r/e;->b(FFF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v4

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/ksad/lottie/r/e;->a(FFF)F

    move-result v1

    iput v1, p0, Lcom/ksad/lottie/r/c;->f:F

    iput-wide v2, p0, Lcom/ksad/lottie/r/c;->e:J

    invoke-virtual {p0}, Lcom/ksad/lottie/r/a;->c()V

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_72

    iget v0, p0, Lcom/ksad/lottie/r/c;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    if-lt v0, v1, :cond_72

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v0

    iput v0, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->m()V

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/a;->a(Z)V

    :cond_6e
    :goto_6e
    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->q()V

    goto :goto_d

    :cond_72
    invoke-virtual {p0}, Lcom/ksad/lottie/r/a;->b()V

    iget v0, p0, Lcom/ksad/lottie/r/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksad/lottie/r/c;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8e

    iget-boolean v0, p0, Lcom/ksad/lottie/r/c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/r/c;->d:Z

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->n()V

    :goto_8b
    iput-wide v2, p0, Lcom/ksad/lottie/r/c;->e:J

    goto :goto_6e

    :cond_8e
    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v0

    :goto_98
    iput v0, p0, Lcom/ksad/lottie/r/c;->f:F

    goto :goto_8b

    :cond_9b
    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v0

    goto :goto_98
.end method

.method public e()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->m()V

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/a;->a(Z)V

    return-void
.end method

.method public f()F
    .registers 4
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v1

    iget-object v2, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    invoke-virtual {v2}, Lcom/ksad/lottie/d;->k()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_5
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    return v0
.end method

.method public getAnimatedFraction()F
    .registers 4
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v0

    iget v1, p0, Lcom/ksad/lottie/r/c;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v1

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_5

    :cond_1e
    iget v0, p0, Lcom/ksad/lottie/r/c;->f:F

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v1

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_5
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    invoke-virtual {v0}, Lcom/ksad/lottie/d;->c()F

    move-result v0

    float-to-long v0, v0

    goto :goto_6
.end method

.method public h()F
    .registers 4

    iget-object v1, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/ksad/lottie/r/c;->i:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v0, v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->e()F

    move-result v0

    goto :goto_5
.end method

.method public i()F
    .registers 4

    iget-object v1, p0, Lcom/ksad/lottie/r/c;->j:Lcom/ksad/lottie/d;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/ksad/lottie/r/c;->h:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v0, v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    goto :goto_5
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/lottie/r/c;->k:Z

    return v0
.end method

.method public j()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/r/c;->c:F

    return v0
.end method

.method public k()V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/r/c;->k:Z

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/a;->b(Z)V

    invoke-direct {p0}, Lcom/ksad/lottie/r/c;->p()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->h()F

    move-result v0

    :goto_14
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->a(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksad/lottie/r/c;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksad/lottie/r/c;->g:I

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->l()V

    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->i()F

    move-result v0

    goto :goto_14
.end method

.method protected l()V
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->c(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_11
    return-void
.end method

.method protected m()V
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->c(Z)V

    return-void
.end method

.method public n()V
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->j()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/r/c;->a(F)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/ksad/lottie/r/c;->d:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/r/c;->d:Z

    invoke-virtual {p0}, Lcom/ksad/lottie/r/c;->n()V

    :cond_10
    return-void
.end method
