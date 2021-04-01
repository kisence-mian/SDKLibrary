.class public abstract Lcom/kwad/sdk/contentalliance/detail/photo/d/a;
.super Lcom/kwad/sdk/b/c/b;
.source ""

# interfaces
.implements Lcom/kwad/sdk/contentalliance/detail/photo/d/c;


# instance fields
.field protected f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method private l()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    invoke-interface {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/c;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected g()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    return-void
.end method

.method protected h()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_photo_detail_bottom_toolbar"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->l()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/d/a;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
