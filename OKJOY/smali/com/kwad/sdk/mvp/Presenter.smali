.class public Lcom/kwad/sdk/mvp/Presenter;
.super Ljava/lang/Object;
.source ""


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
            "Ljava/util/List",
            "<",
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
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/mvp/Presenter;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/mvp/Presenter;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/mvp/Presenter;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/kwad/sdk/mvp/Presenter;->f()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->INIT:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-eq v0, v1, :cond_20

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-eq v0, v1, :cond_20

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->k()V

    :cond_11
    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object p1, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0ccan\'t bind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .registers 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->BIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->k()V

    :cond_9
    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->DESTROY:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->i()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected final d()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_5
.end method

.method public e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->b:Landroid/view/View;

    return-object v0
.end method

.method public final f()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->index()I

    move-result v0

    sget-object v1, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->CREATE:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v1}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->index()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method protected h()V
    .registers 1

    return-void
.end method

.method protected i()V
    .registers 1

    return-void
.end method

.method protected j()V
    .registers 1

    return-void
.end method

.method public final k()V
    .registers 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->UNBIND:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    iput-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/mvp/Presenter;->d:Lcom/kwad/sdk/mvp/Presenter$PresenterState;

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter$PresenterState;->performCallState(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method
