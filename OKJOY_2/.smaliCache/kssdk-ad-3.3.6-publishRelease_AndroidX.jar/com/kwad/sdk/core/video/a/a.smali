.class public abstract Lcom/kwad/sdk/core/video/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/video/a/c;


# instance fields
.field private a:Lcom/kwad/sdk/core/video/a/c$e;

.field private b:Lcom/kwad/sdk/core/video/a/c$b;

.field private c:Lcom/kwad/sdk/core/video/a/c$a;

.field private d:Lcom/kwad/sdk/core/video/a/c$f;

.field private e:Lcom/kwad/sdk/core/video/a/c$h;

.field private f:Lcom/kwad/sdk/core/video/a/c$c;

.field private g:Lcom/kwad/sdk/core/video/a/c$d;

.field private h:Lcom/kwad/sdk/core/video/a/c$g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->a:Lcom/kwad/sdk/core/video/a/c$e;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->c:Lcom/kwad/sdk/core/video/a/c$a;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->b:Lcom/kwad/sdk/core/video/a/c$b;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->d:Lcom/kwad/sdk/core/video/a/c$f;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->e:Lcom/kwad/sdk/core/video/a/c$h;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->f:Lcom/kwad/sdk/core/video/a/c$c;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->g:Lcom/kwad/sdk/core/video/a/c$d;

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->h:Lcom/kwad/sdk/core/video/a/c$g;

    return-void
.end method

.method protected final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->c:Lcom/kwad/sdk/core/video/a/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/core/video/a/c$a;->a(Lcom/kwad/sdk/core/video/a/c;I)V

    :cond_7
    return-void
.end method

.method protected final a(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->e:Lcom/kwad/sdk/core/video/a/c$h;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$h;->a(Lcom/kwad/sdk/core/video/a/c;II)V

    :cond_7
    return-void
.end method

.method protected final a(Landroid/media/TimedText;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->h:Lcom/kwad/sdk/core/video/a/c$g;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Lcom/kwad/sdk/core/video/a/c$g;->a(Lcom/kwad/sdk/core/video/a/c;Landroid/media/TimedText;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->c:Lcom/kwad/sdk/core/video/a/c$a;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->b:Lcom/kwad/sdk/core/video/a/c$b;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->f:Lcom/kwad/sdk/core/video/a/c$c;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->g:Lcom/kwad/sdk/core/video/a/c$d;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->a:Lcom/kwad/sdk/core/video/a/c$e;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->d:Lcom/kwad/sdk/core/video/a/c$f;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/video/a/c$h;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/video/a/a;->e:Lcom/kwad/sdk/core/video/a/c$h;

    return-void
.end method

.method protected final b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->a:Lcom/kwad/sdk/core/video/a/c$e;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/video/a/c$e;->a(Lcom/kwad/sdk/core/video/a/c;)V

    :cond_7
    return-void
.end method

.method protected final b(II)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->f:Lcom/kwad/sdk/core/video/a/c$c;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$c;->a(Lcom/kwad/sdk/core/video/a/c;II)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected final c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->b:Lcom/kwad/sdk/core/video/a/c$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/video/a/c$b;->a(Lcom/kwad/sdk/core/video/a/c;)V

    :cond_7
    return-void
.end method

.method protected final c(II)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->g:Lcom/kwad/sdk/core/video/a/c$d;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/sdk/core/video/a/c$d;->a(Lcom/kwad/sdk/core/video/a/c;II)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected final d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/video/a/a;->d:Lcom/kwad/sdk/core/video/a/c$f;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/video/a/c$f;->a(Lcom/kwad/sdk/core/video/a/c;)V

    :cond_7
    return-void
.end method
