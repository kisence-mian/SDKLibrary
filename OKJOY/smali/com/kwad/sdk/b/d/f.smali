.class public Lcom/kwad/sdk/b/d/f;
.super Landroid/support/v4/app/Fragment;
.source ""


# instance fields
.field public a:Lcom/kwad/sdk/protocol/model/AdScene;

.field protected b:Lcom/kwad/sdk/mvp/Presenter;

.field protected c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/protocol/model/AdScene;)Landroid/support/v4/app/Fragment;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/b/d/f;

    invoke-direct {v0}, Lcom/kwad/sdk/b/d/f;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_AdScene"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/kwad/sdk/b/d/e;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/b/d/e;

    invoke-direct {v0}, Lcom/kwad/sdk/b/d/e;-><init>()V

    iput-object p0, v0, Lcom/kwad/sdk/b/d/e;->a:Landroid/support/v4/app/Fragment;

    new-instance v1, Lcom/kwad/sdk/b/d/a;

    iget-object v2, p0, Lcom/kwad/sdk/b/d/f;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    invoke-direct {v1, v2}, Lcom/kwad/sdk/b/d/a;-><init>(Lcom/kwad/sdk/protocol/model/AdScene;)V

    iput-object v1, v0, Lcom/kwad/sdk/b/d/e;->b:Lcom/kwad/sdk/b/d/a;

    return-object v0
.end method

.method protected b()Lcom/kwad/sdk/mvp/Presenter;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/b/d/g/a;

    invoke-direct {v1}, Lcom/kwad/sdk/b/d/g/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/b/d/g/b;

    invoke-direct {v1}, Lcom/kwad/sdk/b/d/g/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/m;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Lcom/kwad/sdk/b/d/g/c;

    invoke-direct {v1}, Lcom/kwad/sdk/b/d/g/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_27
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "HomeFragment"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v0, "HomeFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_content_alliance_home_fragment"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    :cond_1c
    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    new-instance v1, Lcom/kwad/sdk/b/d/f$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/b/d/f$a;-><init>(Lcom/kwad/sdk/b/d/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v0, "HomeFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const-string v0, "HomeFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/f;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->b:Lcom/kwad/sdk/mvp/Presenter;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    :cond_14
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "HomeFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "HomeFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "HomeFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4a

    const-string v1, "key_AdScene"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/protocol/model/AdScene;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/kwad/sdk/protocol/model/AdScene;

    iput-object v0, p0, Lcom/kwad/sdk/b/d/f;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/kwad/sdk/b/d/f;->b()Lcom/kwad/sdk/mvp/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/d/f;->b:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->b:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/d/f;->b:Lcom/kwad/sdk/mvp/Presenter;

    invoke-virtual {p0}, Lcom/kwad/sdk/b/d/f;->a()Lcom/kwad/sdk/b/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    return-void

    :cond_35
    const-string v0, "HomeFragment"

    const-string v1, "mAdScene is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    :goto_42
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1e

    :cond_4a
    const-string v0, "HomeFragment"

    const-string v1, "bundle is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_42
.end method
