.class public Lcom/ksad/lottie/model/content/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/model/content/GradientType;

.field private final c:Lcom/ksad/lottie/p/h/c;

.field private final d:Lcom/ksad/lottie/p/h/d;

.field private final e:Lcom/ksad/lottie/p/h/f;

.field private final f:Lcom/ksad/lottie/p/h/f;

.field private final g:Lcom/ksad/lottie/p/h/b;

.field private final h:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

.field private final i:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/GradientType;Lcom/ksad/lottie/p/h/c;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/ksad/lottie/p/h/b;)V
    .registers 13
    .param p12    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/model/content/GradientType;",
            "Lcom/ksad/lottie/p/h/c;",
            "Lcom/ksad/lottie/p/h/d;",
            "Lcom/ksad/lottie/p/h/f;",
            "Lcom/ksad/lottie/p/h/f;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/e;->b:Lcom/ksad/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/e;->c:Lcom/ksad/lottie/p/h/c;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/e;->d:Lcom/ksad/lottie/p/h/d;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/e;->e:Lcom/ksad/lottie/p/h/f;

    iput-object p6, p0, Lcom/ksad/lottie/model/content/e;->f:Lcom/ksad/lottie/p/h/f;

    iput-object p7, p0, Lcom/ksad/lottie/model/content/e;->g:Lcom/ksad/lottie/p/h/b;

    iput-object p8, p0, Lcom/ksad/lottie/model/content/e;->h:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p9, p0, Lcom/ksad/lottie/model/content/e;->i:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    iput p10, p0, Lcom/ksad/lottie/model/content/e;->j:F

    iput-object p11, p0, Lcom/ksad/lottie/model/content/e;->k:Ljava/util/List;

    iput-object p12, p0, Lcom/ksad/lottie/model/content/e;->l:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->h:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/h;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/h;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/e;)V

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/b;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->l:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->f:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/c;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->c:Lcom/ksad/lottie/p/h/c;

    return-object v0
.end method

.method public e()Lcom/ksad/lottie/model/content/GradientType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->b:Lcom/ksad/lottie/model/content/GradientType;

    return-object v0
.end method

.method public f()Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->i:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->k:Ljava/util/List;

    return-object v0
.end method

.method public h()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/content/e;->j:F

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/ksad/lottie/p/h/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->d:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method

.method public k()Lcom/ksad/lottie/p/h/f;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->e:Lcom/ksad/lottie/p/h/f;

    return-object v0
.end method

.method public l()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/e;->g:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method
