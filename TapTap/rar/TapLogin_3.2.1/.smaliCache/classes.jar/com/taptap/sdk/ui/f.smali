.class Lcom/taptap/sdk/ui/f;
.super Ljava/lang/Object;
.source "BlockManager.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/ui/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    .line 7
    instance-of v0, p1, Lcom/taptap/sdk/ui/i;

    if-eqz v0, :cond_11

    .line 8
    iput-object p1, p0, Lcom/taptap/sdk/ui/f;->b:Landroid/app/Activity;

    return-void

    .line 10
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity must be implements IBlockHost"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->b:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lcom/taptap/sdk/ui/d;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-object p0
.end method


# virtual methods
.method public a(ILcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/ui/f;->a(Landroid/view/ViewGroup;Lcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "this Block has been added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8
    invoke-virtual {p1}, Lcom/taptap/sdk/ui/d;->e()V

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/ui/d;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/taptap/sdk/ui/d;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/ui/d;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(ILcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/ui/d;

    .line 3
    invoke-virtual {v0}, Lcom/taptap/sdk/ui/d;->e()V

    .line 5
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/ui/f;->a(ILcom/taptap/sdk/ui/d;)Lcom/taptap/sdk/ui/f;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/sdk/ui/f;->a:Ljava/util/List;

    return-void
.end method
