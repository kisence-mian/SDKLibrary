.class public Lcom/ksad/lottie/n/b/m;
.super Lcom/ksad/lottie/n/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/a",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/graphics/PointF;

.field private final h:Lcom/ksad/lottie/n/b/a;
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

.field private final i:Lcom/ksad/lottie/n/b/a;
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


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/n/b/a;Lcom/ksad/lottie/n/b/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ksad/lottie/n/b/a;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/m;->g:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/ksad/lottie/n/b/m;->h:Lcom/ksad/lottie/n/b/a;

    iput-object p2, p0, Lcom/ksad/lottie/n/b/m;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/n/b/m;->a(F)V

    return-void
.end method


# virtual methods
.method a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/m;->g:Landroid/graphics/PointF;

    return-object v0
.end method

.method bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/m;->a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/n/b/m;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/m;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v1, p0, Lcom/ksad/lottie/n/b/m;->g:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/ksad/lottie/n/b/m;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/n/b/m;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_29
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a$a;

    invoke-interface {v0}, Lcom/ksad/lottie/n/b/a$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_40
    return-void
.end method

.method public d()Landroid/graphics/PointF;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ksad/lottie/n/b/m;->a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/m;->d()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
