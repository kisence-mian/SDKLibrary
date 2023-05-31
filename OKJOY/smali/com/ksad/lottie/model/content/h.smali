.class public Lcom/ksad/lottie/model/content/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/ksad/lottie/model/content/h;->c:Z

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    :cond_b
    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/ksad/lottie/model/content/h;Lcom/ksad/lottie/model/content/h;F)V
    .registers 14
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    :cond_c
    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->c()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->c()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/ksad/lottie/model/content/h;->c:Z

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curves must have the same number of control points. Shape 1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tShape 2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->d(Ljava/lang/String;)V

    :cond_5d
    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_79
    if-ge v1, v0, :cond_8a

    iget-object v2, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    new-instance v3, Lcom/ksad/lottie/p/a;

    invoke-direct {v3}, Lcom/ksad/lottie/p/a;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_88
    move v0, v1

    goto :goto_19

    :cond_8a
    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->b()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->b()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/ksad/lottie/model/content/h;->a(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_ae
    if-ltz v2, :cond_132

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/a;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/p/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->a()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->b()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->c()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ksad/lottie/p/a;->a()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ksad/lottie/p/a;->b()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v1}, Lcom/ksad/lottie/p/a;->c()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/a;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v9, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v3

    invoke-virtual {v0, v8, v3}, Lcom/ksad/lottie/p/a;->a(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/a;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/ksad/lottie/p/a;->b(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/a;

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v3

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v1, p3}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/ksad/lottie/p/a;->c(FF)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_ae

    :cond_132
    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/h;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/lottie/model/content/h;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ksad/lottie/model/content/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
