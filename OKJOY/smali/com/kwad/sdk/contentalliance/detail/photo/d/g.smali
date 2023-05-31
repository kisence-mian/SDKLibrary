.class public Lcom/kwad/sdk/contentalliance/detail/photo/d/g;
.super Lcom/kwad/sdk/contentalliance/detail/photo/d/a;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/widget/LinearLayout;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/g;->a()Lcom/kwad/sdk/contentalliance/detail/photo/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/kwad/sdk/contentalliance/detail/photo/d/d;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/d/d;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/d/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected g()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected h()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->h()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/c/f/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v2, v1, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, v1, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v4, v1

    invoke-direct {v0, v2, v4, v5}, Lcom/kwad/sdk/contentalliance/detail/photo/b/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/e;->a(Landroid/content/Context;Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V

    :cond_1f
    return-void
.end method
