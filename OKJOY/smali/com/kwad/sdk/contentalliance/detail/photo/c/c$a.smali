.class Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;
.super Lcom/kwad/sdk/contentalliance/detail/video/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/photo/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)I

    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->i(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/c/f/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    :cond_28
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    return-void
.end method

.method public h()V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->g(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->i(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0, v1}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V

    :cond_28
    return-void
.end method

.method public onVideoPlayStart()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->e(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    :cond_29
    return-void
.end method
