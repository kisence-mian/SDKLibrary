.class public abstract Lcom/kwad/sdk/c/h/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/d/c;


# instance fields
.field private a:Lcom/kwad/sdk/c/h/d/c$e;

.field private b:Lcom/kwad/sdk/c/h/d/c$b;

.field private c:Lcom/kwad/sdk/c/h/d/c$a;

.field private d:Lcom/kwad/sdk/c/h/d/c$f;

.field private e:Lcom/kwad/sdk/c/h/d/c$h;

.field private f:Lcom/kwad/sdk/c/h/d/c$c;

.field private g:Lcom/kwad/sdk/c/h/d/c$d;

.field private h:Lcom/kwad/sdk/c/h/d/c$g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/media/TimedText;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->h:Lcom/kwad/sdk/c/h/d/c$g;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/c/h/d/c$g;->a(Lcom/kwad/sdk/c/h/d/c;Landroid/media/TimedText;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->c:Lcom/kwad/sdk/c/h/d/c$a;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->b:Lcom/kwad/sdk/c/h/d/c$b;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->f:Lcom/kwad/sdk/c/h/d/c$c;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->g:Lcom/kwad/sdk/c/h/d/c$d;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->a:Lcom/kwad/sdk/c/h/d/c$e;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->d:Lcom/kwad/sdk/c/h/d/c$f;

    return-void
.end method

.method public a(Lcom/kwad/sdk/c/h/d/c$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/a;->e:Lcom/kwad/sdk/c/h/d/c$h;

    return-void
.end method

.method protected final a(II)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->f:Lcom/kwad/sdk/c/h/d/c$c;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/c/h/d/c$c;->a(Lcom/kwad/sdk/c/h/d/c;II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->c:Lcom/kwad/sdk/c/h/d/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/c/h/d/c$a;->a(Lcom/kwad/sdk/c/h/d/c;I)V

    :cond_7
    return-void
.end method

.method protected final b(II)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->g:Lcom/kwad/sdk/c/h/d/c$d;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/c/h/d/c$d;->a(Lcom/kwad/sdk/c/h/d/c;II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected final c(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->e:Lcom/kwad/sdk/c/h/d/c$h;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/c/h/d/c$h;->a(Lcom/kwad/sdk/c/h/d/c;II)V

    :cond_7
    return-void
.end method

.method protected final f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->b:Lcom/kwad/sdk/c/h/d/c$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/c/h/d/c$b;->a(Lcom/kwad/sdk/c/h/d/c;)V

    :cond_7
    return-void
.end method

.method protected final g()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->a:Lcom/kwad/sdk/c/h/d/c$e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/c/h/d/c$e;->a(Lcom/kwad/sdk/c/h/d/c;)V

    :cond_7
    return-void
.end method

.method protected final h()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->d:Lcom/kwad/sdk/c/h/d/c$f;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/c/h/d/c$f;->a(Lcom/kwad/sdk/c/h/d/c;)V

    :cond_7
    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->a:Lcom/kwad/sdk/c/h/d/c$e;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->c:Lcom/kwad/sdk/c/h/d/c$a;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->b:Lcom/kwad/sdk/c/h/d/c$b;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->d:Lcom/kwad/sdk/c/h/d/c$f;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->e:Lcom/kwad/sdk/c/h/d/c$h;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->f:Lcom/kwad/sdk/c/h/d/c$c;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->g:Lcom/kwad/sdk/c/h/d/c$d;

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/a;->h:Lcom/kwad/sdk/c/h/d/c$g;

    return-void
.end method
