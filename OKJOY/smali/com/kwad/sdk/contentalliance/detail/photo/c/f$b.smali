.class Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l()Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)V

    return-void
.end method

.method public h()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l()Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$i;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$i;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)V

    return-void
.end method

.method public onVideoPlayStart()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l()Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Z)Z

    return-void
.end method
