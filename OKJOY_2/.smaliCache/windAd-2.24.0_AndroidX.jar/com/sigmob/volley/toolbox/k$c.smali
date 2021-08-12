.class public Lcom/sigmob/volley/toolbox/k$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/toolbox/k;

.field private final b:Lcom/sigmob/volley/toolbox/k$d;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)V
    .registers 6

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$c;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sigmob/volley/toolbox/k$c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/volley/toolbox/k$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/volley/toolbox/k$c;->b:Lcom/sigmob/volley/toolbox/k$d;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k$c;)Lcom/sigmob/volley/toolbox/k$d;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/k$c;->b:Lcom/sigmob/volley/toolbox/k$d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lcom/sigmob/volley/toolbox/o;->a()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->b:Lcom/sigmob/volley/toolbox/k$d;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->b(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/k$a;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/k$a;->b(Lcom/sigmob/volley/toolbox/k$c;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->b(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_48

    :cond_25
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/k$a;

    if-eqz v0, :cond_4d

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/k$a;->b(Lcom/sigmob/volley/toolbox/k$c;)Z

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k$a;->a(Lcom/sigmob/volley/toolbox/k$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->a:Lcom/sigmob/volley/toolbox/k;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;

    move-result-object v0

    :goto_48
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k$c;->d:Ljava/lang/String;

    return-object v0
.end method
