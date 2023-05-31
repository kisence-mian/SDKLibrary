.class public Lcom/ksad/lottie/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;,
        Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ksad/lottie/p/h/a;

.field private final e:Lcom/ksad/lottie/p/h/d;

.field private final f:Lcom/ksad/lottie/p/h/b;

.field private final g:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

.field private final h:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

.field private final i:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/b;Ljava/util/List;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;F)V
    .registers 10
    .param p2    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/h/b;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;",
            "Lcom/ksad/lottie/p/h/a;",
            "Lcom/ksad/lottie/p/h/d;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->b:Lcom/ksad/lottie/p/h/b;

    iput-object p3, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->d:Lcom/ksad/lottie/p/h/a;

    iput-object p5, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->e:Lcom/ksad/lottie/p/h/d;

    iput-object p6, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->f:Lcom/ksad/lottie/p/h/b;

    iput-object p7, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->g:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p8, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->h:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    iput p9, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->i:F

    return-void
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->g:Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4

    new-instance v0, Lcom/ksad/lottie/n/a/r;

    invoke-direct {v0, p1, p2, p0}, Lcom/ksad/lottie/n/a/r;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/ShapeStroke;)V

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/a;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->d:Lcom/ksad/lottie/p/h/a;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->b:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->h:Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public e()Ljava/util/List;
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

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->i:F

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/ksad/lottie/p/h/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->e:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method

.method public i()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/content/ShapeStroke;->f:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method
