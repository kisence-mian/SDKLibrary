.class public Lcom/ksad/lottie/model/content/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/p/h/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ksad/lottie/p/h/f;

.field private final d:Lcom/ksad/lottie/p/h/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/ksad/lottie/p/h/f;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/f;->b:Lcom/ksad/lottie/p/h/m;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/f;->c:Lcom/ksad/lottie/p/h/f;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/f;->d:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/o;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/o;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/f;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/f;->d:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/f;->b:Lcom/ksad/lottie/p/h/m;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/f;->c:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/f;->b:Lcom/ksad/lottie/p/h/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/content/f;->c:Lcom/ksad/lottie/p/h/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
