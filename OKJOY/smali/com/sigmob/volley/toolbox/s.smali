.class public Lcom/sigmob/volley/toolbox/s;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/p;

.field private final b:Lcom/sigmob/volley/toolbox/t;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/toolbox/p;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/s;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/s;->e:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sigmob/volley/toolbox/s;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/volley/toolbox/s;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/volley/toolbox/s;->b:Lcom/sigmob/volley/toolbox/t;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/s;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/s;)Lcom/sigmob/volley/toolbox/t;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->b:Lcom/sigmob/volley/toolbox/t;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lcom/sigmob/volley/toolbox/x;->a()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->b:Lcom/sigmob/volley/toolbox/t;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->b(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/q;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/q;->b(Lcom/sigmob/volley/toolbox/s;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->b(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_2a
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->a(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/q;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/q;->b(Lcom/sigmob/volley/toolbox/s;)Z

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/q;->a(Lcom/sigmob/volley/toolbox/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->a:Lcom/sigmob/volley/toolbox/p;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/p;->a(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/s;->d:Ljava/lang/String;

    return-object v0
.end method
