.class public Lcom/kwad/sdk/draw/b/c;
.super Lcom/kwad/sdk/draw/a/a;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/draw/a/a;-><init>()V

    new-instance v0, Lcom/kwad/sdk/draw/b/c$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/b/c$1;-><init>(Lcom/kwad/sdk/draw/b/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/c;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/b/c;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/c;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/draw/b/c;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->e:Lcom/kwad/sdk/draw/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/c;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_fail_tip:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/draw/b/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/c;->b:Landroid/widget/TextView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/c;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->e:Lcom/kwad/sdk/draw/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/c;->c:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
