.class public Lcom/qq/gdt/action/d/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/d/b/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/d/b/j;

.field private final b:Lcom/qq/gdt/action/d/b/g;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/d/b/i$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/i$a;->a(Lcom/qq/gdt/action/d/b/i$a;)Lcom/qq/gdt/action/d/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/i;->b:Lcom/qq/gdt/action/d/b/g;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/i$a;->b(Lcom/qq/gdt/action/d/b/i$a;)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/d/b/i;->c:I

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/i$a;->c(Lcom/qq/gdt/action/d/b/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/i;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/i$a;->d(Lcom/qq/gdt/action/d/b/i$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/i;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/qq/gdt/action/d/b/i$a;->e(Lcom/qq/gdt/action/d/b/i$a;)Lcom/qq/gdt/action/d/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/i;->a:Lcom/qq/gdt/action/d/b/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/d/b/g;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i;->b:Lcom/qq/gdt/action/d/b/g;

    return-object v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lcom/qq/gdt/action/d/b/i;->c:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/i;->c:I

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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i;->e:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/qq/gdt/action/d/b/j;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i;->a:Lcom/qq/gdt/action/d/b/j;

    return-object v0
.end method
