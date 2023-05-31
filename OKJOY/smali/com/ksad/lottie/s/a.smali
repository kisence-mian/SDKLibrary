.class public Lcom/ksad/lottie/s/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/ksad/lottie/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/animation/Interpolator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:F

.field public f:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:F

.field private h:F

.field public i:Landroid/graphics/PointF;

.field public j:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 9
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/d;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ksad/lottie/s/a;->g:F

    iput v0, p0, Lcom/ksad/lottie/s/a;->h:F

    iput-object v1, p0, Lcom/ksad/lottie/s/a;->i:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/ksad/lottie/s/a;->j:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    iput-object p2, p0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/ksad/lottie/s/a;->e:F

    iput-object p6, p0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/ksad/lottie/s/a;->g:F

    iput v1, p0, Lcom/ksad/lottie/s/a;->h:F

    iput-object v0, p0, Lcom/ksad/lottie/s/a;->i:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/ksad/lottie/s/a;->j:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    iput-object p1, p0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    iput v1, p0, Lcom/ksad/lottie/s/a;->e:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    if-nez v1, :cond_7

    :goto_6
    return v0

    :cond_7
    iget v1, p0, Lcom/ksad/lottie/s/a;->h:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    if-nez v1, :cond_17

    iput v0, p0, Lcom/ksad/lottie/s/a;->h:F

    :cond_14
    :goto_14
    iget v0, p0, Lcom/ksad/lottie/s/a;->h:F

    goto :goto_6

    :cond_17
    invoke-virtual {p0}, Lcom/ksad/lottie/s/a;->b()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/ksad/lottie/s/a;->e:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    invoke-virtual {v2}, Lcom/ksad/lottie/d;->d()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ksad/lottie/s/a;->h:F

    goto :goto_14
.end method

.method public a(F)Z
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/ksad/lottie/s/a;->b()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/ksad/lottie/s/a;->a()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()F
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/ksad/lottie/s/a;->g:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/ksad/lottie/s/a;->e:F

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->k()F

    move-result v0

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->a:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->d()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ksad/lottie/s/a;->g:F

    :cond_1e
    iget v0, p0, Lcom/ksad/lottie/s/a;->g:F

    goto :goto_5
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ksad/lottie/s/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
