.class public Lcom/qq/gdt/action/d/b/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/a/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/gdt/action/d/b/a/e;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/a/b$a;)Lcom/qq/gdt/action/d/b/i;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/qq/gdt/action/d/b/a/b$a;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/qq/gdt/action/d/b/a/b$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    move v1, v2

    :goto_a
    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->b()Z

    move-result v4

    if-nez v4, :cond_3d

    iget v4, p0, Lcom/qq/gdt/action/d/b/a/e;->a:I

    if-ge v1, v4, :cond_3d

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/j;->close()V

    add-int/lit8 v1, v1, 0x1

    const-string v0, "Retry for %s, retry number = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/qq/gdt/action/d/b/g;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Lcom/qq/gdt/action/d/b/a/b$a;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    goto :goto_a

    :cond_3d
    return-object v0
.end method
