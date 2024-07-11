.class public Lcom/sigmob/volley/toolbox/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/toolbox/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/sigmob/volley/toolbox/f$a;

.field b:I

.field final synthetic c:Lcom/sigmob/volley/toolbox/g;

.field private d:Lcom/sigmob/volley/toolbox/f;

.field private e:Lcom/sigmob/volley/toolbox/d;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/g;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 5

    iget v0, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Lcom/sigmob/volley/toolbox/g$a$1;

    invoke-direct {v0, p0}, Lcom/sigmob/volley/toolbox/g$a$1;-><init>(Lcom/sigmob/volley/toolbox/g$a;)V

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v3, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    invoke-virtual {v2, v3, v0}, Lcom/sigmob/volley/toolbox/g;->b(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->d:Lcom/sigmob/volley/toolbox/f;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/g;->a:Lcom/sigmob/volley/n;

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v1, v1, Lcom/sigmob/volley/toolbox/g;->a:Lcom/sigmob/volley/n;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g$a;->d:Lcom/sigmob/volley/toolbox/f;

    invoke-virtual {v1, v2}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    return v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/sigmob/volley/toolbox/f$a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    return-object v0
.end method

.method public f()Lcom/sigmob/volley/toolbox/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    return-object v0
.end method

.method public g()Z
    .registers 6

    iget v0, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-nez v0, :cond_17

    iput v2, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/g$a;)V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g$a;->e:Lcom/sigmob/volley/toolbox/d;

    invoke-interface {v0, v2}, Lcom/sigmob/volley/toolbox/f$a;->b(Lcom/sigmob/volley/toolbox/d;)V

    :cond_16
    return v1

    :cond_17
    const/4 v3, 0x0

    if-ne v0, v2, :cond_1b

    return v3

    :cond_1b
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1f

    return v3

    :cond_1f
    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->d:Lcom/sigmob/volley/toolbox/f;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/f;->l()V

    :cond_26
    iput v2, p0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    invoke-virtual {v0, p0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/g$a;)V

    return v1
.end method
