.class public Lcom/qq/gdt/action/d/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/d/b/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/qq/gdt/action/d/b/h;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/g$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->a(Lcom/qq/gdt/action/d/b/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->b(Lcom/qq/gdt/action/d/b/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->c(Lcom/qq/gdt/action/d/b/g$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->d(Lcom/qq/gdt/action/d/b/g$a;)Lcom/qq/gdt/action/d/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g;->d:Lcom/qq/gdt/action/d/b/h;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->e(Lcom/qq/gdt/action/d/b/g$a;)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/d/b/g;->e:I

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/g$a;->f(Lcom/qq/gdt/action/d/b/g$a;)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/d/b/g;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/g;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/g;->f:I

    return v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g;->c:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/qq/gdt/action/d/b/h;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g;->d:Lcom/qq/gdt/action/d/b/h;

    return-object v0
.end method
