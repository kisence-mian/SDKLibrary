.class Lcom/kwad/sdk/reward/b/d$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/reward/b/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/d$1;->a:Lcom/kwad/sdk/reward/b/d;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d$1;->a:Lcom/kwad/sdk/reward/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/d;->a(Lcom/kwad/sdk/reward/b/d;)Lcom/kwad/sdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/reward/a/b;->a(II)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/d$1;->a:Lcom/kwad/sdk/reward/b/d;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/d;->b(Lcom/kwad/sdk/reward/b/d;)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d$1;->a:Lcom/kwad/sdk/reward/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/d;->a(Lcom/kwad/sdk/reward/b/d;)Lcom/kwad/sdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->c()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/d$1;->a:Lcom/kwad/sdk/reward/b/d;

    invoke-static {v0}, Lcom/kwad/sdk/reward/b/d;->a(Lcom/kwad/sdk/reward/b/d;)Lcom/kwad/sdk/reward/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->d()V

    return-void
.end method
