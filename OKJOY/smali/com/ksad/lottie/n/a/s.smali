.class public Lcom/ksad/lottie/n/a/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/b;
.implements Lcom/ksad/lottie/n/b/a$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

.field private final c:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/ShapeTrimPath;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/s;->a:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/ShapeTrimPath;->b()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/ShapeTrimPath;->e()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/s;->b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/ShapeTrimPath;->d()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/s;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/ShapeTrimPath;->a()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/s;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/content/ShapeTrimPath;->c()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/s;->e:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a$a;

    invoke-interface {v0}, Lcom/ksad/lottie/n/b/a$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method a(Lcom/ksad/lottie/n/b/a$a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 3
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

    return-void
.end method

.method public c()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->d:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->e:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method

.method public e()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->c:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method

.method f()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/s;->b:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    return-object v0
.end method
