.class public abstract Lcom/ksad/lottie/n/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/n/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/ksad/lottie/s/a",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private d:F

.field protected e:Lcom/ksad/lottie/s/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/s/b",
            "<TA;>;"
        }
    .end annotation
.end field

.field private f:Lcom/ksad/lottie/s/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/s/a",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ksad/lottie/s/a",
            "<TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/n/b/a;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksad/lottie/n/b/a;->d:F

    iput-object p1, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    return-void
.end method

.method private g()Lcom/ksad/lottie/s/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/s/a",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->f:Lcom/ksad/lottie/s/a;

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/ksad/lottie/n/b/a;->d:F

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/s/a;->a(F)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->f:Lcom/ksad/lottie/s/a;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    iget v1, p0, Lcom/ksad/lottie/n/b/a;->d:F

    invoke-virtual {v0}, Lcom/ksad/lottie/s/a;->b()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_41

    iget-object v1, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2f
    if-ltz v1, :cond_41

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    iget v2, p0, Lcom/ksad/lottie/n/b/a;->d:F

    invoke-virtual {v0, v2}, Lcom/ksad/lottie/s/a;->a(F)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_41
    iput-object v0, p0, Lcom/ksad/lottie/n/b/a;->f:Lcom/ksad/lottie/s/a;

    goto :goto_e

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f
.end method

.method private h()F
    .registers 3

    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->g()Lcom/ksad/lottie/s/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/s/a;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, v0, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->b()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_b
.end method

.method private i()F
    .registers 3
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/s/a;->b()F

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method a()F
    .registers 3
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/s/a;->a()F

    move-result v0

    goto :goto_a
.end method

.method abstract a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public a(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->i()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_13

    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->i()F

    move-result p1

    :cond_c
    :goto_c
    iget v0, p0, Lcom/ksad/lottie/n/b/a;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_20

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->a()F

    move-result p1

    goto :goto_c

    :cond_20
    iput p1, p0, Lcom/ksad/lottie/n/b/a;->d:F

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->e()V

    goto :goto_12
.end method

.method public a(Lcom/ksad/lottie/n/b/a$a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()F
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/ksad/lottie/n/b/a;->b:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->g()Lcom/ksad/lottie/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksad/lottie/s/a;->c()Z

    move-result v2

    if-nez v2, :cond_5

    iget v0, p0, Lcom/ksad/lottie/n/b/a;->d:F

    invoke-virtual {v1}, Lcom/ksad/lottie/s/a;->b()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/ksad/lottie/s/a;->a()F

    move-result v2

    invoke-virtual {v1}, Lcom/ksad/lottie/s/a;->b()F

    move-result v1

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    goto :goto_5
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/n/b/a;->d:F

    return v0
.end method

.method public d()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->g()Lcom/ksad/lottie/s/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/ksad/lottie/n/b/a;->h()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a$a;

    invoke-interface {v0}, Lcom/ksad/lottie/n/b/a$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/n/b/a;->b:Z

    return-void
.end method
