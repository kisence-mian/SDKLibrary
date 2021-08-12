.class Lcom/sigmob/volley/toolbox/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/volley/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/volley/m<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/volley/toolbox/k$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/sigmob/volley/t;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/m;Lcom/sigmob/volley/toolbox/k$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/m<",
            "*>;",
            "Lcom/sigmob/volley/toolbox/k$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/k$a;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$a;->a:Lcom/sigmob/volley/m;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/k$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/volley/toolbox/k$a;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/k$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/sigmob/volley/t;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$a;->d:Lcom/sigmob/volley/t;

    return-object v0
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$a;->d:Lcom/sigmob/volley/t;

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/k$c;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/k$c;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/k$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/k$a;->a:Lcom/sigmob/volley/m;

    invoke-virtual {p1}, Lcom/sigmob/volley/m;->l()V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
