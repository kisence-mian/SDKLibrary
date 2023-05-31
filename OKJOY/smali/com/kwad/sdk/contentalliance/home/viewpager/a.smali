.class public Lcom/kwad/sdk/contentalliance/home/viewpager/a;
.super Lcom/kwad/sdk/b/f/a;
.source ""


# instance fields
.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p1    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/f/a;-><init>(Landroid/support/v4/app/FragmentManager;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    return-void
.end method

.method private b(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/kwad/sdk/b/c/a;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/kwad/sdk/b/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz p2, :cond_1a

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->l()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->m()V

    goto :goto_19
.end method

.method private b(Z)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    instance-of v2, v0, Lcom/kwad/sdk/b/c/a;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/kwad/sdk/b/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->n()V

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->o()V

    if-eqz p1, :cond_23

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->f()V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method private c(IZ)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eq v2, p1, :cond_2b

    instance-of v2, v0, Lcom/kwad/sdk/b/c/a;

    if-eqz v2, :cond_2b

    check-cast v0, Lcom/kwad/sdk/b/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->j()Z

    move-result v2

    if-eqz v2, :cond_2b

    if-eqz p2, :cond_2f

    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->o()V

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2f
    invoke-virtual {v0}, Lcom/kwad/sdk/b/c/a;->n()V

    goto :goto_2b

    :cond_33
    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/16 v0, 0x64

    goto :goto_11

    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method protected a(Landroid/support/v4/app/Fragment;)I
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/b/c/f/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, Lcom/kwad/sdk/contentalliance/detail/photo/a;

    if-eqz v0, :cond_d

    const/16 v0, 0x64

    goto :goto_5

    :cond_d
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public a()Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected a(II)Landroid/support/v4/app/Fragment;
    .registers 4

    if-eqz p2, :cond_12

    const/16 v0, 0x64

    if-eq p2, v0, :cond_c

    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/a;-><init>()V

    goto :goto_b

    :cond_12
    new-instance v0, Lcom/kwad/sdk/b/c/f/a;

    invoke-direct {v0}, Lcom/kwad/sdk/b/c/f/a;-><init>()V

    goto :goto_b
.end method

.method public a(IZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->c(IZ)V

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->b(IZ)V

    goto :goto_4
.end method

.method protected a(Landroid/support/v4/app/Fragment;II)V
    .registers 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_INDEX_IN_VIEW_PAGER"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v2, "key_template"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_2b
    return-void

    :cond_2c
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_2b
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method

.method public a(Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->g:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected b(Landroid/support/v4/app/Fragment;)Z
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/b/c/a;

    return v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/b/f/a;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/b/f/a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/home/viewpager/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
