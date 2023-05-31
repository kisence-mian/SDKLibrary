.class public Lcom/qq/gdt/action/d/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/a/b$a;)Lcom/qq/gdt/action/d/b/i;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/qq/gdt/action/d/b/a/c;

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/a/c;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/a/c;->b()Lcom/qq/gdt/action/d/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/d/b/e;->a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i;

    move-result-object v0

    return-object v0
.end method
