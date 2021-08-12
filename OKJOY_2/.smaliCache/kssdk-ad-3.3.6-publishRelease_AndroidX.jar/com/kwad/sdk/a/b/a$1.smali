.class Lcom/kwad/sdk/a/b/a$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/a$1;->a:Lcom/kwad/sdk/a/b/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/a$1;->a:Lcom/kwad/sdk/a/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/a;->a(Lcom/kwad/sdk/a/b/a;)V

    return-void
.end method

.method public d()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/a$1;->a:Lcom/kwad/sdk/a/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/a;->a(Lcom/kwad/sdk/a/b/a;)V

    return-void
.end method
