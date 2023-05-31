.class public abstract Lcom/kwad/sdk/b/c/a;
.super Lcom/kwad/sdk/b/a;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kwad/sdk/b/a",
        "<TT;>;",
        "Lcom/kwad/sdk/b/e/a;"
    }
.end annotation


# instance fields
.field protected d:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected e:Z

.field protected f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/b/a;->f()V

    return-void
.end method

.method protected final i()V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_INDEX_IN_VIEW_PAGER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_11
    iget-object v1, p0, Lcom/kwad/sdk/b/c/a;->d:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/kwad/sdk/b/f/b;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->m()V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->l()V

    :cond_21
    return-void
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->g:Z

    return v0
.end method

.method protected k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final l()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->k()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->f:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->f:Z

    invoke-interface {p0}, Lcom/kwad/sdk/b/e/a;->a()V

    goto :goto_6
.end method

.method public final m()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->k()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->e:Z

    invoke-interface {p0}, Lcom/kwad/sdk/b/e/a;->c()V

    goto :goto_6
.end method

.method public final n()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->k()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->e:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->e:Z

    invoke-interface {p0}, Lcom/kwad/sdk/b/e/a;->b()V

    goto :goto_6
.end method

.method public final o()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->k()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->f:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->f:Z

    invoke-interface {p0}, Lcom/kwad/sdk/b/e/a;->d()V

    goto :goto_6
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/a;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->g:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/a;->d:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/b/a;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/a;->g:Z

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->n()V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->o()V

    return-void
.end method
