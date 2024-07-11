.class Lcom/kwad/sdk/draw/b/b$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->a(Lcom/kwad/sdk/draw/b/b;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->b(Lcom/kwad/sdk/draw/b/b;)Lcom/kwad/sdk/draw/a/b;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/draw/a/b;->f:Lcom/kwad/sdk/draw/b/b/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/draw/b/b/a;->a()V

    goto :goto_3e

    :cond_19
    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->c(Lcom/kwad/sdk/draw/b/b;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_2c

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->d(Lcom/kwad/sdk/draw/b/b;)V

    goto :goto_3e

    :cond_2c
    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->e(Lcom/kwad/sdk/draw/b/b;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_3e

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/b$1;->a:Lcom/kwad/sdk/draw/b/b;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/b;->f(Lcom/kwad/sdk/draw/b/b;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method
