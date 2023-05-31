.class public Lcom/qq/gdt/action/d/e;
.super Lcom/qq/gdt/action/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/d/d",
        "<",
        "Lcom/qq/gdt/action/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field private d:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/gdt/action/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/qq/gdt/action/d/e;
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/d/e;->d:[B

    return-object p0
.end method

.method public b()Lcom/qq/gdt/action/d/c;
    .registers 4

    invoke-virtual {p0}, Lcom/qq/gdt/action/d/e;->a()V

    iget-object v0, p0, Lcom/qq/gdt/action/d/e;->c:Lcom/qq/gdt/action/d/b/g$a;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lcom/qq/gdt/action/d/b/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/gdt/action/d/e;->d:[B

    invoke-static {v1, v2}, Lcom/qq/gdt/action/d/b/h;->a(Lcom/qq/gdt/action/d/b/f;[B)Lcom/qq/gdt/action/d/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/g$a;->a(Lcom/qq/gdt/action/d/b/h;)Lcom/qq/gdt/action/d/b/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/b/g$a;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/b/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/g$a;->a()Lcom/qq/gdt/action/d/b/g;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/d/c;

    invoke-direct {v1, v0}, Lcom/qq/gdt/action/d/c;-><init>(Lcom/qq/gdt/action/d/b/g;)V

    return-object v1
.end method
