.class public Lcom/ksad/lottie/p/h/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/l;
.implements Lcom/ksad/lottie/model/content/b;


# instance fields
.field private final a:Lcom/ksad/lottie/p/h/e;

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

.field private final c:Lcom/ksad/lottie/p/h/g;

.field private final d:Lcom/ksad/lottie/p/h/b;

.field private final e:Lcom/ksad/lottie/p/h/d;

.field private final f:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    new-instance v1, Lcom/ksad/lottie/p/h/e;

    invoke-direct {v1}, Lcom/ksad/lottie/p/h/e;-><init>()V

    new-instance v2, Lcom/ksad/lottie/p/h/e;

    invoke-direct {v2}, Lcom/ksad/lottie/p/h/e;-><init>()V

    new-instance v3, Lcom/ksad/lottie/p/h/g;

    invoke-direct {v3}, Lcom/ksad/lottie/p/h/g;-><init>()V

    new-instance v4, Lcom/ksad/lottie/p/h/b;

    invoke-direct {v4}, Lcom/ksad/lottie/p/h/b;-><init>()V

    new-instance v5, Lcom/ksad/lottie/p/h/d;

    invoke-direct {v5}, Lcom/ksad/lottie/p/h/d;-><init>()V

    new-instance v6, Lcom/ksad/lottie/p/h/b;

    invoke-direct {v6}, Lcom/ksad/lottie/p/h/b;-><init>()V

    new-instance v7, Lcom/ksad/lottie/p/h/b;

    invoke-direct {v7}, Lcom/ksad/lottie/p/h/b;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ksad/lottie/p/h/l;-><init>(Lcom/ksad/lottie/p/h/e;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/g;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksad/lottie/p/h/e;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/g;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V
    .registers 8
    .param p6    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/p/h/e;",
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/ksad/lottie/p/h/g;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/d;",
            "Lcom/ksad/lottie/p/h/b;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/p/h/l;->a:Lcom/ksad/lottie/p/h/e;

    iput-object p2, p0, Lcom/ksad/lottie/p/h/l;->b:Lcom/ksad/lottie/p/h/m;

    iput-object p3, p0, Lcom/ksad/lottie/p/h/l;->c:Lcom/ksad/lottie/p/h/g;

    iput-object p4, p0, Lcom/ksad/lottie/p/h/l;->d:Lcom/ksad/lottie/p/h/b;

    iput-object p5, p0, Lcom/ksad/lottie/p/h/l;->e:Lcom/ksad/lottie/p/h/d;

    iput-object p6, p0, Lcom/ksad/lottie/p/h/l;->f:Lcom/ksad/lottie/p/h/b;

    iput-object p7, p0, Lcom/ksad/lottie/p/h/l;->g:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;)Lcom/ksad/lottie/n/a/b;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/n/b/o;
    .registers 2

    new-instance v0, Lcom/ksad/lottie/n/b/o;

    invoke-direct {v0, p0}, Lcom/ksad/lottie/n/b/o;-><init>(Lcom/ksad/lottie/p/h/l;)V

    return-object v0
.end method

.method public b()Lcom/ksad/lottie/p/h/e;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->a:Lcom/ksad/lottie/p/h/e;

    return-object v0
.end method

.method public c()Lcom/ksad/lottie/p/h/b;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->g:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/p/h/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->e:Lcom/ksad/lottie/p/h/d;

    return-object v0
.end method

.method public e()Lcom/ksad/lottie/p/h/m;
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

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->b:Lcom/ksad/lottie/p/h/m;

    return-object v0
.end method

.method public f()Lcom/ksad/lottie/p/h/b;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->d:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method public g()Lcom/ksad/lottie/p/h/g;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->c:Lcom/ksad/lottie/p/h/g;

    return-object v0
.end method

.method public h()Lcom/ksad/lottie/p/h/b;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/p/h/l;->f:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method
