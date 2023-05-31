.class public Lcom/kwad/sdk/b/c/f/a;
.super Lcom/kwad/sdk/b/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/b/c/a",
        "<",
        "Lcom/kwad/sdk/b/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private h:I

.field private i:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachedOnScrollEnd position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/a;->a()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public b()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomesDetachedOnPageSelected position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/a;->b()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public c()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomesAttachedOnPageSelected position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/a;->c()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method public d()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detachedOnScrollEnd position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/a;->d()V

    goto :goto_24

    :cond_34
    return-void
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string v0, "ksad_content_alliance_detail_ad"

    return-object v0
.end method

.method protected g()Lcom/kwad/sdk/b/c/c;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/b/c/c;

    invoke-direct {v0}, Lcom/kwad/sdk/b/c/c;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/b/c/a;->d:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iput-object v1, v0, Lcom/kwad/sdk/b/c/c;->f:Lcom/kwad/sdk/contentalliance/home/viewpager/SlidePlayViewPager;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/a;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v2, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    iput v2, v0, Lcom/kwad/sdk/b/c/c;->d:I

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v3, p0, Lcom/kwad/sdk/b/c/f/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-direct {v2, p0, v3, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(Landroid/support/v4/app/Fragment;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/video/b;->f()Lcom/kwad/sdk/b/e/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object v0
.end method

.method protected bridge synthetic g()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/f/a;->g()Lcom/kwad/sdk/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/kwad/sdk/mvp/Presenter;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/b/c/d;

    invoke-direct {v1}, Lcom/kwad/sdk/b/c/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/b/c/e;

    invoke-direct {v1}, Lcom/kwad/sdk/b/c/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/b/c/f/b/a;

    invoke-direct {v1}, Lcom/kwad/sdk/b/c/f/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance v1, Lcom/kwad/sdk/b/c/f/b/b;

    invoke-direct {v1}, Lcom/kwad/sdk/b/c/f/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kwad/sdk/b/c/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/a;->i()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/c;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/c;->g()V

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
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

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/b/c/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "DetailAdFragment"

    const-string v1, "bundle is null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    :goto_12
    return-object v0

    :cond_13
    const-string v1, "KEY_INDEX_IN_VIEW_PAGER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data is not instanceof AdTemplate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    goto :goto_12

    :cond_44
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/a;->i:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    const-string v1, "ksad_video_player"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/p;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->c:Landroid/view/View;

    goto :goto_12
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/c;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/c;->c()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/b/c/a;->onDestroyView()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/c;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/c;->f()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/c;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/c;->d()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/b/c/f/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailAdFragment"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/e/c;

    invoke-interface {v0}, Lcom/kwad/sdk/b/e/c;->e()V

    goto :goto_27

    :cond_37
    return-void
.end method
