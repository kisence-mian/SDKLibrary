.class public Lcom/ksad/lottie/n/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/b/a$a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Lcom/ksad/lottie/f;

.field private final c:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/ksad/lottie/n/a/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/k;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/k;->a()Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/q;->b:Lcom/ksad/lottie/f;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/k;->b()Lcom/ksad/lottie/p/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/h;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/q;->c:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/q;->d:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->b:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/q;->c()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/s;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->f()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_23

    iput-object v0, p0, Lcom/ksad/lottie/n/a/q;->e:Lcom/ksad/lottie/n/a/s;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->e:Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 3

    iget-boolean v0, p0, Lcom/ksad/lottie/n/a/q;->d:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/q;->e:Lcom/ksad/lottie/n/a/s;

    invoke-static {v0, v1}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;Lcom/ksad/lottie/n/a/s;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/q;->d:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/q;->a:Landroid/graphics/Path;

    goto :goto_6
.end method
