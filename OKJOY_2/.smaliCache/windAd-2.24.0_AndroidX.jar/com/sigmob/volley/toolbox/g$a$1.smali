.class Lcom/sigmob/volley/toolbox/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/g$a;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/sigmob/volley/toolbox/g$a;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sigmob/volley/toolbox/g$a;->b:I

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->a:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/f$a;->a(Lcom/sigmob/volley/toolbox/d;)V

    :cond_16
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/g$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/d;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v1, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sigmob/volley/toolbox/f$a;->a(Lcom/sigmob/volley/toolbox/d;JJ)V

    :cond_10
    return-void
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->a:Z

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/f$a;->b(Lcom/sigmob/volley/toolbox/d;)V

    :cond_10
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/g$a;)V

    return-void
.end method

.method public c(Lcom/sigmob/volley/toolbox/d;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->a:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object v0, v0, Lcom/sigmob/volley/toolbox/g$a;->a:Lcom/sigmob/volley/toolbox/f$a;

    invoke-interface {v0, p1}, Lcom/sigmob/volley/toolbox/f$a;->c(Lcom/sigmob/volley/toolbox/d;)V

    :cond_11
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    iget-object p1, p1, Lcom/sigmob/volley/toolbox/g$a;->c:Lcom/sigmob/volley/toolbox/g;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g$a$1;->b:Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/g$a;)V

    return-void
.end method
