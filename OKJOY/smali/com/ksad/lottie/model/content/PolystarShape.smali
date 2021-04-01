.class public Lcom/ksad/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/model/content/PolystarShape$Type;

.field private final c:Lcom/ksad/lottie/p/h/b;

.field private final d:Lcom/ksad/lottie/p/h/m;
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

.field private final e:Lcom/ksad/lottie/p/h/b;

.field private final f:Lcom/ksad/lottie/p/h/b;

.field private final g:Lcom/ksad/lottie/p/h/b;

.field private final h:Lcom/ksad/lottie/p/h/b;

.field private final i:Lcom/ksad/lottie/p/h/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/PolystarShape$Type;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/model/content/PolystarShape$Type;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/PolystarShape;->b:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/PolystarShape;->c:Lcom/ksad/lottie/p/h/b;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/PolystarShape;->d:Lcom/ksad/lottie/p/h/m;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/PolystarShape;->e:Lcom/ksad/lottie/p/h/b;

    iput-object p6, p0, Lcom/ksad/lottie/model/content/PolystarShape;->f:Lcom/ksad/lottie/p/h/b;

    iput-object p7, p0, Lcom/ksad/lottie/model/content/PolystarShape;->g:Lcom/ksad/lottie/p/h/b;

    iput-object p8, p0, Lcom/ksad/lottie/model/content/PolystarShape;->h:Lcom/ksad/lottie/p/h/b;

    iput-object p9, p0, Lcom/ksad/lottie/model/content/PolystarShape;->i:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/n;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/n;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/PolystarShape;)V

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->f:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->h:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->g:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public e()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->i:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public f()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->c:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public g()Lcom/ksad/lottie/p/h/m;
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

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->d:Lcom/ksad/lottie/p/h/m;

    return-object v0
.end method

.method public h()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->e:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public i()Lcom/ksad/lottie/model/content/PolystarShape$Type;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/PolystarShape;->b:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method
