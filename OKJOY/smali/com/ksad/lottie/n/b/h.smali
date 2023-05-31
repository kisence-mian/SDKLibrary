.class public Lcom/ksad/lottie/n/b/h;
.super Lcom/ksad/lottie/s/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/s/a",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private k:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/d;Lcom/ksad/lottie/s/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/d;",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p2, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    iget-object v3, p2, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    iget-object v4, p2, Lcom/ksad/lottie/s/a;->d:Landroid/view/animation/Interpolator;

    iget v5, p2, Lcom/ksad/lottie/s/a;->e:F

    iget-object v6, p2, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ksad/lottie/s/a;-><init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iget-object v2, p0, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_40

    iget-object v0, p0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_40

    check-cast v0, Landroid/graphics/PointF;

    move-object v1, v2

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_29
    iget-object v1, p0, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3f

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p2, Lcom/ksad/lottie/s/a;->i:Landroid/graphics/PointF;

    iget-object v3, p2, Lcom/ksad/lottie/s/a;->j:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/h;->k:Landroid/graphics/Path;

    :cond_3f
    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method d()Landroid/graphics/Path;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/h;->k:Landroid/graphics/Path;

    return-object v0
.end method
