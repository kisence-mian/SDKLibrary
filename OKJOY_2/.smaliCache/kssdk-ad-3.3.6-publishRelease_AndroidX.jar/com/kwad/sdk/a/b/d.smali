.class public Lcom/kwad/sdk/a/b/d;
.super Lcom/kwad/sdk/a/a/a;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/a/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/a/b/d$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/a/b/d$1;-><init>(Lcom/kwad/sdk/a/b/d;)V

    iput-object v0, p0, Lcom/kwad/sdk/a/b/d;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/b/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/a/b/d;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/d;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_network_unavailable:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/a/b/d;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/a/b/d;->b:Landroid/view/View;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/a/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/a/b/d;->a:Lcom/kwad/sdk/a/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/a/a/b;->f:Lcom/kwad/sdk/a/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/a/b/d;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/a/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
