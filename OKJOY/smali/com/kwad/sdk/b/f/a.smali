.class public abstract Lcom/kwad/sdk/b/f/a;
.super Landroid/support/v4/view/PagerAdapter;
.source ""


# instance fields
.field private final a:Landroid/support/v4/app/FragmentManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/app/FragmentTransaction;

.field protected d:Landroid/support/v4/app/Fragment;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 4
    .param p1    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/f/a;->b:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    iput-object v1, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/kwad/sdk/b/f/a;->a:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private d(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a(Landroid/support/v4/app/Fragment;)I
.end method

.method protected abstract a(II)Landroid/support/v4/app/Fragment;
.end method

.method protected abstract a(Landroid/support/v4/app/Fragment;II)V
.end method

.method protected b(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(Landroid/support/v4/app/Fragment;)Z
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    :cond_c
    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-boolean v0, p0, Lcom/kwad/sdk/b/f/a;->e:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/b/f/a;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/b/f/a;->a(Landroid/support/v4/app/Fragment;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/b/f/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_17

    :cond_33
    invoke-direct {p0, v1}, Lcom/kwad/sdk/b/f/a;->c(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/b/f/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_43
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_b

    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    :cond_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    :cond_d
    invoke-direct {p0, p2}, Lcom/kwad/sdk/b/f/a;->d(I)J

    move-result-wide v2

    invoke-virtual {p0, p2}, Lcom/kwad/sdk/b/f/a;->a(I)I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/kwad/sdk/b/f/a;->c(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_28

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    :cond_28
    if-eqz v0, :cond_3d

    invoke-virtual {p0, v0, p2, v1}, Lcom/kwad/sdk/b/f/a;->a(Landroid/support/v4/app/Fragment;II)V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_32
    iget-object v1, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_3c

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3c
    return-object v0

    :cond_3d
    invoke-virtual {p0, p2, v1}, Lcom/kwad/sdk/b/f/a;->a(II)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lcom/kwad/sdk/b/f/a;->a(Landroid/support/v4/app/Fragment;II)V

    iget-object v1, p0, Lcom/kwad/sdk/b/f/a;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Lcom/kwad/sdk/b/f/a;->a(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_32
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p3, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_1a

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_12
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    iput-object p3, p0, Lcom/kwad/sdk/b/f/a;->d:Landroid/support/v4/app/Fragment;

    :cond_1a
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
