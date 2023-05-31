.class public Lcom/qq/gdt/action/d/b/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/d/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/d/b/g$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/gdt/action/d/b/g$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/16 v5, 0x1f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_23
    if-ge v0, v2, :cond_4e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v5, :cond_2f

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_4b

    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in header name: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/qq/gdt/action/d/b/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_4e
    if-nez p2, :cond_58

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_5d
    if-ge v0, v2, :cond_8b

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v5, :cond_69

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_88

    :cond_69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-static {v4, v5}, Lcom/qq/gdt/action/d/b/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_8b
    return-void
.end method

.method static synthetic c(Lcom/qq/gdt/action/d/b/g$a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/gdt/action/d/b/g$a;)Lcom/qq/gdt/action/d/b/h;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->d:Lcom/qq/gdt/action/d/b/h;

    return-object v0
.end method

.method static synthetic e(Lcom/qq/gdt/action/d/b/g$a;)I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/g$a;->e:I

    return v0
.end method

.method static synthetic f(Lcom/qq/gdt/action/d/b/g$a;)I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/b/g$a;->f:I

    return v0
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/h;)Lcom/qq/gdt/action/d/b/g$a;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/qq/gdt/action/d/b/g$a;->a(Ljava/lang/String;Lcom/qq/gdt/action/d/b/h;)Lcom/qq/gdt/action/d/b/g$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/d/b/g$a;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/qq/gdt/action/d/b/g$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/qq/gdt/action/d/b/h;)Lcom/qq/gdt/action/d/b/g$a;
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/d/b/g$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/gdt/action/d/b/g$a;->d:Lcom/qq/gdt/action/d/b/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/gdt/action/d/b/g$a;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/d/b/g$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/qq/gdt/action/d/b/g;
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/d/b/g$a;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/qq/gdt/action/d/b/g;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/d/b/g;-><init>(Lcom/qq/gdt/action/d/b/g$a;)V

    return-object v0
.end method
