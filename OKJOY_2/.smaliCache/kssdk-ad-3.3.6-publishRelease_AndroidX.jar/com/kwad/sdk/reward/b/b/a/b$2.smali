.class Lcom/kwad/sdk/reward/b/b/a/b$2;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/b/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/a/b$2;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/b/a/b$2;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/b/a/b;->a(Lcom/kwad/sdk/reward/b/b/a/b;)Lcom/kwad/sdk/reward/a;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/c/a;->i()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/a/b$2;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-static {v1}, Lcom/kwad/sdk/reward/b/b/a/b;->b(Lcom/kwad/sdk/reward/b/b/a/b;)Lcom/kwad/sdk/reward/a;

    move-result-object v1

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/reward/c/a;->j()I

    move-result v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/b/a/b$2;->a:Lcom/kwad/sdk/reward/b/b/a/b;

    invoke-static {v2}, Lcom/kwad/sdk/reward/b/b/a/b;->c(Lcom/kwad/sdk/reward/b/b/a/b;)Lcom/kwad/sdk/reward/b/b/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kwad/sdk/reward/b/b/a/a;->a(II)V

    return-void
.end method
