.class public abstract Lcom/kwad/sdk/contentalliance/detail/photo/b/a;
.super Lcom/kwad/sdk/mvp/Presenter;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/detail/photo/d/c;


# instance fields
.field protected e:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

.field protected f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->e:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method private m()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    invoke-interface {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/c;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->e:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected h()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->l()V

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected l()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/a;->m()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
