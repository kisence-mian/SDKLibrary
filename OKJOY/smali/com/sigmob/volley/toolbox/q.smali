.class Lcom/sigmob/volley/toolbox/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/volley/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/volley/q",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/toolbox/s;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/sigmob/volley/ae;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/q;Lcom/sigmob/volley/toolbox/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;",
            "Lcom/sigmob/volley/toolbox/s;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/q;->a:Lcom/sigmob/volley/q;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/q;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/q;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/q;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/volley/toolbox/q;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sigmob/volley/ae;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->d:Lcom/sigmob/volley/ae;

    return-object v0
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/q;->d:Lcom/sigmob/volley/ae;

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/s;)Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/q;->a:Lcom/sigmob/volley/q;

    invoke-virtual {v0}, Lcom/sigmob/volley/q;->q()V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
