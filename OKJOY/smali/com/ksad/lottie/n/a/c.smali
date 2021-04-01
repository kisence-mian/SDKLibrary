.class public Lcom/ksad/lottie/n/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/d;
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/p/e;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/f;

.field private f:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ksad/lottie/n/b/o;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/j;)V
    .registers 10

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/ksad/lottie/n/a/c;->a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/n/a/c;->a(Ljava/util/List;)Lcom/ksad/lottie/p/h/l;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/n/a/c;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;)V

    return-void
.end method

.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Ljava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;)V
    .registers 10
    .param p5    # Lcom/ksad/lottie/p/h/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/f;",
            "Lcom/ksad/lottie/model/layer/a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Lcom/ksad/lottie/p/h/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/c;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/c;->e:Lcom/ksad/lottie/f;

    iput-object p4, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    if-eqz p5, :cond_2e

    invoke-virtual {p5}, Lcom/ksad/lottie/p/h/l;->a()Lcom/ksad/lottie/n/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p2}, Lcom/ksad/lottie/n/b/o;->a(Lcom/ksad/lottie/model/layer/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/o;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3a
    if-ltz v1, :cond_4f

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v3, v0, Lcom/ksad/lottie/n/a/i;

    if-eqz v3, :cond_4b

    check-cast v0, Lcom/ksad/lottie/n/a/i;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3a

    :cond_4f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_56
    if-ltz v1, :cond_6d

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/i;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p4, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/ksad/lottie/n/a/i;->a(Ljava/util/ListIterator;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_56

    :cond_6d
    return-void
.end method

.method static a(Ljava/util/List;)Lcom/ksad/lottie/p/h/l;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/b;",
            ">;)",
            "Lcom/ksad/lottie/p/h/l;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/b;

    instance-of v2, v0, Lcom/ksad/lottie/p/h/l;

    if-eqz v2, :cond_15

    check-cast v0, Lcom/ksad/lottie/p/h/l;

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/f;",
            "Lcom/ksad/lottie/model/layer/a;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/b;

    invoke-interface {v0, p0, p1}, Lcom/ksad/lottie/model/content/b;->a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_24
    return-object v2
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->e:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 7

    const/high16 v2, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    mul-float/2addr v0, v2

    float-to-int p3, v0

    :cond_2d
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_36
    if-ltz v1, :cond_4d

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/ksad/lottie/n/a/d;

    if-eqz v2, :cond_49

    check-cast v0, Lcom/ksad/lottie/n/a/d;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v2, p3}, Lcom/ksad/lottie/n/a/d;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_49
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_36

    :cond_4d
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_13
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_21
    if-ltz v1, :cond_73

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/d;

    if-eqz v2, :cond_43

    check-cast v0, Lcom/ksad/lottie/n/a/d;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-interface {v0, v2, v3}, Lcom/ksad/lottie/n/a/d;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_43
    :goto_43
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_21

    :cond_47
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/ksad/lottie/n/a/c;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_43

    :cond_73
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 8
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1c
    if-ltz v1, :cond_37

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    iget-object v3, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/ksad/lottie/n/a/b;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1c

    :cond_37
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_12
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_20
    if-ltz v1, :cond_3f

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/m;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/ksad/lottie/n/a/c;->b:Landroid/graphics/Path;

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_3b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_20

    :cond_3f
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->b:Landroid/graphics/Path;

    return-object v0
.end method

.method c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->f:Ljava/util/List;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/c;->f:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/m;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/ksad/lottie/n/a/c;->f:Ljava/util/List;

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_2c
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->f:Ljava/util/List;

    return-object v0
.end method

.method d()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->g:Lcom/ksad/lottie/n/b/o;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->b()Landroid/graphics/Matrix;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/c;->a:Landroid/graphics/Matrix;

    goto :goto_8
.end method
