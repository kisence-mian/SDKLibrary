.class public Lcom/qq/gdt/action/d/b/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/qq/gdt/action/d/b/j;

.field private b:Lcom/qq/gdt/action/d/b/g;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/d/b/i$a;)Lcom/qq/gdt/action/d/b/g;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i$a;->b:Lcom/qq/gdt/action/d/b/g;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/gdt/action/d/b/i$a;)I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/i$a;->c:I

    return v0
.end method

.method static synthetic c(Lcom/qq/gdt/action/d/b/i$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/gdt/action/d/b/i$a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i$a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/qq/gdt/action/d/b/i$a;)Lcom/qq/gdt/action/d/b/j;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/i$a;->a:Lcom/qq/gdt/action/d/b/j;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/qq/gdt/action/d/b/i$a;
    .registers 2

    iput p1, p0, Lcom/qq/gdt/action/d/b/i$a;->c:I

    return-object p0
.end method

.method public a(Lcom/qq/gdt/action/d/b/g;)Lcom/qq/gdt/action/d/b/i$a;
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/i$a;->b:Lcom/qq/gdt/action/d/b/g;

    return-object p0
.end method

.method public a(Lcom/qq/gdt/action/d/b/j;)Lcom/qq/gdt/action/d/b/i$a;
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/i$a;->a:Lcom/qq/gdt/action/d/b/j;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/d/b/i$a;
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/i$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/qq/gdt/action/d/b/i$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/qq/gdt/action/d/b/i$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/i$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public a()Lcom/qq/gdt/action/d/b/i;
    .registers 2

    new-instance v0, Lcom/qq/gdt/action/d/b/i;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/d/b/i;-><init>(Lcom/qq/gdt/action/d/b/i$a;)V

    return-object v0
.end method
