.class public Lcom/ksad/lottie/model/layer/d;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 4

    return-void
.end method
