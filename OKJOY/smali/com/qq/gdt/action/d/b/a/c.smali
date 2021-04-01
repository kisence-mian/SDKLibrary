.class public Lcom/qq/gdt/action/d/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/a/b$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/d/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Lcom/qq/gdt/action/d/b/g;

.field private final e:Lcom/qq/gdt/action/d/b/e;

.field private final f:Lcom/qq/gdt/action/d/b/a;


# direct methods
.method public constructor <init>(Lcom/qq/gdt/action/d/b/e;Ljava/util/List;ILcom/qq/gdt/action/d/b/g;Lcom/qq/gdt/action/d/b/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/gdt/action/d/b/e;",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/d/b/a/b;",
            ">;I",
            "Lcom/qq/gdt/action/d/b/g;",
            "Lcom/qq/gdt/action/d/b/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/a/c;->e:Lcom/qq/gdt/action/d/b/e;

    iput-object p2, p0, Lcom/qq/gdt/action/d/b/a/c;->a:Ljava/util/List;

    iput p3, p0, Lcom/qq/gdt/action/d/b/a/c;->b:I

    iput-object p4, p0, Lcom/qq/gdt/action/d/b/a/c;->d:Lcom/qq/gdt/action/d/b/g;

    iput-object p5, p0, Lcom/qq/gdt/action/d/b/a/c;->f:Lcom/qq/gdt/action/d/b/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/d/b/g;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/a/c;->d:Lcom/qq/gdt/action/d/b/g;

    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/qq/gdt/action/d/b/a/c;->b:I

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget v0, p0, Lcom/qq/gdt/action/d/b/a/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/gdt/action/d/b/a/c;->c:I

    new-instance v0, Lcom/qq/gdt/action/d/b/a/c;

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a/c;->e:Lcom/qq/gdt/action/d/b/e;

    iget-object v2, p0, Lcom/qq/gdt/action/d/b/a/c;->a:Ljava/util/List;

    iget v3, p0, Lcom/qq/gdt/action/d/b/a/c;->b:I

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/qq/gdt/action/d/b/a/c;->f:Lcom/qq/gdt/action/d/b/a;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/qq/gdt/action/d/b/a/c;-><init>(Lcom/qq/gdt/action/d/b/e;Ljava/util/List;ILcom/qq/gdt/action/d/b/g;Lcom/qq/gdt/action/d/b/a;)V

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a/c;->a:Ljava/util/List;

    iget v2, p0, Lcom/qq/gdt/action/d/b/a/c;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/d/b/a/b;

    invoke-interface {v1, v0}, Lcom/qq/gdt/action/d/b/a/b;->a(Lcom/qq/gdt/action/d/b/a/b$a;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v2

    if-nez v2, :cond_7a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    return-object v0
.end method

.method public b()Lcom/qq/gdt/action/d/b/e;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/a/c;->e:Lcom/qq/gdt/action/d/b/e;

    return-object v0
.end method
