.class public Lcom/ksad/lottie/model/layer/e;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# instance fields
.field private final w:Lcom/ksad/lottie/n/a/c;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    new-instance v0, Lcom/ksad/lottie/model/content/j;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->l()Ljava/util/List;

    move-result-object v1

    const-string v2, "__container"

    invoke-direct {v0, v2, v1}, Lcom/ksad/lottie/model/content/j;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lcom/ksad/lottie/n/a/c;

    invoke-direct {v1, p1, p0, v0}, Lcom/ksad/lottie/n/a/c;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/j;)V

    iput-object v1, p0, Lcom/ksad/lottie/model/layer/e;->w:Lcom/ksad/lottie/n/a/c;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/e;->w:Lcom/ksad/lottie/n/a/c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ksad/lottie/n/a/c;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/e;->w:Lcom/ksad/lottie/n/a/c;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/ksad/lottie/n/a/c;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/e;->w:Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksad/lottie/n/a/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
