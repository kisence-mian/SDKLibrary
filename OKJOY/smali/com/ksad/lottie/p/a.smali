.class public Lcom/ksad/lottie/p/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PointF;

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/p/a;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/p/a;->b:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/p/a;->c:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/a;->a:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/ksad/lottie/p/a;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/ksad/lottie/p/a;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->a:Landroid/graphics/PointF;

    return-object v0
.end method

.method public a(FF)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public b(FF)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public c()Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c(FF)V
    .registers 4

    iget-object v0, p0, Lcom/ksad/lottie/p/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method
