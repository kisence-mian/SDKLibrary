.class public Lcom/ksad/lottie/p/h/f;
.super Lcom/ksad/lottie/p/h/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/p/h/n",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/p/h/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/n/b/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/n/b/j;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/n;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method
