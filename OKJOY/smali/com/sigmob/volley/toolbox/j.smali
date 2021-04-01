.class public Lcom/sigmob/volley/toolbox/j;
.super Ljava/lang/Object;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4


# instance fields
.field a:Lcom/sigmob/volley/toolbox/h;

.field b:I

.field final synthetic h:Lcom/sigmob/volley/toolbox/i;

.field private i:Lcom/sigmob/volley/toolbox/g;

.field private j:Lcom/sigmob/volley/toolbox/d;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/i;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    return-void
.end method

.method a()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    new-instance v2, Lcom/sigmob/volley/toolbox/j$1;

    invoke-direct {v2, p0}, Lcom/sigmob/volley/toolbox/j$1;-><init>(Lcom/sigmob/volley/toolbox/j;)V

    iget-object v3, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v4, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    invoke-virtual {v3, v4, v2}, Lcom/sigmob/volley/toolbox/i;->b(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/g;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/volley/toolbox/j;->i:Lcom/sigmob/volley/toolbox/g;

    iput v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v2, v2, Lcom/sigmob/volley/toolbox/i;->a:Lcom/sigmob/volley/u;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/i;->a:Lcom/sigmob/volley/u;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/j;->i:Lcom/sigmob/volley/toolbox/g;

    invoke-virtual {v0, v2}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    move v0, v1

    goto :goto_6
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    return v0
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/sigmob/volley/toolbox/h;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    return-object v0
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-ne v1, v0, :cond_13

    const/4 v1, 0x2

    iput v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->i:Lcom/sigmob/volley/toolbox/g;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g;->q()V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/i;->a()V

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public h()Lcom/sigmob/volley/toolbox/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    return-object v0
.end method

.method public i()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    iput v0, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/i;->a()V

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public j()Z
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x1

    iget v2, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-nez v2, :cond_1a

    iput v4, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {v1, p0}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/j;)V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/j;->j:Lcom/sigmob/volley/toolbox/d;

    invoke-interface {v1, v2}, Lcom/sigmob/volley/toolbox/h;->b(Lcom/sigmob/volley/toolbox/d;)V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget v2, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-ne v2, v4, :cond_20

    move v0, v1

    goto :goto_19

    :cond_20
    iget v2, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    move v0, v1

    goto :goto_19

    :cond_27
    iget v1, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    if-ne v1, v0, :cond_30

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->i:Lcom/sigmob/volley/toolbox/g;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g;->q()V

    :cond_30
    iput v4, p0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    invoke-virtual {v1, p0}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/j;)V

    goto :goto_19
.end method
