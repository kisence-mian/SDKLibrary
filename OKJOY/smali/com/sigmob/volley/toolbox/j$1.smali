.class Lcom/sigmob/volley/toolbox/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/j;->a()Z
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/sigmob/volley/toolbox/j;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/j;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sigmob/volley/toolbox/j;->b:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sigmob/volley/toolbox/j$1;->a:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/toolbox/d;)V

    :cond_16
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/j;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/d;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/toolbox/d;JJ)V

    :cond_10
    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/toolbox/j$1;->a:Z

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/h;->b(Lcom/sigmob/volley/toolbox/d;)V

    :cond_10
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/j;)V

    return-void
.end method

.method public c(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/sigmob/volley/toolbox/j$1;->a:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->a:Lcom/sigmob/volley/toolbox/h;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/h;->c(Lcom/sigmob/volley/toolbox/d;)V

    :cond_11
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/j;->h:Lcom/sigmob/volley/toolbox/i;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/j$1;->b:Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/j;)V

    return-void
.end method
