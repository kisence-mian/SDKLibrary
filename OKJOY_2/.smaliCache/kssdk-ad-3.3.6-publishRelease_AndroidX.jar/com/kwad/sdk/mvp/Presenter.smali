.class public Lcom/kwad/sdk/mvp/Presenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/mvp/Presenter$PresenterState;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/mvp/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Ljava/lang/Object;

.field private d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->a:Ljava/util/List;

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->INIT:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/mvp/Presenter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/mvp/Presenter;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/mvp/Presenter;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/mvp/Presenter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method protected final a(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    iget-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/mvp/Presenter;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/kwad/sdk/mvp/Presenter;->h()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->INIT:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    :cond_8
    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->f()V

    :cond_11
    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    iget-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method public final f()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->UNBIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->f()V

    :cond_9
    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method public final h()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->index()I

    move-result v0

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v1}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->index()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public i()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    return-object v0
.end method

.method public j()Landroid/app/Activity;
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_35

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_17
    instance-of v2, v0, Lcom/kwad/sdk/api/core/ResContext;

    if-eqz v2, :cond_29

    move-object v2, v0

    check-cast v2, Lcom/kwad/sdk/api/core/ResContext;

    invoke-interface {v2}, Lcom/kwad/sdk/api/core/ResContext;->getDelegatedContext()Landroid/content/Context;

    move-result-object v2

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_29

    check-cast v2, Landroid/app/Activity;

    return-object v2

    :cond_29
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected final l()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0
.end method
