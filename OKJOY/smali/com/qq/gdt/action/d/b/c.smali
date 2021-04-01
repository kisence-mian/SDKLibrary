.class public Lcom/qq/gdt/action/d/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/d/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/d/b/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/d/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/c$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/c;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/c$a;->a(Lcom/qq/gdt/action/d/b/c$a;)Lcom/qq/gdt/action/d/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/c;->a:Lcom/qq/gdt/action/d/b/d;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/c$a;->b(Lcom/qq/gdt/action/d/b/c$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/d/b/k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/a;
    .registers 5

    new-instance v0, Lcom/qq/gdt/action/d/b/a;

    new-instance v1, Lcom/qq/gdt/action/d/b/e;

    iget-object v2, p0, Lcom/qq/gdt/action/d/b/c;->a:Lcom/qq/gdt/action/d/b/d;

    invoke-direct {v1, v2}, Lcom/qq/gdt/action/d/b/e;-><init>(Lcom/qq/gdt/action/d/b/d;)V

    invoke-direct {v0, v1, p1, p0}, Lcom/qq/gdt/action/d/b/a;-><init>(Lcom/qq/gdt/action/d/b/e;Lcom/qq/gdt/action/d/b/g;Lcom/qq/gdt/action/d/b/c;)V

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/d/b/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/c;->b:Ljava/util/List;

    return-object v0
.end method
