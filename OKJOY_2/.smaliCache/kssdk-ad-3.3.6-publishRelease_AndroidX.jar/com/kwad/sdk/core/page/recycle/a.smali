.class public abstract Lcom/kwad/sdk/core/page/recycle/a;
.super Lcom/kwad/sdk/api/core/fragment/KsFragment;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/kwad/sdk/core/page/recycle/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kwad/sdk/core/page/recycle/a;->b:Lcom/kwad/sdk/core/page/recycle/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/a;->b()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/kwad/sdk/core/page/recycle/d;
.end method

.method public abstract b()I
.end method

.method protected c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/a;->e()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/page/recycle/a;->a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/kwad/sdk/core/page/recycle/d;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->b:Lcom/kwad/sdk/core/page/recycle/d;

    return-void
.end method

.method public d()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected e()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 3

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected f()I
    .registers 2

    sget v0, Lcom/kwad/sdk/R$id;->ksad_recycler_view:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/core/page/recycle/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/a;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_b
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/kwad/sdk/core/page/recycle/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnChildAttachStateChangeListeners()V

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/core/page/recycle/a;->c()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/page/recycle/a;->a()V

    return-void
.end method
