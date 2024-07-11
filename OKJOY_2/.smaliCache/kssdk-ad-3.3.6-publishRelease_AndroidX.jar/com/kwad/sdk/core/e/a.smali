.class public abstract Lcom/kwad/sdk/core/e/a;
.super Lcom/kwad/sdk/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kwad/sdk/reward/a;",
        ">",
        "Lcom/kwad/sdk/b/a;"
    }
.end annotation


# instance fields
.field protected mCallerContext:Lcom/kwad/sdk/reward/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/kwad/sdk/mvp/Presenter;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/a;-><init>()V

    return-void
.end method

.method private notifyOnCreate()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/reward/a/a;

    invoke-interface {v1}, Lcom/kwad/sdk/reward/a/a;->a()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private notifyOnDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/reward/a/a;

    invoke-interface {v1}, Lcom/kwad/sdk/reward/a/a;->d()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private notifyOnPause()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/reward/a/a;

    invoke-interface {v1}, Lcom/kwad/sdk/reward/a/a;->c()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private notifyOnResume()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/reward/a/a;

    invoke-interface {v1}, Lcom/kwad/sdk/reward/a/a;->b()V

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method protected onActivityCreated(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/e/a;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/e/a;->onCreateCallerContext()Lcom/kwad/sdk/reward/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    iget-object p1, p0, Lcom/kwad/sdk/core/e/a;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/kwad/sdk/core/e/a;->onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/e/a;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    :cond_17
    iget-object p1, p0, Lcom/kwad/sdk/core/e/a;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;->notifyOnCreate()V

    return-void
.end method

.method protected abstract onCreateCallerContext()Lcom/kwad/sdk/reward/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
.end method

.method public onDestroy()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;->notifyOnDestroy()V

    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mCallerContext:Lcom/kwad/sdk/reward/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/a;->a()V

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/core/e/a;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    :cond_11
    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;->notifyOnPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/a;->notifyOnResume()V

    return-void
.end method
