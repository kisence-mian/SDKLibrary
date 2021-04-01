.class public Lcom/ksad/lottie/p/h/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/p/h/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/p/h/m",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ksad/lottie/s/a;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/ksad/lottie/s/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/p/h/e;->a:Ljava/util/List;

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/h/e;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ksad/lottie/p/h/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/s/a;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/ksad/lottie/n/b/j;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/e;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/j;-><init>(Ljava/util/List;)V

    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/ksad/lottie/n/b/i;

    iget-object v1, p0, Lcom/ksad/lottie/p/h/e;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/n/b/i;-><init>(Ljava/util/List;)V

    goto :goto_16
.end method
