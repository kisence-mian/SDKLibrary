.class public Lcom/qq/gdt/action/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qq/gdt/action/c/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/qq/gdt/action/c/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/c/f;

    invoke-direct {v0, p1, p2}, Lcom/qq/gdt/action/c/f;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/qq/gdt/action/c/h;->b:Lcom/qq/gdt/action/c/f;

    iget-object v0, p0, Lcom/qq/gdt/action/c/h;->b:Lcom/qq/gdt/action/c/f;

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/f;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/h;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/qq/gdt/action/c/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_2d

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/qq/gdt/action/c/h;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    if-ge v3, v1, :cond_2d

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/c/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/qq/gdt/action/c/h;->b:Lcom/qq/gdt/action/c/f;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/c/f;->a(Lcom/qq/gdt/action/c/a;)V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/a;->b()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/qq/gdt/action/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/qq/gdt/action/c/h;->b:Lcom/qq/gdt/action/c/f;

    invoke-virtual {v2, v0}, Lcom/qq/gdt/action/c/f;->b(Lcom/qq/gdt/action/c/a;)Z

    goto :goto_4

    :cond_23
    return-void
.end method
