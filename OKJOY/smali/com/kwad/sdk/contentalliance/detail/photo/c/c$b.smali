.class Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;
.super Lcom/kwad/sdk/b/e/b;
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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-direct {p0}, Lcom/kwad/sdk/b/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J

    move-result-wide v0

    sput-wide v0, Lcom/kwad/sdk/b/c/c;->h:J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/e/b;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;->a:Lcom/kwad/sdk/contentalliance/detail/photo/c/c;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    return-void
.end method
