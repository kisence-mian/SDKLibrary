.class public Lcom/ksad/lottie/n/a/r;
.super Lcom/ksad/lottie/n/a/a;
.source ""


# instance fields
.field private final n:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/ShapeStroke;)V
    .registers 14

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->a()Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->d()Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->f()F

    move-result v5

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->h()Lcom/ksad/lottie/p/h/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->i()Lcom/ksad/lottie/p/h/b;

    move-result-object v7

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->e()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->c()Lcom/ksad/lottie/p/h/b;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/ksad/lottie/n/a/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Ljava/util/List;Lcom/ksad/lottie/p/h/b;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->g()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/ShapeStroke;->b()Lcom/ksad/lottie/p/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/a;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/r;->n:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/r;->n:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/r;->n:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 6

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/r;->n:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/r;->o:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_20
    invoke-super {p0, p1, p2, p3}, Lcom/ksad/lottie/n/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
