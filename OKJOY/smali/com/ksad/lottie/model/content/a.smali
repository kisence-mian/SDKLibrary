.class public Lcom/ksad/lottie/model/content/a;
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

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/f;Z)V
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
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/a;->b:Lcom/ksad/lottie/p/h/m;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/a;->c:Lcom/ksad/lottie/p/h/f;

    iput-boolean p4, p0, Lcom/ksad/lottie/model/content/a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/e;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/e;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/m;
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

    iget-object v0, p0, Lcom/ksad/lottie/model/content/a;->b:Lcom/ksad/lottie/p/h/m;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/a;->c:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/lottie/model/content/a;->d:Z

    return v0
.end method
