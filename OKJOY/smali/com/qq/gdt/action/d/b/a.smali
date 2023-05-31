.class public Lcom/qq/gdt/action/d/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/qq/gdt/action/d/b/g;

.field private final b:Lcom/qq/gdt/action/d/b/e;

.field private c:Lcom/qq/gdt/action/d/b/c;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/e;Lcom/qq/gdt/action/d/b/g;Lcom/qq/gdt/action/d/b/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/a;->b:Lcom/qq/gdt/action/d/b/e;

    iput-object p2, p0, Lcom/qq/gdt/action/d/b/a;->a:Lcom/qq/gdt/action/d/b/g;

    iput-object p3, p0, Lcom/qq/gdt/action/d/b/a;->c:Lcom/qq/gdt/action/d/b/c;

    return-void
.end method

.method private b()Lcom/qq/gdt/action/d/b/i;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/a;->c:Lcom/qq/gdt/action/d/b/c;

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/qq/gdt/action/d/b/a/a;

    invoke-direct {v0}, Lcom/qq/gdt/action/d/b/a/a;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/qq/gdt/action/d/b/a/c;

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a;->b:Lcom/qq/gdt/action/d/b/e;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qq/gdt/action/d/b/a;->a:Lcom/qq/gdt/action/d/b/g;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/qq/gdt/action/d/b/a/c;-><init>(Lcom/qq/gdt/action/d/b/e;Ljava/util/List;ILcom/qq/gdt/action/d/b/g;Lcom/qq/gdt/action/d/b/a;)V

    iget-object v1, p0, Lcom/qq/gdt/action/d/b/a;->a:Lcom/qq/gdt/action/d/b/g;

    invoke-interface {v0, v1}, Lcom/qq/gdt/action/d/b/a/b$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/d/b/i;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/d/b/a;->b()Lcom/qq/gdt/action/d/b/i;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/qq/gdt/action/d/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/a;->b:Lcom/qq/gdt/action/d/b/e;

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/d/b/a$1;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/d/b/a$1;-><init>(Lcom/qq/gdt/action/d/b/a;Lcom/qq/gdt/action/d/b/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
