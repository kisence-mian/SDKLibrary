.class public abstract Lcom/kwad/sdk/b/a;
.super Landroid/support/v4/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# instance fields
.field protected a:Lcom/kwad/sdk/mvp/Presenter;

.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract e()Ljava/lang/String;
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->a:Lcom/kwad/sdk/mvp/Presenter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    :cond_7
    return-void
.end method

.method protected abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract h()Lcom/kwad/sdk/mvp/Presenter;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/a;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->a:Lcom/kwad/sdk/mvp/Presenter;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/kwad/sdk/b/a;->h()Lcom/kwad/sdk/mvp/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/a;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/b/a;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
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

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    instance-of v0, p0, Lcom/kwad/sdk/b/c/a;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/kwad/sdk/b/a;->f()V

    :cond_a
    return-void
.end method
