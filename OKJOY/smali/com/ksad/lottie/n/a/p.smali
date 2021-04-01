.class public Lcom/ksad/lottie/n/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/d;
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/a/i;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/ksad/lottie/f;

.field private final d:Lcom/ksad/lottie/model/layer/a;

.field private final e:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/ksad/lottie/n/b/o;

.field private h:Lcom/ksad/lottie/n/a/c;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/p;->c:Lcom/ksad/lottie/f;

    iput-object p2, p0, Lcom/ksad/lottie/n/a/p;->d:Lcom/ksad/lottie/model/layer/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/g;->b()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/g;->a()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->e:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/g;->c()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->f:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/g;->d()Lcom/ksad/lottie/p/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/l;->a()Lcom/ksad/lottie/n/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p2}, Lcom/ksad/lottie/n/b/o;->a(Lcom/ksad/lottie/model/layer/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/o;->a(Lcom/ksad/lottie/n/b/a$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 13

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->d()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v3, v0, v4

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v4, v0, v4

    float-to-int v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_41
    if-ltz v0, :cond_69

    iget-object v5, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    int-to-float v7, v0

    add-float v8, v7, v2

    invoke-virtual {v6, v8}, Lcom/ksad/lottie/n/b/o;->a(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float v6, v7, v1

    invoke-static {v3, v4, v6}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    iget-object v7, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/ksad/lottie/n/a/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_41

    :cond_69
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/ksad/lottie/n/a/c;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/ksad/lottie/n/a/c;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/ListIterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_16

    :cond_27
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Lcom/ksad/lottie/n/a/c;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/p;->c:Lcom/ksad/lottie/f;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/p;->d:Lcom/ksad/lottie/model/layer/a;

    const-string v3, "Repeater"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/n/a/c;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;)V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    goto :goto_4
.end method

.method public b()Landroid/graphics/Path;
    .registers 7

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->h:Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->b()Landroid/graphics/Path;

    move-result-object v1

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_3f

    iget-object v2, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/p;->g:Lcom/ksad/lottie/n/b/o;

    int-to-float v5, v0

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/ksad/lottie/n/b/o;->a(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/ksad/lottie/n/a/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3f
    iget-object v0, p0, Lcom/ksad/lottie/n/a/p;->b:Landroid/graphics/Path;

    return-object v0
.end method
