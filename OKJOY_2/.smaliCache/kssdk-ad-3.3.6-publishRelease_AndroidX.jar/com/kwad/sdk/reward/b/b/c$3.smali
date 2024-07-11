.class Lcom/kwad/sdk/reward/b/b/c$3;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/c$3;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$3;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->e(Lcom/kwad/sdk/reward/b/b/c;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$3;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/c;->f(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/reward/c/a;->i()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/c$3;->a:Lcom/kwad/sdk/reward/b/b/c;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/c;->g(Lcom/kwad/sdk/reward/b/b/c;)Lcom/kwad/sdk/reward/a;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/reward/c/a;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/reward/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/c;II)V

    :cond_26
    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/c$3;->a:Lcom/kwad/sdk/reward/b/b/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/reward/b/b/c;->a(Lcom/kwad/sdk/reward/b/b/c;Z)Z

    return-void
.end method
